import '../../core/errors/result.dart';
import '../entities/health_report.dart';

abstract class HealthReportRepository {
  Future<Result<HealthSummary>> getHealthSummary(String patientId);
  
  Future<Result<HealthReportsListResponse>> getPatientHealthReports({
    required String patientId,
    int? page,
    int? limit,
    String? reportType,
    String? startDate,
    String? endDate,
    String? sortBy,
    String? sortOrder,
  });
  
  Future<Result<HealthReport>> getHealthReport(String reportId);
  
  Future<Result<HealthReport>> createHealthReport(CreateHealthReportRequest request);
  
  Future<Result<HealthReport>> updateHealthReport(String reportId, UpdateHealthReportRequest request);
  
  Future<Result<SuccessResponse>> deleteHealthReport(String reportId);
  
  Future<Result<List<ReportType>>> getReportTypes();
}
