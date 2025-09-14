import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/faq.dart';
import '../../domain/repositories/faq_repository.dart';
import '../datasources/faq_api_service.dart';

class FAQRepositoryImpl implements FAQRepository {
  final FAQApiService _apiService;

  FAQRepositoryImpl(this._apiService);

  @override
  Future<Result<FAQResponse>> getFAQs({
    String? category,
    String? search,
  }) async {
    try {
      print('📋 [FAQ] Fetching FAQs - Category: $category, Search: $search');
      
      final response = await _apiService.getFAQs(
        category: category,
        search: search,
      );
      
      if (response.response.statusCode == 200) {
        print('📋 [FAQ] FAQs fetched successfully');
        return Right(response.data.data);
      } else {
        print('📋 [FAQ] Failed to fetch FAQs: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch FAQs'));
      }
    } on DioException catch (e) {
      print('📋 [FAQ] DioException: ${e.message}');
      if (e.response?.statusCode == 404) {
        return Left(Failure.serverError('FAQs not found'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('📋 [FAQ] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<FAQCategoriesResponse>> getCategories() async {
    try {
      print('📋 [FAQ] Fetching FAQ categories');
      
      final response = await _apiService.getCategories();
      
      if (response.response.statusCode == 200) {
        print('📋 [FAQ] Categories fetched successfully');
        return Right(response.data.data);
      } else {
        print('📋 [FAQ] Failed to fetch categories: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch categories'));
      }
    } on DioException catch (e) {
      print('📋 [FAQ] DioException: ${e.message}');
      if (e.response?.statusCode == 404) {
        return Left(Failure.serverError('Categories not found'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('📋 [FAQ] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }
}
