import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/symptom.dart';
import '../../domain/repositories/symptom_repository.dart';
import '../../data/repositories/symptom_repository_impl.dart';

// Symptom state
class SymptomState {
  final bool isLoading;
  final List<Symptom> symptoms;
  final List<SymptomLog> symptomLogs;
  final String? error;
  final List<Symptom> searchResults;

  const SymptomState({
    this.isLoading = false,
    this.symptoms = const [],
    this.symptomLogs = const [],
    this.error,
    this.searchResults = const [],
  });

  SymptomState copyWith({
    bool? isLoading,
    List<Symptom>? symptoms,
    List<SymptomLog>? symptomLogs,
    String? error,
    List<Symptom>? searchResults,
  }) {
    return SymptomState(
      isLoading: isLoading ?? this.isLoading,
      symptoms: symptoms ?? this.symptoms,
      symptomLogs: symptomLogs ?? this.symptomLogs,
      error: error,
      searchResults: searchResults ?? this.searchResults,
    );
  }
}

// Symptom notifier
class SymptomNotifier extends StateNotifier<SymptomState> {
  final SymptomRepository _symptomRepository;

  SymptomNotifier(this._symptomRepository) : super(const SymptomState()) {
    loadSymptoms();
    loadSymptomLogs();
  }

  Future<void> loadSymptoms({
    String? search,
    String? category,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _symptomRepository.getSymptoms(
      search: search,
      category: category,
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

  Future<void> searchSymptoms(String query) async {
    if (query.isEmpty) {
      state = state.copyWith(searchResults: []);
      return;
    }

    final result = await _symptomRepository.searchSymptoms(query, limit: 10);
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (searchResults) => state = state.copyWith(searchResults: searchResults),
    );
  }

  Future<void> createSymptom({
    required String name,
    String? description,
    String? category,
    String? severity,
    List<String>? linkedMedications,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final request = {
      'name': name,
      'description': description,
      'category': category,
      'severity': severity,
      'linkedMedications': linkedMedications ?? [],
    };
    
    final result = await _symptomRepository.createSymptom(request);
    
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

  Future<void> logSymptom({
    required String symptomId,
    required DateTime timestamp,
    required List<String> associatedMedications,
    String? severity,
    String? notes,
    int? intensityLevel,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final request = CreateSymptomLogRequest(
      symptomId: symptomId,
      timestamp: timestamp,
      associatedMedications: associatedMedications,
      severity: severity,
      notes: notes,
      intensityLevel: intensityLevel,
    );
    
    final result = await _symptomRepository.logSymptom(request);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (symptomLog) {
        final updatedLogs = [...state.symptomLogs, symptomLog];
        state = state.copyWith(
          isLoading: false,
          symptomLogs: updatedLogs,
          error: null,
        );
      },
    );
  }

  Future<void> loadSymptomLogs({
    String? symptomId,
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    final result = await _symptomRepository.getSymptomLogs(
      symptomId: symptomId,
      fromDate: fromDate,
      toDate: toDate,
    );
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (logs) => state = state.copyWith(symptomLogs: logs),
    );
  }

  Future<void> linkMedicationToSymptom(String symptomId, String medicationId) async {
    final result = await _symptomRepository.linkMedication(symptomId, medicationId);
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (_) {
        // Update local state
        final updatedSymptoms = state.symptoms.map((symptom) {
          if (symptom.id == symptomId) {
            final updatedLinkedMeds = [...symptom.linkedMedications, medicationId];
            return symptom.copyWith(linkedMedications: updatedLinkedMeds);
          }
          return symptom;
        }).toList();
        
        state = state.copyWith(symptoms: updatedSymptoms);
      },
    );
  }

  Future<void> unlinkMedicationFromSymptom(String symptomId, String medicationId) async {
    final result = await _symptomRepository.unlinkMedication(symptomId, medicationId);
    
    result.fold(
      (failure) => state = state.copyWith(error: failure.toString()),
      (_) {
        // Update local state
        final updatedSymptoms = state.symptoms.map((symptom) {
          if (symptom.id == symptomId) {
            final updatedLinkedMeds = symptom.linkedMedications
                .where((id) => id != medicationId)
                .toList();
            return symptom.copyWith(linkedMedications: updatedLinkedMeds);
          }
          return symptom;
        }).toList();
        
        state = state.copyWith(symptoms: updatedSymptoms);
      },
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearSearchResults() {
    state = state.copyWith(searchResults: []);
  }

  List<SymptomLog> getLogsForSymptom(String symptomId) {
    return state.symptomLogs
        .where((log) => log.symptomId == symptomId)
        .toList()
      ..sort((a, b) => b.timestamp.compareTo(a.timestamp));
  }

  List<SymptomLog> get recentLogs {
    final now = DateTime.now();
    final sevenDaysAgo = now.subtract(const Duration(days: 7));
    
    return state.symptomLogs
        .where((log) => log.timestamp.isAfter(sevenDaysAgo))
        .toList()
      ..sort((a, b) => b.timestamp.compareTo(a.timestamp));
  }
}

// Provider
final symptomProvider = StateNotifierProvider<SymptomNotifier, SymptomState>((ref) {
  final symptomRepository = ref.read(symptomRepositoryProvider);
  return SymptomNotifier(symptomRepository);
});

// Individual symptom provider
final symptomByIdProvider = Provider.family<Symptom?, String>((ref, id) {
  final symptomState = ref.watch(symptomProvider);
  try {
    return symptomState.symptoms.firstWhere((s) => s.id == id);
  } catch (e) {
    return null;
  }
});
