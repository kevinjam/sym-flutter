import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/patient_symptom.dart';
import '../../data/providers/patient_symptom_providers.dart';
import '../../domain/repositories/patient_symptom_repository.dart';

// Patient Symptom State
class PatientSymptomState {
  final bool isLoading;
  final List<PatientSymptom> symptoms;
  final String? error;

  const PatientSymptomState({
    this.isLoading = false,
    this.symptoms = const [],
    this.error,
  });

  PatientSymptomState copyWith({
    bool? isLoading,
    List<PatientSymptom>? symptoms,
    String? error,
  }) {
    return PatientSymptomState(
      isLoading: isLoading ?? this.isLoading,
      symptoms: symptoms ?? this.symptoms,
      error: error,
    );
  }
}

// Patient Symptom Notifier
class PatientSymptomNotifier extends StateNotifier<PatientSymptomState> {
  final PatientSymptomRepository _repository;

  PatientSymptomNotifier(this._repository) : super(const PatientSymptomState());

  Future<void> loadSymptoms({
    String? severity,
    bool? isResolved,
  }) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _repository.getPatientSymptoms(
      severity: severity,
      isResolved: isResolved,
    );

    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (symptoms) => state = state.copyWith(
        isLoading: false,
        symptoms: symptoms,
        error: null,
      ),
    );
  }

  Future<void> reportSymptom({
    String? patientMedicationId,
    required String name,
    String? description,
    required String severity,
    String? category,
    String? duration,
  }) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _repository.reportSymptom(
      patientMedicationId: patientMedicationId,
      name: name,
      description: description,
      severity: severity,
      category: category,
      duration: duration,
    );

    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (symptom) {
        final updatedSymptoms = [...state.symptoms, symptom];
        state = state.copyWith(
          isLoading: false,
          symptoms: updatedSymptoms,
          error: null,
        );
      },
    );
  }

  Future<void> updateSymptom(
    String id, {
    String? patientMedicationId,
    String? name,
    String? description,
    String? severity,
    String? category,
    String? duration,
  }) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _repository.updatePatientSymptom(
      id,
      patientMedicationId: patientMedicationId,
      name: name,
      description: description,
      severity: severity,
      category: category,
      duration: duration,
    );

    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (updatedSymptom) {
        final updatedSymptoms = state.symptoms.map((symptom) {
          return symptom.id == id ? updatedSymptom : symptom;
        }).toList();
        state = state.copyWith(
          isLoading: false,
          symptoms: updatedSymptoms,
          error: null,
        );
      },
    );
  }

  Future<void> deleteSymptom(String id) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _repository.deletePatientSymptom(id);

    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (_) {
        final updatedSymptoms = state.symptoms.where((symptom) => symptom.id != id).toList();
        state = state.copyWith(
          isLoading: false,
          symptoms: updatedSymptoms,
          error: null,
        );
      },
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  // Getters
  List<PatientSymptom> get activeSymptoms => state.symptoms.where((s) => !s.isResolved).toList();
  List<PatientSymptom> get resolvedSymptoms => state.symptoms.where((s) => s.isResolved).toList();
}

// Provider
final patientSymptomProvider = StateNotifierProvider<PatientSymptomNotifier, PatientSymptomState>((ref) {
  final repository = ref.read(patientSymptomRepositoryProvider);
  return PatientSymptomNotifier(repository);
});
