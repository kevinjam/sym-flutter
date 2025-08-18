import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/patient_medication.dart';
import '../../data/providers/patient_medication_providers.dart';
import '../../data/repositories/patient_medication_repository_impl.dart';

// Patient Medication State
class PatientMedicationState {
  final bool isLoading;
  final List<PatientMedication> medications;
  final List<Medication> medicationCatalog;
  final List<String> categories;
  final String? error;
  final bool isAddingMedication;

  const PatientMedicationState({
    this.isLoading = false,
    this.medications = const [],
    this.medicationCatalog = const [],
    this.categories = const [],
    this.error,
    this.isAddingMedication = false,
  });

  PatientMedicationState copyWith({
    bool? isLoading,
    List<PatientMedication>? medications,
    List<Medication>? medicationCatalog,
    List<String>? categories,
    String? error,
    bool? isAddingMedication,
  }) {
    return PatientMedicationState(
      isLoading: isLoading ?? this.isLoading,
      medications: medications ?? this.medications,
      medicationCatalog: medicationCatalog ?? this.medicationCatalog,
      categories: categories ?? this.categories,
      error: error,
      isAddingMedication: isAddingMedication ?? this.isAddingMedication,
    );
  }
}

// Patient Medication Notifier
class PatientMedicationNotifier extends StateNotifier<PatientMedicationState> {
  final PatientMedicationRepositoryImpl _repository;

  PatientMedicationNotifier(this._repository) : super(const PatientMedicationState()) {
    loadPatientMedications();
    loadMedicationCatalog();
    loadCategories();
  }

  // Load patient's medications
  Future<void> loadPatientMedications({
    String? status,
    String? priority,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _repository.getPatientMedications(
      status: status,
      priority: priority,
    );
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (medications) => state = state.copyWith(
        isLoading: false,
        medications: medications,
        error: null,
      ),
    );
  }

  // Load medication catalog
  Future<void> loadMedicationCatalog({
    String? category,
    String? search,
    bool? approved,
    int? page,
    int? limit,
  }) async {
    final result = await _repository.getMedicationCatalog(
      category: category,
      search: search,
      approved: approved,
      page: page,
      limit: limit,
    );
    
    result.fold(
      (failure) => {}, // Silently fail for catalog
      (medications) => state = state.copyWith(medicationCatalog: medications),
    );
  }

  // Load categories
  Future<void> loadCategories() async {
    final result = await _repository.getMedicationCategories();
    
    result.fold(
      (failure) => {}, // Silently fail for categories
      (categories) => state = state.copyWith(categories: categories),
    );
  }

  // Add new medication
  Future<void> addMedication(AddPatientMedicationRequest request) async {
    state = state.copyWith(isAddingMedication: true, error: null);
    
    final result = await _repository.addPatientMedication(request);
    
    result.fold(
      (failure) => state = state.copyWith(
        isAddingMedication: false,
        error: failure.toString(),
      ),
      (patientMedication) {
        final updatedMedications = [...state.medications, patientMedication];
        state = state.copyWith(
          isAddingMedication: false,
          medications: updatedMedications,
          error: null,
        );
      },
    );
  }

  // Update medication
  Future<void> updateMedication(String id, AddPatientMedicationRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _repository.updatePatientMedication(id, request);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (updatedMedication) {
        final updatedMedications = state.medications
            .map((m) => m.id == id ? updatedMedication : m)
            .toList();
        state = state.copyWith(
          isLoading: false,
          medications: updatedMedications,
          error: null,
        );
      },
    );
  }

  // Delete medication
  Future<void> deleteMedication(String id) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _repository.deletePatientMedication(id);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (_) {
        final updatedMedications = state.medications
            .where((m) => m.id != id)
            .toList();
        state = state.copyWith(
          isLoading: false,
          medications: updatedMedications,
          error: null,
        );
      },
    );
  }

  // Mark medication as taken
  Future<void> takeMedication(String id) async {
    final result = await _repository.takeMedication(id);
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (_) {
        // Refresh medications to get updated adherence data
        loadPatientMedications();
      },
    );
  }

  // Mark medication as missed
  Future<void> missMedication(String id) async {
    final result = await _repository.missMedication(id);
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (_) {
        // Refresh medications to get updated adherence data
        loadPatientMedications();
      },
    );
  }

  // Clear error
  void clearError() {
    state = state.copyWith(error: null);
  }

  // Getter for active medications
  List<PatientMedication> get activeMedications => 
      state.medications.where((m) => m.status == 'active').toList();

  // Getter for today's medications
  List<PatientMedication> get todaysMedications {
    final now = DateTime.now();
    return state.medications.where((m) {
      if (m.status != 'active') return false;
      
      // Check if any schedule time is today
      return m.schedule.any((timeSlot) {
        if (!timeSlot.isActive) return false;
        
        final timeParts = timeSlot.time.split(':');
        final hour = int.parse(timeParts[0]);
        final minute = int.parse(timeParts[1]);
        final scheduleTime = DateTime(now.year, now.month, now.day, hour, minute);
        
        // Show if it's within the next 2 hours or was scheduled in the last hour
        final difference = scheduleTime.difference(now).inMinutes;
        return difference >= -60 && difference <= 120;
      });
    }).toList();
  }
}

// Provider
final patientMedicationProvider = StateNotifierProvider<PatientMedicationNotifier, PatientMedicationState>((ref) {
  final repository = ref.read(patientMedicationRepositoryProvider);
  return PatientMedicationNotifier(repository);
});

// Individual medication provider
final patientMedicationByIdProvider = Provider.family<PatientMedication?, String>((ref, id) {
  final medicationState = ref.watch(patientMedicationProvider);
  return medicationState.medications.firstWhere(
    (m) => m.id == id,
    orElse: () => throw StateError('Medication not found'),
  );
});
