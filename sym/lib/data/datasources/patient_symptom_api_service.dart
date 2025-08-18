import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/patient_symptom.dart';
import '../../domain/entities/api_responses.dart';

part 'patient_symptom_api_service.g.dart';

@RestApi()
abstract class PatientSymptomApiService {
  factory PatientSymptomApiService(Dio dio) = _PatientSymptomApiService;

  @GET('/api/patient/symptoms')
  Future<HttpResponse<PatientSymptomsResponse>> getPatientSymptoms({
    @Query('severity') String? severity,
    @Query('isResolved') bool? isResolved,
  });

  @POST('/api/patient/symptoms')
  Future<HttpResponse<PatientSymptomResponse>> reportSymptom(
    @Body() Map<String, dynamic> request,
  );

  @GET('/api/patient/symptoms/{id}')
  Future<HttpResponse<PatientSymptomResponse>> getPatientSymptom(
    @Path('id') String id,
  );

  @PUT('/api/patient/symptoms/{id}')
  Future<HttpResponse<PatientSymptomResponse>> updatePatientSymptom(
    @Path('id') String id,
    @Body() Map<String, dynamic> request,
  );

  @DELETE('/api/patient/symptoms/{id}')
  Future<HttpResponse<SuccessResponse>> deletePatientSymptom(
    @Path('id') String id,
  );
}
