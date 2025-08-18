import '../../core/errors/result.dart';
import '../entities/patient_medication.dart';

abstract class PatientMedicationRepository {
  Future<Result<List<PatientMedication>>> getPatientMedications({
    String? status,
    String? priority,
  });

  Future<Result<PatientMedication>> addPatientMedication(
    AddPatientMedicationRequest request,
  );

  Future<Result<PatientMedication>> getPatientMedication(String id);

  Future<Result<PatientMedication>> updatePatientMedication(
    String id,
    AddPatientMedicationRequest request,
  );

  Future<Result<void>> deletePatientMedication(String id);

  Future<Result<void>> takeMedication(String id);

  Future<Result<void>> missMedication(String id);

  Future<Result<List<Medication>>> getMedicationCatalog({
    String? category,
    String? search,
    bool? approved,
    int? page,
    int? limit,
  });

  Future<Result<List<String>>> getMedicationCategories();
}
