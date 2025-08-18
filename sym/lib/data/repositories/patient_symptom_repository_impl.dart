import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/patient_symptom.dart';
import '../../domain/repositories/patient_symptom_repository.dart';
import '../datasources/patient_symptom_api_service.dart';

class PatientSymptomRepositoryImpl implements PatientSymptomRepository {
  final PatientSymptomApiService _apiService;

  PatientSymptomRepositoryImpl(this._apiService);

  @override
  Future<Result<List<PatientSymptom>>> getPatientSymptoms({
    String? severity,
    bool? isResolved,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.getPatientSymptoms(
          severity: severity,
          isResolved: isResolved,
        );

        if (response.response.statusCode == 200) {
          return response.data.symptoms;
        } else {
          throw Exception('Failed to get patient symptoms');
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<PatientSymptom>> reportSymptom({
    String? patientMedicationId,
    required String name,
    String? description,
    required String severity,
    String? category,
    String? duration,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        final request = ReportSymptomRequest(
          patientMedicationId: patientMedicationId,
          name: name,
          description: description,
          severity: severity,
          category: category,
          duration: duration,
        );

        final requestJson = request.toJson();
        // Remove null values to avoid backend validation errors
        requestJson.removeWhere((key, value) => value == null);
        print('🔍 [SYMPTOM] Sending request: $requestJson');
        print('🔍 [SYMPTOM] Request URL: /api/patient/symptoms');

        final response = await _apiService.reportSymptom(requestJson);

        print('🔍 [SYMPTOM] Response status: ${response.response.statusCode}');
        print('🔍 [SYMPTOM] Response data: ${response.data}');

        if (response.response.statusCode == 201) {
          return response.data.symptom;
        } else {
          throw Exception('Failed to report symptom: ${response.response.statusCode}');
        }
      },
      onError: (error) {
        print('🔍 [SYMPTOM] Error occurred: $error');
        return Failure.serverError(error.toString());
      },
    );
  }

  @override
  Future<Result<PatientSymptom>> getPatientSymptom(String id) async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.getPatientSymptom(id);

        if (response.response.statusCode == 200) {
          return response.data.symptom;
        } else {
          throw Exception('Failed to get patient symptom');
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<PatientSymptom>> updatePatientSymptom(
    String id, {
    String? patientMedicationId,
    String? name,
    String? description,
    String? severity,
    String? category,
    String? duration,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        // First get the current symptom to use existing values for required fields
        final currentSymptomResult = await getPatientSymptom(id);
        
        return currentSymptomResult.fold(
          (failure) => throw Exception('Failed to get current symptom: ${failure.toString()}'),
          (currentSymptom) async {
            final request = ReportSymptomRequest(
              patientMedicationId: patientMedicationId ?? currentSymptom.patientMedicationId,
              name: name ?? currentSymptom.name,
              description: description ?? currentSymptom.description,
              severity: severity ?? currentSymptom.severity,
              category: category ?? currentSymptom.category,
              duration: duration ?? currentSymptom.duration,
            );

            final requestJson = request.toJson();
            // Remove null values to avoid backend validation errors
            requestJson.removeWhere((key, value) => value == null);
            final response = await _apiService.updatePatientSymptom(id, requestJson);

            if (response.response.statusCode == 200) {
              return response.data.symptom;
            } else {
              throw Exception('Failed to update patient symptom');
            }
          },
        );
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<void>> deletePatientSymptom(String id) async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.deletePatientSymptom(id);

        if (response.response.statusCode == 200) {
          return;
        } else {
          throw Exception('Failed to delete patient symptom');
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }
}
