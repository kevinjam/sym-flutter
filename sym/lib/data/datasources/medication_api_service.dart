import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/medication.dart';
import '../../domain/entities/api_responses.dart';

part 'medication_api_service.g.dart';

@RestApi()
abstract class MedicationApiService {
  factory MedicationApiService(Dio dio) = _MedicationApiService;

  @GET('/patient/medications')
  Future<HttpResponse<MedicationsResponse>> getPatientMedications({
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @POST('/patient/medications')
  Future<HttpResponse<MedicationResponse>> createPatientMedication(
    @Body() CreateMedicationRequest request,
  );

  @GET('/patient/medications/{id}')
  Future<HttpResponse<MedicationResponse>> getPatientMedication(
    @Path('id') String id,
  );

  @PUT('/patient/medications/{id}')
  Future<HttpResponse<MedicationResponse>> updatePatientMedication(
    @Path('id') String id,
    @Body() CreateMedicationRequest medicationRequest,
  );

  @DELETE('/patient/medications/{id}')
  Future<HttpResponse<SuccessResponse>> deletePatientMedication(
    @Path('id') String id,
  );

  @POST('/patient/medications/{id}/schedule')
  Future<HttpResponse<SuccessResponse>> updateMedicationSchedule(
    @Path('id') String id,
    @Body() Map<String, dynamic> scheduleRequest,
  );

  @GET('/patient/medications/{id}/logs')
  Future<HttpResponse<MedicationLogsResponse>> getMedicationLogs(
    @Path('id') String id,
    @Query('from') String? fromDate,
    @Query('to') String? toDate,
  );

  @POST('/patient/medications/{id}/logs')
  Future<HttpResponse<SuccessResponse>> logMedicationTaken(
    @Path('id') String id,
    @Body() Map<String, dynamic> logRequest,
  );

  @GET('/patient/medications/{id}/linked-symptoms')
  Future<HttpResponse<List<String>>> getLinkedSymptoms(
    @Path('id') String id,
  );

  @POST('/patient/medications/{id}/link-symptom')
  Future<HttpResponse<SuccessResponse>> linkSymptom(
    @Path('id') String id,
    @Body() Map<String, String> linkRequest,
  );

  @DELETE('/patient/medications/{id}/unlink-symptom/{symptomId}')
  Future<HttpResponse<SuccessResponse>> unlinkSymptom(
    @Path('id') String id,
    @Path('symptomId') String symptomId,
  );

  @GET('/medication/dosage-forms')
  Future<HttpResponse<DosageFormsResponse>> getDosageForms();
}
