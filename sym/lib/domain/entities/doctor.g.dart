// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorImpl _$$DoctorImplFromJson(Map<String, dynamic> json) => _$DoctorImpl(
      id: json['_id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      specialty: json['specialty'] as String,
      subSpecialty: json['subSpecialty'] as String?,
      licenseNumber: json['licenseNumber'] as String,
      yearsOfExperience: (json['yearsOfExperience'] as num).toInt(),
      hospitalName: json['hospitalName'] as String,
      clinicName: json['clinicName'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      profilePicture: json['profilePicture'] as String?,
      bio: json['bio'] as String?,
      education: (json['education'] as List<dynamic>?)
              ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      certifications: (json['certifications'] as List<dynamic>?)
              ?.map((e) => Certification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      consultationFee: (json['consultationFee'] as num).toDouble(),
      availableDays: (json['availableDays'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      availableHours: json['availableHours'] == null
          ? null
          : AvailableHours.fromJson(
              json['availableHours'] as Map<String, dynamic>),
      averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0.0,
      totalReviews: (json['totalReviews'] as num?)?.toInt() ?? 0,
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isVerified: json['isVerified'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
      isAvailable: json['isAvailable'] as bool? ?? true,
      acceptsNewPatients: json['acceptsNewPatients'] as bool? ?? true,
      consultationTypes: (json['consultationTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      insuranceAccepted: (json['insuranceAccepted'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DoctorImplToJson(_$DoctorImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'specialty': instance.specialty,
      'subSpecialty': instance.subSpecialty,
      'licenseNumber': instance.licenseNumber,
      'yearsOfExperience': instance.yearsOfExperience,
      'hospitalName': instance.hospitalName,
      'clinicName': instance.clinicName,
      'address': instance.address,
      'profilePicture': instance.profilePicture,
      'bio': instance.bio,
      'education': instance.education,
      'certifications': instance.certifications,
      'consultationFee': instance.consultationFee,
      'availableDays': instance.availableDays,
      'availableHours': instance.availableHours,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
      'reviews': instance.reviews,
      'isVerified': instance.isVerified,
      'isActive': instance.isActive,
      'isAvailable': instance.isAvailable,
      'acceptsNewPatients': instance.acceptsNewPatients,
      'consultationTypes': instance.consultationTypes,
      'languages': instance.languages,
      'insuranceAccepted': instance.insuranceAccepted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'country': instance.country,
    };

_$EducationImpl _$$EducationImplFromJson(Map<String, dynamic> json) =>
    _$EducationImpl(
      degree: json['degree'] as String,
      institution: json['institution'] as String,
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$$EducationImplToJson(_$EducationImpl instance) =>
    <String, dynamic>{
      'degree': instance.degree,
      'institution': instance.institution,
      'year': instance.year,
    };

_$CertificationImpl _$$CertificationImplFromJson(Map<String, dynamic> json) =>
    _$CertificationImpl(
      name: json['name'] as String,
      issuingOrganization: json['issuingOrganization'] as String,
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$$CertificationImplToJson(_$CertificationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'issuingOrganization': instance.issuingOrganization,
      'year': instance.year,
    };

_$AvailableHoursImpl _$$AvailableHoursImplFromJson(Map<String, dynamic> json) =>
    _$AvailableHoursImpl(
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$$AvailableHoursImplToJson(
        _$AvailableHoursImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      patientId: json['patientId'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'rating': instance.rating,
      'comment': instance.comment,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$DoctorListResponseImpl _$$DoctorListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorListResponseImpl(
      doctors: (json['doctors'] as List<dynamic>)
          .map((e) => Doctor.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
      hasPrev: json['hasPrev'] as bool,
    );

Map<String, dynamic> _$$DoctorListResponseImplToJson(
        _$DoctorListResponseImpl instance) =>
    <String, dynamic>{
      'doctors': instance.doctors,
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'hasNext': instance.hasNext,
      'hasPrev': instance.hasPrev,
    };

_$DoctorReviewsResponseImpl _$$DoctorReviewsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorReviewsResponseImpl(
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      averageRating: (json['averageRating'] as num).toDouble(),
      totalReviews: (json['totalReviews'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$$DoctorReviewsResponseImplToJson(
        _$DoctorReviewsResponseImpl instance) =>
    <String, dynamic>{
      'reviews': instance.reviews,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
      'page': instance.page,
      'pages': instance.pages,
    };

_$AddReviewRequestImpl _$$AddReviewRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddReviewRequestImpl(
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$AddReviewRequestImplToJson(
        _$AddReviewRequestImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
    };

_$DoctorApiResponseImpl _$$DoctorApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorApiResponseImpl(
      success: json['success'] as bool,
      data: Doctor.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorApiResponseImplToJson(
        _$DoctorApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$DoctorListApiResponseImpl _$$DoctorListApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorListApiResponseImpl(
      success: json['success'] as bool,
      data: DoctorListResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorListApiResponseImplToJson(
        _$DoctorListApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$DoctorReviewsApiResponseImpl _$$DoctorReviewsApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorReviewsApiResponseImpl(
      success: json['success'] as bool,
      data:
          DoctorReviewsResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorReviewsApiResponseImplToJson(
        _$DoctorReviewsApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$SpecialtiesApiResponseImpl _$$SpecialtiesApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialtiesApiResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SpecialtiesApiResponseImplToJson(
        _$SpecialtiesApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$AddReviewResponseImpl _$$AddReviewResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddReviewResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$AddReviewResponseImplToJson(
        _$AddReviewResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
