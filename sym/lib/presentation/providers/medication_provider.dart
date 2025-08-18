import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/medication.dart';
import '../../domain/repositories/medication_repository.dart';
import '../../data/repositories/medication_repository_impl.dart';

// Medication state
class MedicationState {
  final bool isLoading;
  final List<Medication> medications;
  final String? error;
  final List<String> categories;
  final List<String> dosageForms;

  const MedicationState({
    this.isLoading = false,
    this.medications = const [],
    this.error,
    this.categories = const [],
    this.dosageForms = const [],
  });

  MedicationState copyWith({
    bool? isLoading,
    List<Medication>? medications,
    String? error,
    List<String>? categories,
    List<String>? dosageForms,
  }) {
    return MedicationState(
      isLoading: isLoading ?? this.isLoading,
      medications: medications ?? this.medications,
      error: error,
      categories: categories ?? this.categories,
      dosageForms: dosageForms ?? this.dosageForms,
    );
  }
}

// Medication notifier
class MedicationNotifier extends StateNotifier<MedicationState> {
  final MedicationRepository _medicationRepository;

  MedicationNotifier(this._medicationRepository) : super(const MedicationState()) {
    loadMedications();
    loadCategories();
    loadDosageForms();
  }

  Future<void> loadMedications({
    String? status,
    String? priority,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _medicationRepository.getMedications(
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

  Future<void> createMedication(CreateMedicationRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _medicationRepository.createMedication(request);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (medication) {
        final updatedMedications = [...state.medications, medication];
        state = state.copyWith(
          isLoading: false,
          medications: updatedMedications,
          error: null,
        );
      },
    );
  }

  Future<void> updateMedication(String id, CreateMedicationRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _medicationRepository.updateMedication(id, request);
    
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

  Future<void> deleteMedication(String id) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _medicationRepository.deleteMedication(id);
    
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

  Future<void> markMedicationTaken(String id) async {
    final result = await _medicationRepository.markMedicationTaken(id, DateTime.now());
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (_) {
        // Update local state to reflect taken status
        final updatedMedications = state.medications
            .map((m) => m.id == id ? m.copyWith(lastTaken: DateTime.now()) : m)
            .toList();
        state = state.copyWith(medications: updatedMedications);
      },
    );
  }

  Future<void> loadCategories() async {
    final result = await _medicationRepository.getCategories();
    
    result.fold(
      (failure) => {}, // Silently fail for categories
      (categories) => state = state.copyWith(categories: categories),
    );
  }

  Future<void> loadDosageForms() async {
    final result = await _medicationRepository.getDosageForms();
    
    result.fold(
      (failure) => {}, // Silently fail for dosage forms
      (dosageForms) => state = state.copyWith(dosageForms: dosageForms),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  List<Medication> get activeMedications => 
      state.medications.where((m) => m.status == 'active').toList();

  List<Medication> get todaysMedications {
    final now = DateTime.now();
    return state.medications.where((m) {
      if (m.status != 'active') return false;
      
      // Check if any schedule time is today
      return m.scheduleTimes.any((time) {
        final timeParts = time.split(':');
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
final medicationProvider = StateNotifierProvider<MedicationNotifier, MedicationState>((ref) {
  final medicationRepository = ref.read(medicationRepositoryProvider);
  return MedicationNotifier(medicationRepository);
});

// Individual medication provider
final medicationByIdProvider = Provider.family<Medication?, String>((ref, id) {
  final medicationState = ref.watch(medicationProvider);
  return medicationState.medications.firstWhere(
    (m) => m.id == id,
    orElse: () => throw StateError('Medication not found'),
  );
});
