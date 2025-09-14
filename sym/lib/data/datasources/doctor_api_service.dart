import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/doctor.dart';

part 'doctor_api_service.g.dart';

@RestApi()
abstract class DoctorApiService {
  factory DoctorApiService(Dio dio) = _DoctorApiService;

  @GET('/api/doctors')
  Future<HttpResponse<DoctorListApiResponse>> getDoctors({
    @Query('page') int? page,
    @Query('limit') int? limit,
    @Query('search') String? search,
    @Query('specialty') String? specialty,
    @Query('city') String? city,
    @Query('state') String? state,
    @Query('minRating') double? minRating,
    @Query('maxFee') double? maxFee,
    @Query('available') bool? available,
    @Query('sortBy') String? sortBy,
    @Query('sortOrder') String? sortOrder,
  });

  @GET('/api/doctors/{id}')
  Future<HttpResponse<DoctorApiResponse>> getDoctorById(
    @Path('id') String id,
  );

  @GET('/api/doctors/specialties')
  Future<HttpResponse<SpecialtiesApiResponse>> getSpecialties();

  @GET('/api/doctors/popular')
  Future<HttpResponse<DoctorListApiResponse>> getPopularDoctors({
    @Query('limit') int? limit,
  });

  @GET('/api/doctors/specialty/{specialty}')
  Future<HttpResponse<DoctorListApiResponse>> getDoctorsBySpecialty(
    @Path('specialty') String specialty, {
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @GET('/api/doctors/{id}/reviews')
  Future<HttpResponse<DoctorReviewsApiResponse>> getDoctorReviews(
    @Path('id') String id, {
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @POST('/api/doctors/{id}/reviews')
  Future<HttpResponse<AddReviewResponse>> addReview(
    @Path('id') String id,
    @Body() AddReviewRequest request,
  );
}
