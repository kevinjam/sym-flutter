import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/health_report.dart';

part 'health_report_api_service.g.dart';

@RestApi()
abstract class HealthReportApiService {
  factory HealthReportApiService(Dio dio, {String baseUrl}) = _HealthReportApiService;

  // Get health summary for a patient
  @GET('/api/health-reports/summary/{patientId}')
  Future<HttpResponse<HealthSummaryApiResponse>> getHealthSummary(
    @Path('patientId') String patientId,
  );

  // Get all health reports for a patient
  @GET('/api/health-reports/patient/{patientId}')
  Future<HttpResponse<HealthReportsApiResponse>> getPatientHealthReports(
    @Path('patientId') String patientId, {
    @Query('page') int? page,
    @Query('limit') int? limit,
    @Query('reportType') String? reportType,
    @Query('startDate') String? startDate,
    @Query('endDate') String? endDate,
    @Query('sortBy') String? sortBy,
    @Query('sortOrder') String? sortOrder,
  });

  // Get a specific health report
  @GET('/api/health-reports/{reportId}')
  Future<HttpResponse<HealthReportApiResponse>> getHealthReport(
    @Path('reportId') String reportId,
  );

  // Create a new health report
  @POST('/api/health-reports/')
  Future<HttpResponse<HealthReportApiResponse>> createHealthReport(
    @Body() CreateHealthReportRequest request,
  );

  // Update a health report
  @PUT('/api/health-reports/{reportId}')
  Future<HttpResponse<HealthReportApiResponse>> updateHealthReport(
    @Path('reportId') String reportId,
    @Body() UpdateHealthReportRequest request,
  );

  // Delete a health report
  @DELETE('/api/health-reports/{reportId}')
  Future<HttpResponse<SuccessResponse>> deleteHealthReport(
    @Path('reportId') String reportId,
  );

  // Get report types
  @GET('/api/health-reports/types/report-types')
  Future<HttpResponse<ReportTypesApiResponse>> getReportTypes();
}
