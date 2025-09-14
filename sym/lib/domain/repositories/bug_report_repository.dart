import '../../core/errors/result.dart';
import '../entities/bug_report.dart';

abstract class BugReportRepository {
  Future<Result<BugReportResponse>> createBugReport(
    CreateBugReportRequest request,
  );
  
  Future<Result<List<BugReportCategory>>> getBugReportCategories();
  
  Future<Result<List<SeverityLevel>>> getSeverityLevels();
  
  Future<Result<List<BugReport>>> getUserBugReports({
    int? page,
    int? limit,
    String? status,
  });
  
  Future<Result<BugReport>> getBugReport(String id);
}
