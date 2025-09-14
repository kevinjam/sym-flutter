import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/doctor.dart';
import '../../domain/repositories/doctor_repository.dart';
import '../datasources/doctor_api_service.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  final DoctorApiService _apiService;

  DoctorRepositoryImpl(this._apiService);

  @override
  Future<Result<DoctorListResponse>> getDoctors({
    int? page,
    int? limit,
    String? search,
    String? specialty,
    String? city,
    String? state,
    double? minRating,
    double? maxFee,
    bool? available,
    String? sortBy,
    String? sortOrder,
  }) async {
    try {
      print('👨‍⚕️ [DOCTOR] Fetching doctors - Page: $page, Search: $search, Specialty: $specialty');
      
      final response = await _apiService.getDoctors(
        page: page,
        limit: limit,
        search: search,
        specialty: specialty,
        city: city,
        state: state,
        minRating: minRating,
        maxFee: maxFee,
        available: available,
        sortBy: sortBy,
        sortOrder: sortOrder,
      );
      
      if (response.response.statusCode == 200) {
        print('👨‍⚕️ [DOCTOR] Doctors fetched successfully');
        return Right(response.data.data);
      } else {
        print('👨‍⚕️ [DOCTOR] Failed to fetch doctors: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch doctors'));
      }
    } on DioException catch (e) {
      print('👨‍⚕️ [DOCTOR] DioException: ${e.message}');
      if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('👨‍⚕️ [DOCTOR] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<Doctor>> getDoctorById(String id) async {
    try {
      print('👨‍⚕️ [DOCTOR] Fetching doctor: $id');
      
      final response = await _apiService.getDoctorById(id);
      
      if (response.response.statusCode == 200) {
        print('👨‍⚕️ [DOCTOR] Doctor fetched successfully');
        return Right(response.data.data);
      } else {
        print('👨‍⚕️ [DOCTOR] Failed to fetch doctor: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch doctor'));
      }
    } on DioException catch (e) {
      print('👨‍⚕️ [DOCTOR] DioException: ${e.message}');
      if (e.response?.statusCode == 404) {
        return Left(Failure.serverError('Doctor not found'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('👨‍⚕️ [DOCTOR] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<List<String>>> getSpecialties() async {
    try {
      print('👨‍⚕️ [DOCTOR] Fetching specialties');
      
      final response = await _apiService.getSpecialties();
      
      if (response.response.statusCode == 200) {
        print('👨‍⚕️ [DOCTOR] Specialties fetched successfully');
        return Right(response.data.data);
      } else {
        print('👨‍⚕️ [DOCTOR] Failed to fetch specialties: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch specialties'));
      }
    } on DioException catch (e) {
      print('👨‍⚕️ [DOCTOR] DioException: ${e.message}');
      if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('👨‍⚕️ [DOCTOR] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<List<Doctor>>> getPopularDoctors({int? limit}) async {
    try {
      print('👨‍⚕️ [DOCTOR] Fetching popular doctors');
      
      final response = await _apiService.getPopularDoctors(limit: limit);
      
      if (response.response.statusCode == 200) {
        print('👨‍⚕️ [DOCTOR] Popular doctors fetched successfully');
        return Right(response.data.data.doctors);
      } else {
        print('👨‍⚕️ [DOCTOR] Failed to fetch popular doctors: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch popular doctors'));
      }
    } on DioException catch (e) {
      print('👨‍⚕️ [DOCTOR] DioException: ${e.message}');
      if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('👨‍⚕️ [DOCTOR] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<DoctorListResponse>> getDoctorsBySpecialty(
    String specialty, {
    int? page,
    int? limit,
  }) async {
    try {
      print('👨‍⚕️ [DOCTOR] Fetching doctors by specialty: $specialty');
      
      final response = await _apiService.getDoctorsBySpecialty(
        specialty,
        page: page,
        limit: limit,
      );
      
      if (response.response.statusCode == 200) {
        print('👨‍⚕️ [DOCTOR] Doctors by specialty fetched successfully');
        return Right(response.data.data);
      } else {
        print('👨‍⚕️ [DOCTOR] Failed to fetch doctors by specialty: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch doctors by specialty'));
      }
    } on DioException catch (e) {
      print('👨‍⚕️ [DOCTOR] DioException: ${e.message}');
      if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('👨‍⚕️ [DOCTOR] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<DoctorReviewsResponse>> getDoctorReviews(
    String id, {
    int? page,
    int? limit,
  }) async {
    try {
      print('👨‍⚕️ [DOCTOR] Fetching doctor reviews: $id');
      
      final response = await _apiService.getDoctorReviews(
        id,
        page: page,
        limit: limit,
      );
      
      if (response.response.statusCode == 200) {
        print('👨‍⚕️ [DOCTOR] Doctor reviews fetched successfully');
        return Right(response.data.data);
      } else {
        print('👨‍⚕️ [DOCTOR] Failed to fetch doctor reviews: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to fetch doctor reviews'));
      }
    } on DioException catch (e) {
      print('👨‍⚕️ [DOCTOR] DioException: ${e.message}');
      if (e.response?.statusCode == 404) {
        return Left(Failure.serverError('Doctor not found'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('👨‍⚕️ [DOCTOR] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }

  @override
  Future<Result<AddReviewResponse>> addReview(
    String doctorId,
    AddReviewRequest request,
  ) async {
    try {
      print('👨‍⚕️ [DOCTOR] Adding review for doctor: $doctorId');
      
      final response = await _apiService.addReview(doctorId, request);
      
      if (response.response.statusCode == 201) {
        print('👨‍⚕️ [DOCTOR] Review added successfully');
        return Right(response.data);
      } else {
        print('👨‍⚕️ [DOCTOR] Failed to add review: ${response.response.statusCode}');
        return Left(Failure.serverError('Failed to add review'));
      }
    } on DioException catch (e) {
      print('👨‍⚕️ [DOCTOR] DioException: ${e.message}');
      if (e.response?.statusCode == 400) {
        return Left(Failure.validationError('Invalid review data'));
      } else if (e.response?.statusCode == 401) {
        return Left(Failure.authenticationError('Authentication required'));
      } else if (e.response?.statusCode == 500) {
        return Left(Failure.serverError('Server error'));
      } else {
        return Left(Failure.networkError('Network error: ${e.message}'));
      }
    } catch (e) {
      print('👨‍⚕️ [DOCTOR] Unexpected error: $e');
      return Left(Failure.serverError('Unexpected error: $e'));
    }
  }
}
