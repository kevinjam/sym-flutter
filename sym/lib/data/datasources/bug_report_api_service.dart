import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/bug_report.dart';

part 'bug_report_api_service.g.dart';

@RestApi()
abstract class BugReportApiService {
  factory BugReportApiService(Dio dio) = _BugReportApiService;

  @POST('/api/bug-report/report-bug')
  Future<HttpResponse<BugReportApiResponse>> createBugReport(
    @Body() CreateBugReportRequest request,
  );

  @GET('/api/bug-report/categories')
  Future<HttpResponse<BugReportCategoriesApiResponse>> getBugReportCategories();

  @GET('/api/bug-report/severity-levels')
  Future<HttpResponse<SeverityLevelsApiResponse>> getSeverityLevels();

  @GET('/api/bug-report/reports')
  Future<HttpResponse<BugReportsApiResponse>> getUserBugReports({
    @Query('page') int? page,
    @Query('limit') int? limit,
    @Query('status') String? status,
  });

  @GET('/api/bug-report/reports/{id}')
  Future<HttpResponse<BugReportDetailApiResponse>> getBugReport(
    @Path('id') String id,
  );
}
