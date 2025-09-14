import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/health_report.dart';
import '../../domain/repositories/health_report_repository.dart';
import '../datasources/health_report_api_service.dart';

class HealthReportRepositoryImpl implements HealthReportRepository {
  final HealthReportApiService _apiService;

  HealthReportRepositoryImpl(this._apiService);

  @override
  Future<Result<HealthSummary>> getHealthSummary(String patientId) async {
    try {
      print('🏥 [HEALTH_REPORT] Fetching health summary for patient: $patientId');
      final response = await _apiService.getHealthSummary(patientId);
      
      if (response.response.statusCode == 200) {
        print('🏥 [HEALTH_REPORT] Health summary fetched successfully');
        return Right(response.data.data);
      } else {
        print('🏥 [HEALTH_REPORT] Failed to fetch health summary: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch health summary'));
      }
    } on DioException catch (e) {
      print('🏥 [HEALTH_REPORT] DioException: ${e.message}');
      return Left(Failure.serverError('Network error: ${e.message}'));
    } catch (e, s) {
      print('🏥 [HEALTH_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<HealthReportsListResponse>> getPatientHealthReports({
    required String patientId,
    int? page,
    int? limit,
    String? reportType,
    String? startDate,
    String? endDate,
    String? sortBy,
    String? sortOrder,
  }) async {
    try {
      print('🏥 [HEALTH_REPORT] Fetching health reports for patient: $patientId');
      final response = await _apiService.getPatientHealthReports(
        patientId,
        page: page,
        limit: limit,
        reportType: reportType,
        startDate: startDate,
        endDate: endDate,
        sortBy: sortBy,
        sortOrder: sortOrder,
      );
      
      if (response.response.statusCode == 200) {
        print('🏥 [HEALTH_REPORT] Health reports fetched successfully');
        return Right(response.data.data);
      } else {
        print('🏥 [HEALTH_REPORT] Failed to fetch health reports: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch health reports'));
      }
    } on DioException catch (e) {
      print('🏥 [HEALTH_REPORT] DioException: ${e.message}');
      return Left(Failure.serverError('Network error: ${e.message}'));
    } catch (e, s) {
      print('🏥 [HEALTH_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<HealthReport>> getHealthReport(String reportId) async {
    try {
      print('🏥 [HEALTH_REPORT] Fetching health report: $reportId');
      final response = await _apiService.getHealthReport(reportId);
      
      if (response.response.statusCode == 200) {
        print('🏥 [HEALTH_REPORT] Health report fetched successfully');
        return Right(response.data.data);
      } else {
        print('🏥 [HEALTH_REPORT] Failed to fetch health report: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch health report'));
      }
    } on DioException catch (e) {
      print('🏥 [HEALTH_REPORT] DioException: ${e.message}');
      return Left(Failure.serverError('Network error: ${e.message}'));
    } catch (e, s) {
      print('🏥 [HEALTH_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<HealthReport>> createHealthReport(CreateHealthReportRequest request) async {
    try {
      print('🏥 [HEALTH_REPORT] Creating health report: ${request.title}');
      final response = await _apiService.createHealthReport(request);
      
      if (response.response.statusCode == 201) {
        print('🏥 [HEALTH_REPORT] Health report created successfully');
        return Right(response.data.data);
      } else {
        print('🏥 [HEALTH_REPORT] Failed to create health report: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to create health report'));
      }
    } on DioException catch (e) {
      print('🏥 [HEALTH_REPORT] DioException: ${e.message}');
      return Left(Failure.serverError('Network error: ${e.message}'));
    } catch (e, s) {
      print('🏥 [HEALTH_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<HealthReport>> updateHealthReport(String reportId, UpdateHealthReportRequest request) async {
    try {
      print('🏥 [HEALTH_REPORT] Updating health report: $reportId');
      final response = await _apiService.updateHealthReport(reportId, request);
      
      if (response.response.statusCode == 200) {
        print('🏥 [HEALTH_REPORT] Health report updated successfully');
        return Right(response.data.data);
      } else {
        print('🏥 [HEALTH_REPORT] Failed to update health report: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to update health report'));
      }
    } on DioException catch (e) {
      print('🏥 [HEALTH_REPORT] DioException: ${e.message}');
      return Left(Failure.serverError('Network error: ${e.message}'));
    } catch (e, s) {
      print('🏥 [HEALTH_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<SuccessResponse>> deleteHealthReport(String reportId) async {
    try {
      print('🏥 [HEALTH_REPORT] Deleting health report: $reportId');
      final response = await _apiService.deleteHealthReport(reportId);
      
      if (response.response.statusCode == 200) {
        print('🏥 [HEALTH_REPORT] Health report deleted successfully');
        return Right(response.data);
      } else {
        print('🏥 [HEALTH_REPORT] Failed to delete health report: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to delete health report'));
      }
    } on DioException catch (e) {
      print('🏥 [HEALTH_REPORT] DioException: ${e.message}');
      return Left(Failure.serverError('Network error: ${e.message}'));
    } catch (e, s) {
      print('🏥 [HEALTH_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<List<ReportType>>> getReportTypes() async {
    try {
      print('🏥 [HEALTH_REPORT] Fetching report types');
      final response = await _apiService.getReportTypes();
      
      if (response.response.statusCode == 200) {
        print('🏥 [HEALTH_REPORT] Report types fetched successfully');
        return Right(response.data.data);
      } else {
        print('🏥 [HEALTH_REPORT] Failed to fetch report types: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch report types'));
      }
    } on DioException catch (e) {
      print('🏥 [HEALTH_REPORT] DioException: ${e.message}');
      return Left(Failure.serverError('Network error: ${e.message}'));
    } catch (e, s) {
      print('🏥 [HEALTH_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }
}
