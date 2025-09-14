import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/support_message.dart';
import '../../domain/repositories/support_repository.dart';
import '../datasources/support_api_service.dart';

class SupportRepositoryImpl implements SupportRepository {
  final SupportApiService _apiService;

  SupportRepositoryImpl(this._apiService);

  @override
  Future<Result<SupportMessageResponse>> createSupportMessage(
    CreateSupportMessageRequest request,
  ) async {
    try {
      print('📧 [SUPPORT] Creating support message - Category: ${request.category}');
      
      final response = await _apiService.createSupportMessage(request);
      
      if (response.response.statusCode == 201) {
        print('📧 [SUPPORT] Support message created successfully');
        return Right(response.data.data);
      } else {
        print('📧 [SUPPORT] Failed to create support message: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to send support message'));
      }
    } on DioException catch (e) {
      print('📧 [SUPPORT] DioException: ${e.message}');
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
      print('📧 [SUPPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<List<SupportCategory>>> getSupportCategories() async {
    try {
      print('📧 [SUPPORT] Fetching support categories');
      
      final response = await _apiService.getSupportCategories();
      
      if (response.response.statusCode == 200) {
        print('📧 [SUPPORT] Categories fetched successfully');
        return Right(response.data.data);
      } else {
        print('📧 [SUPPORT] Failed to fetch categories: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch support categories'));
      }
    } on DioException catch (e) {
      print('📧 [SUPPORT] DioException: ${e.message}');
      if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('📧 [SUPPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<List<SupportMessage>>> getUserSupportMessages({
    int? page,
    int? limit,
    String? status,
  }) async {
    try {
      print('📧 [SUPPORT] Fetching user support messages');
      
      final response = await _apiService.getUserSupportMessages(
        page: page,
        limit: limit,
        status: status,
      );
      
      if (response.response.statusCode == 200) {
        print('📧 [SUPPORT] Support messages fetched successfully');
        return Right(response.data.data.messages);
      } else {
        print('📧 [SUPPORT] Failed to fetch support messages: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch support messages'));
      }
    } on DioException catch (e) {
      print('📧 [SUPPORT] DioException: ${e.message}');
      if (e.response?.statusCode == 401) {
        return Left(Failure.authenticationError('Authentication required'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('📧 [SUPPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<SupportMessage>> getSupportMessage(String id) async {
    try {
      print('📧 [SUPPORT] Fetching support message: $id');
      
      final response = await _apiService.getSupportMessage(id);
      
      if (response.response.statusCode == 200) {
        print('📧 [SUPPORT] Support message fetched successfully');
        return Right(response.data.data);
      } else {
        print('📧 [SUPPORT] Failed to fetch support message: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch support message'));
      }
    } on DioException catch (e) {
      print('📧 [SUPPORT] DioException: ${e.message}');
      if (e.response?.statusCode == 404) {
        return Left(Failure.serverError('Support message not found'));
      } else if (e.response?.statusCode == 401) {
        return Left(Failure.authenticationError('Authentication required'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('📧 [SUPPORT] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }
}
