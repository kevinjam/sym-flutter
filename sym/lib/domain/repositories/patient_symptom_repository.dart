import '../../core/errors/result.dart';
import '../entities/patient_symptom.dart';

abstract class PatientSymptomRepository {
  Future<Result<List<PatientSymptom>>> getPatientSymptoms({
    String? severity,
    bool? isResolved,
  });

  Future<Result<PatientSymptom>> reportSymptom({
    String? patientMedicationId,
    required String name,
    String? description,
    required String severity,
    String? category,
    String? duration,
  });

  Future<Result<PatientSymptom>> getPatientSymptom(String id);

  Future<Result<PatientSymptom>> updatePatientSymptom(
    String id, {
    String? patientMedicationId,
    String? name,
    String? description,
    String? severity,
    String? category,
    String? duration,
  });

  Future<Result<void>> deletePatientSymptom(String id);
}
