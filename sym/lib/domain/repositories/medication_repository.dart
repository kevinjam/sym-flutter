import '../../core/errors/result.dart';
import '../entities/medication.dart';

abstract class MedicationRepository {
  Future<Result<List<Medication>>> getMedications({
    String? status,
    String? priority,
    int? page,
    int? limit,
  });
  
  Future<Result<Medication>> createMedication(CreateMedicationRequest request);
  Future<Result<Medication>> updateMedication(String id, CreateMedicationRequest request);
  Future<Result<void>> deleteMedication(String id);
  Future<Result<void>> markMedicationTaken(String id, DateTime timestamp);
  
  Future<Result<List<MedicationSchedule>>> getMedicationSchedule(String medicationId);
  Future<Result<void>> updateMedicationSchedule(String medicationId, List<MedicationSchedule> schedules);
  
  Future<Result<List<MedicationLog>>> getMedicationLogs(String medicationId, {
    DateTime? fromDate,
    DateTime? toDate,
  });
  
  Future<Result<List<String>>> getCategories();
  Future<Result<List<String>>> getDosageForms();
}
