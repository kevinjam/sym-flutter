import '../../core/errors/result.dart';
import '../entities/doctor.dart';

abstract class DoctorRepository {
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
  });
  
  Future<Result<Doctor>> getDoctorById(String id);
  
  Future<Result<List<String>>> getSpecialties();
  
  Future<Result<List<Doctor>>> getPopularDoctors({int? limit});
  
  Future<Result<DoctorListResponse>> getDoctorsBySpecialty(
    String specialty, {
    int? page,
    int? limit,
  });
  
  Future<Result<DoctorReviewsResponse>> getDoctorReviews(
    String id, {
    int? page,
    int? limit,
  });
  
  Future<Result<AddReviewResponse>> addReview(
    String doctorId,
    AddReviewRequest request,
  );
}
