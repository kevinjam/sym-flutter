import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.freezed.dart';
part 'doctor.g.dart';

@freezed
class Doctor with _$Doctor {
  const factory Doctor({
    @JsonKey(name: '_id') required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String specialty,
    String? subSpecialty,
    required String licenseNumber,
    required int yearsOfExperience,
    required String hospitalName,
    String? clinicName,
    Address? address,
    String? profilePicture,
    String? bio,
    @Default([]) List<Education> education,
    @Default([]) List<Certification> certifications,
    required double consultationFee,
    @Default([]) List<String> availableDays,
    AvailableHours? availableHours,
    @Default(0.0) double averageRating,
    @Default(0) int totalReviews,
    @Default([]) List<Review> reviews,
    @Default(false) bool isVerified,
    @Default(true) bool isActive,
    @Default(true) bool isAvailable,
    @Default(true) bool acceptsNewPatients,
    @Default([]) List<String> consultationTypes,
    @Default([]) List<String> languages,
    @Default([]) List<String> insuranceAccepted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? street,
    String? city,
    String? state,
    String? zipCode,
    String? country,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class Education with _$Education {
  const factory Education({
    required String degree,
    required String institution,
    required int year,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) => _$EducationFromJson(json);
}

@freezed
class Certification with _$Certification {
  const factory Certification({
    required String name,
    required String issuingOrganization,
    required int year,
  }) = _Certification;

  factory Certification.fromJson(Map<String, dynamic> json) => _$CertificationFromJson(json);
}

@freezed
class AvailableHours with _$AvailableHours {
  const factory AvailableHours({
    required String start,
    required String end,
  }) = _AvailableHours;

  factory AvailableHours.fromJson(Map<String, dynamic> json) => _$AvailableHoursFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required String patientId,
    required int rating,
    String? comment,
    required DateTime createdAt,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class DoctorListResponse with _$DoctorListResponse {
  const factory DoctorListResponse({
    required List<Doctor> doctors,
    required int total,
    required int page,
    required int pages,
    required bool hasNext,
    required bool hasPrev,
  }) = _DoctorListResponse;

  factory DoctorListResponse.fromJson(Map<String, dynamic> json) => _$DoctorListResponseFromJson(json);
}

@freezed
class DoctorReviewsResponse with _$DoctorReviewsResponse {
  const factory DoctorReviewsResponse({
    required List<Review> reviews,
    required double averageRating,
    required int totalReviews,
    required int page,
    required int pages,
  }) = _DoctorReviewsResponse;

  factory DoctorReviewsResponse.fromJson(Map<String, dynamic> json) => _$DoctorReviewsResponseFromJson(json);
}

@freezed
class AddReviewRequest with _$AddReviewRequest {
  const factory AddReviewRequest({
    required int rating,
    String? comment,
  }) = _AddReviewRequest;

  factory AddReviewRequest.fromJson(Map<String, dynamic> json) => _$AddReviewRequestFromJson(json);
}

@freezed
class DoctorApiResponse with _$DoctorApiResponse {
  const factory DoctorApiResponse({
    required bool success,
    required Doctor data,
  }) = _DoctorApiResponse;

  factory DoctorApiResponse.fromJson(Map<String, dynamic> json) => _$DoctorApiResponseFromJson(json);
}

@freezed
class DoctorListApiResponse with _$DoctorListApiResponse {
  const factory DoctorListApiResponse({
    required bool success,
    required DoctorListResponse data,
  }) = _DoctorListApiResponse;

  factory DoctorListApiResponse.fromJson(Map<String, dynamic> json) => _$DoctorListApiResponseFromJson(json);
}

@freezed
class DoctorReviewsApiResponse with _$DoctorReviewsApiResponse {
  const factory DoctorReviewsApiResponse({
    required bool success,
    required DoctorReviewsResponse data,
  }) = _DoctorReviewsApiResponse;

  factory DoctorReviewsApiResponse.fromJson(Map<String, dynamic> json) => _$DoctorReviewsApiResponseFromJson(json);
}

@freezed
class SpecialtiesApiResponse with _$SpecialtiesApiResponse {
  const factory SpecialtiesApiResponse({
    required bool success,
    required List<String> data,
  }) = _SpecialtiesApiResponse;

  factory SpecialtiesApiResponse.fromJson(Map<String, dynamic> json) => _$SpecialtiesApiResponseFromJson(json);
}

@freezed
class AddReviewResponse with _$AddReviewResponse {
  const factory AddReviewResponse({
    required bool success,
    required String message,
    required Map<String, dynamic> data,
  }) = _AddReviewResponse;

  factory AddReviewResponse.fromJson(Map<String, dynamic> json) => _$AddReviewResponseFromJson(json);
}
