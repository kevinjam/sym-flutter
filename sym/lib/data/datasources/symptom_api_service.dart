import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/symptom.dart';
import '../../domain/entities/api_responses.dart';

part 'symptom_api_service.g.dart';

@RestApi()
abstract class SymptomApiService {
  factory SymptomApiService(Dio dio) = _SymptomApiService;

  @GET('/patient/symptoms')
  Future<HttpResponse<SymptomsResponse>> getPatientSymptoms({
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @POST('/patient/symptoms')
  Future<HttpResponse<SymptomResponse>> createPatientSymptom(
    @Body() CreateSymptomLogRequest request,
  );

  @GET('/patient/symptoms/{id}')
  Future<HttpResponse<SymptomResponse>> getPatientSymptom(
    @Path('id') String id,
  );

  @PUT('/patient/symptoms/{id}')
  Future<HttpResponse<SymptomResponse>> updatePatientSymptom(
    @Path('id') String id,
    @Body() CreateSymptomLogRequest symptomRequest,
  );

  @DELETE('/patient/symptoms/{id}')
  Future<HttpResponse<SuccessResponse>> deletePatientSymptom(
    @Path('id') String id,
  );

  @GET('/patient/symptoms/logs')
  Future<HttpResponse<SymptomLogsResponse>> getSymptomLogs({
    @Query('from') String? fromDate,
    @Query('to') String? toDate,
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @GET('/patient/symptoms/search')
  Future<HttpResponse<SymptomsResponse>> searchSymptoms(
    @Query('q') String query,
    @Query('limit') int? limit,
  );

  @GET('/patient/symptoms/{id}/linked-medications')
  Future<HttpResponse<List<String>>> getLinkedMedications(
    @Path('id') String id,
  );

  @POST('/patient/symptoms/{id}/link-medication')
  Future<HttpResponse<SuccessResponse>> linkMedication(
    @Path('id') String id,
    @Body() Map<String, String> linkRequest,
  );

  @DELETE('/patient/symptoms/{id}/unlink-medication/{medicationId}')
  Future<HttpResponse<SuccessResponse>> unlinkMedication(
    @Path('id') String id,
    @Path('medicationId') String medicationId,
  );

  @POST('/patient/symptoms/log')
  Future<HttpResponse<SymptomResponse>> logSymptom(
    @Body() CreateSymptomLogRequest request,
  );

  @GET('/patient/symptoms/log/{id}')
  Future<HttpResponse<SymptomResponse>> getSymptomLog(
    @Path('id') String id,
  );

  @PUT('/patient/symptoms/log/{id}')
  Future<HttpResponse<SymptomResponse>> updateSymptomLog(
    @Path('id') String id,
    @Body() CreateSymptomLogRequest logRequest,
  );

  @DELETE('/patient/symptoms/log/{id}')
  Future<HttpResponse<SuccessResponse>> deleteSymptomLog(
    @Path('id') String id,
  );

  @GET('/symptoms/catalog')
  Future<HttpResponse<SymptomCatalogResponse>> getSymptomCatalog({
    @Query('category') String? category,
    @Query('search') String? search,
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @GET('/symptoms/categories')
  Future<HttpResponse<SymptomCategoriesResponse>> getSymptomCategories();
}
