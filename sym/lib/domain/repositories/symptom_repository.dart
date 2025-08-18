import '../../core/errors/result.dart';
import '../entities/symptom.dart';

abstract class SymptomRepository {
  Future<Result<List<Symptom>>> getSymptoms({
    String? search,
    String? category,
    int? page,
    int? limit,
  });
  
  Future<Result<Symptom>> createSymptom(Map<String, dynamic> request);
  Future<Result<Symptom>> getSymptom(String id);
  Future<Result<Symptom>> updateSymptom(String id, Map<String, dynamic> request);
  Future<Result<void>> deleteSymptom(String id);
  
  Future<Result<SymptomLog>> logSymptom(CreateSymptomLogRequest request);
  
  Future<Result<List<SymptomLog>>> getSymptomLogs({
    String? symptomId,
    DateTime? fromDate,
    DateTime? toDate,
    int? page,
    int? limit,
  });
  
  Future<Result<List<Symptom>>> searchSymptoms(String query, {int? limit});
  
  Future<Result<List<String>>> getLinkedMedications(String symptomId);
  Future<Result<void>> linkMedication(String symptomId, String medicationId);
  Future<Result<void>> unlinkMedication(String symptomId, String medicationId);
}
