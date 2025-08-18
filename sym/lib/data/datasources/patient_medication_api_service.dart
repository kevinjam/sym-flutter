import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/patient_medication.dart';

part 'patient_medication_api_service.g.dart';

@RestApi()
abstract class PatientMedicationApiService {
  factory PatientMedicationApiService(Dio dio) = _PatientMedicationApiService;

  @GET('/api/patient/medications')
  Future<List<PatientMedication>> getPatientMedications({
    @Query('status') String? status,
    @Query('priority') String? priority,
  });

  @GET('/api/medications')
  Future<List<Medication>> getMedicationCatalog({
    @Query('category') String? category,
    @Query('search') String? search,
    @Query('approved') bool? approved,
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @GET('/api/medications/categories')
  Future<List<String>> getCategories();
}
