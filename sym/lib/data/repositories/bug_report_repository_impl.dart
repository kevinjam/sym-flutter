import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/bug_report.dart';
import '../../domain/repositories/bug_report_repository.dart';
import '../datasources/bug_report_api_service.dart';

class BugReportRepositoryImpl implements BugReportRepository {
  final BugReportApiService _apiService;

  BugReportRepositoryImpl(this._apiService);

  @override
  Future<Result<BugReportResponse>> createBugReport(
    CreateBugReportRequest request,
  ) async {
    try {
      print('🐛 [BUG_REPORT] Creating bug report - Category: ${request.category}');
      
      final response = await _apiService.createBugReport(request);
      
      if (response.response.statusCode == 201) {
        print('🐛 [BUG_REPORT] Bug report created successfully');
        return Right(response.data.data);
      } else {
        print('🐛 [BUG_REPORT] Failed to create bug report: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to submit bug report'));
      }
    } on DioException catch (e) {
      print('🐛 [BUG_REPORT] DioException: ${e.message}');
      if (e.response?.statusCode == 400) {
        return Left(Failure.validationError('Invalid request data'));
      } else if (e.response?.statusCode == 401) {
        return Left(Failure.authenticationError('Authentication required'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('🐛 [BUG_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<List<BugReportCategory>>> getBugReportCategories() async {
    try {
      print('🐛 [BUG_REPORT] Fetching bug report categories');
      
      final response = await _apiService.getBugReportCategories();
      
      if (response.response.statusCode == 200) {
        print('🐛 [BUG_REPORT] Categories fetched successfully');
        return Right(response.data.data);
      } else {
        print('🐛 [BUG_REPORT] Failed to fetch categories: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch bug report categories'));
      }
    } on DioException catch (e) {
      print('🐛 [BUG_REPORT] DioException: ${e.message}');
      if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('🐛 [BUG_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<List<SeverityLevel>>> getSeverityLevels() async {
    try {
      print('🐛 [BUG_REPORT] Fetching severity levels');
      
      final response = await _apiService.getSeverityLevels();
      
      if (response.response.statusCode == 200) {
        print('🐛 [BUG_REPORT] Severity levels fetched successfully');
        return Right(response.data.data);
      } else {
        print('🐛 [BUG_REPORT] Failed to fetch severity levels: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch severity levels'));
      }
    } on DioException catch (e) {
      print('🐛 [BUG_REPORT] DioException: ${e.message}');
      if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('🐛 [BUG_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<List<BugReport>>> getUserBugReports({
    int? page,
    int? limit,
    String? status,
  }) async {
    try {
      print('🐛 [BUG_REPORT] Fetching user bug reports');
      
      final response = await _apiService.getUserBugReports(
        page: page,
        limit: limit,
        status: status,
      );
      
      if (response.response.statusCode == 200) {
        print('🐛 [BUG_REPORT] Bug reports fetched successfully');
        return Right(response.data.data.reports);
      } else {
        print('🐛 [BUG_REPORT] Failed to fetch bug reports: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch bug reports'));
      }
    } on DioException catch (e) {
      print('🐛 [BUG_REPORT] DioException: ${e.message}');
      if (e.response?.statusCode == 401) {
        return Left(Failure.authenticationError('Authentication required'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('🐛 [BUG_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<BugReport>> getBugReport(String id) async {
    try {
      print('🐛 [BUG_REPORT] Fetching bug report: $id');
      
      final response = await _apiService.getBugReport(id);
      
      if (response.response.statusCode == 200) {
        print('🐛 [BUG_REPORT] Bug report fetched successfully');
        return Right(response.data.data);
      } else {
        print('🐛 [BUG_REPORT] Failed to fetch bug report: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch bug report'));
      }
    } on DioException catch (e) {
      print('🐛 [BUG_REPORT] DioException: ${e.message}');
      if (e.response?.statusCode == 404) {
        return Left(Failure.serverError('Bug report not found'));
      } else if (e.response?.statusCode == 401) {
        return Left(Failure.authenticationError('Authentication required'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('🐛 [BUG_REPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }
}
