import 'package:dartz/dartz.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/patient_medication.dart';
import '../../domain/repositories/patient_medication_repository.dart';
import '../datasources/patient_medication_api_service.dart';

class PatientMedicationRepositoryImpl implements PatientMedicationRepository {
  final PatientMedicationApiService _apiService;

  PatientMedicationRepositoryImpl(this._apiService);

  @override
  Future<Result<List<PatientMedication>>> getPatientMedications({
    String? status,
    String? priority,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        final medications = await _apiService.getPatientMedications(
          status: status,
          priority: priority,
        );
        return medications;
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<PatientMedication>> addPatientMedication(
    AddPatientMedicationRequest request,
  ) async {
    // TODO: Implement when API endpoint is available
    return left(Failure.serverError('Not implemented'));
  }

  @override
  Future<Result<PatientMedication>> getPatientMedication(String id) async {
    // TODO: Implement when API endpoint is available
    return left(Failure.serverError('Not implemented'));
  }

  @override
  Future<Result<PatientMedication>> updatePatientMedication(
    String id,
    AddPatientMedicationRequest request,
  ) async {
    // TODO: Implement when API endpoint is available
    return left(Failure.serverError('Not implemented'));
  }

  @override
  Future<Result<void>> deletePatientMedication(String id) async {
    // TODO: Implement when API endpoint is available
    return left(Failure.serverError('Not implemented'));
  }

  @override
  Future<Result<void>> takeMedication(String id) async {
    // TODO: Implement when API endpoint is available
    return left(Failure.serverError('Not implemented'));
  }

  @override
  Future<Result<void>> missMedication(String id) async {
    // TODO: Implement when API endpoint is available
    return left(Failure.serverError('Not implemented'));
  }

  @override
  Future<Result<List<Medication>>> getMedicationCatalog({
    String? category,
    String? search,
    bool? approved,
    int? page,
    int? limit,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        final medications = await _apiService.getMedicationCatalog(
          category: category,
          search: search,
          approved: approved,
          page: page,
          limit: limit,
        );
        return medications;
      },
    );
  }

  @override
  Future<Result<List<String>>> getMedicationCategories() async {
    return ResultUtils.tryCatch(
      () async {
        final categories = await _apiService.getCategories();
        return categories;
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }
}
