import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/doctor.dart';
import '../../domain/repositories/doctor_repository.dart';
import '../../data/providers/doctor_providers.dart';

part 'doctor_provider.freezed.dart';

// Doctor State
@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState({
    @Default(false) bool isLoading,
    @Default([]) List<Doctor> doctors,
    @Default([]) List<String> specialties,
    @Default([]) List<Doctor> popularDoctors,
    Doctor? selectedDoctor,
    DoctorReviewsResponse? doctorReviews,
    String? error,
    @Default(false) bool hasMore,
    @Default(1) int currentPage,
    String? searchQuery,
    String? selectedSpecialty,
  }) = _DoctorState;
}

// Doctor Notifier
class DoctorNotifier extends StateNotifier<DoctorState> {
  final DoctorRepository _doctorRepository;

  DoctorNotifier(this._doctorRepository) : super(const DoctorState()) {
    loadSpecialties();
    loadPopularDoctors();
  }

  Future<void> loadDoctors({
    bool refresh = false,
    String? search,
    String? specialty,
    String? city,
    String? stateName,
    double? minRating,
    double? maxFee,
    bool? available,
    String? sortBy,
    String? sortOrder,
  }) async {
    if (refresh) {
      state = state.copyWith(
        isLoading: true,
        error: null,
        doctors: [],
        currentPage: 1,
        searchQuery: search ?? state.searchQuery,
        selectedSpecialty: specialty ?? state.selectedSpecialty,
      );
    } else {
      state = state.copyWith(isLoading: true, error: null);
    }

    final page = refresh ? 1 : state.currentPage;
    
    final result = await _doctorRepository.getDoctors(
      page: page,
      limit: 10,
      search: search ?? state.searchQuery,
      specialty: specialty ?? state.selectedSpecialty,
      city: city,
      state: stateName,
      minRating: minRating,
      maxFee: maxFee,
      available: available,
      sortBy: sortBy,
      sortOrder: sortOrder,
    );
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (response) => state = state.copyWith(
        isLoading: false,
        doctors: refresh ? response.doctors : [...state.doctors, ...response.doctors],
        hasMore: response.hasNext,
        currentPage: response.page,
        error: null,
      ),
    );
  }

  Future<void> loadMoreDoctors() async {
    if (state.isLoading || !state.hasMore) return;

    final result = await _doctorRepository.getDoctors(
      page: state.currentPage + 1,
      limit: 10,
      search: state.searchQuery,
      specialty: state.selectedSpecialty,
    );
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (response) => state = state.copyWith(
        isLoading: false,
        doctors: [...state.doctors, ...response.doctors],
        hasMore: response.hasNext,
        currentPage: response.page,
        error: null,
      ),
    );
  }

  Future<void> loadSpecialties() async {
    final result = await _doctorRepository.getSpecialties();
    
    result.fold(
      (failure) => state = state.copyWith(
        error: failure.toString(),
      ),
      (specialties) => state = state.copyWith(
        specialties: specialties,
        error: null,
      ),
    );
  }

  Future<void> loadPopularDoctors() async {
    final result = await _doctorRepository.getPopularDoctors(limit: 5);
    
    result.fold(
      (failure) => state = state.copyWith(
        error: failure.toString(),
      ),
      (doctors) => state = state.copyWith(
        popularDoctors: doctors,
        error: null,
      ),
    );
  }

  Future<void> loadDoctorById(String id) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _doctorRepository.getDoctorById(id);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (doctor) => state = state.copyWith(
        isLoading: false,
        selectedDoctor: doctor,
        error: null,
      ),
    );
  }

  Future<void> loadDoctorReviews(String doctorId) async {
    final result = await _doctorRepository.getDoctorReviews(doctorId);
    
    result.fold(
      (failure) => state = state.copyWith(
        error: failure.toString(),
      ),
      (reviews) => state = state.copyWith(
        doctorReviews: reviews,
        error: null,
      ),
    );
  }

  Future<void> addReview(String doctorId, AddReviewRequest request) async {
    final result = await _doctorRepository.addReview(doctorId, request);
    
    result.fold(
      (failure) => state = state.copyWith(
        error: failure.toString(),
      ),
      (response) {
        // Refresh doctor details and reviews after adding review
        loadDoctorById(doctorId);
        loadDoctorReviews(doctorId);
      },
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearSelectedDoctor() {
    state = state.copyWith(selectedDoctor: null, doctorReviews: null);
  }

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setSelectedSpecialty(String specialty) {
    state = state.copyWith(selectedSpecialty: specialty);
  }
}

// Providers
final doctorProvider = StateNotifierProvider<DoctorNotifier, DoctorState>((ref) {
  final repository = ref.watch(doctorRepositoryProvider);
  return DoctorNotifier(repository);
});
