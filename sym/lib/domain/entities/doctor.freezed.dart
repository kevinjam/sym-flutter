// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get specialty => throw _privateConstructorUsedError;
  String? get subSpecialty => throw _privateConstructorUsedError;
  String get licenseNumber => throw _privateConstructorUsedError;
  int get yearsOfExperience => throw _privateConstructorUsedError;
  String get hospitalName => throw _privateConstructorUsedError;
  String? get clinicName => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  List<Education> get education => throw _privateConstructorUsedError;
  List<Certification> get certifications => throw _privateConstructorUsedError;
  double get consultationFee => throw _privateConstructorUsedError;
  List<String> get availableDays => throw _privateConstructorUsedError;
  AvailableHours? get availableHours => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  int get totalReviews => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  bool get acceptsNewPatients => throw _privateConstructorUsedError;
  List<String> get consultationTypes => throw _privateConstructorUsedError;
  List<String> get languages => throw _privateConstructorUsedError;
  List<String> get insuranceAccepted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Doctor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String firstName,
      String lastName,
      String email,
      String phoneNumber,
      String specialty,
      String? subSpecialty,
      String licenseNumber,
      int yearsOfExperience,
      String hospitalName,
      String? clinicName,
      Address? address,
      String? profilePicture,
      String? bio,
      List<Education> education,
      List<Certification> certifications,
      double consultationFee,
      List<String> availableDays,
      AvailableHours? availableHours,
      double averageRating,
      int totalReviews,
      List<Review> reviews,
      bool isVerified,
      bool isActive,
      bool isAvailable,
      bool acceptsNewPatients,
      List<String> consultationTypes,
      List<String> languages,
      List<String> insuranceAccepted,
      DateTime createdAt,
      DateTime updatedAt});

  $AddressCopyWith<$Res>? get address;
  $AvailableHoursCopyWith<$Res>? get availableHours;
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? specialty = null,
    Object? subSpecialty = freezed,
    Object? licenseNumber = null,
    Object? yearsOfExperience = null,
    Object? hospitalName = null,
    Object? clinicName = freezed,
    Object? address = freezed,
    Object? profilePicture = freezed,
    Object? bio = freezed,
    Object? education = null,
    Object? certifications = null,
    Object? consultationFee = null,
    Object? availableDays = null,
    Object? availableHours = freezed,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? reviews = null,
    Object? isVerified = null,
    Object? isActive = null,
    Object? isAvailable = null,
    Object? acceptsNewPatients = null,
    Object? consultationTypes = null,
    Object? languages = null,
    Object? insuranceAccepted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      specialty: null == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      subSpecialty: freezed == subSpecialty
          ? _value.subSpecialty
          : subSpecialty // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNumber: null == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      yearsOfExperience: null == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      clinicName: freezed == clinicName
          ? _value.clinicName
          : clinicName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      certifications: null == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<Certification>,
      consultationFee: null == consultationFee
          ? _value.consultationFee
          : consultationFee // ignore: cast_nullable_to_non_nullable
              as double,
      availableDays: null == availableDays
          ? _value.availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableHours: freezed == availableHours
          ? _value.availableHours
          : availableHours // ignore: cast_nullable_to_non_nullable
              as AvailableHours?,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptsNewPatients: null == acceptsNewPatients
          ? _value.acceptsNewPatients
          : acceptsNewPatients // ignore: cast_nullable_to_non_nullable
              as bool,
      consultationTypes: null == consultationTypes
          ? _value.consultationTypes
          : consultationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      insuranceAccepted: null == insuranceAccepted
          ? _value.insuranceAccepted
          : insuranceAccepted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailableHoursCopyWith<$Res>? get availableHours {
    if (_value.availableHours == null) {
      return null;
    }

    return $AvailableHoursCopyWith<$Res>(_value.availableHours!, (value) {
      return _then(_value.copyWith(availableHours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String firstName,
      String lastName,
      String email,
      String phoneNumber,
      String specialty,
      String? subSpecialty,
      String licenseNumber,
      int yearsOfExperience,
      String hospitalName,
      String? clinicName,
      Address? address,
      String? profilePicture,
      String? bio,
      List<Education> education,
      List<Certification> certifications,
      double consultationFee,
      List<String> availableDays,
      AvailableHours? availableHours,
      double averageRating,
      int totalReviews,
      List<Review> reviews,
      bool isVerified,
      bool isActive,
      bool isAvailable,
      bool acceptsNewPatients,
      List<String> consultationTypes,
      List<String> languages,
      List<String> insuranceAccepted,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $AvailableHoursCopyWith<$Res>? get availableHours;
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? specialty = null,
    Object? subSpecialty = freezed,
    Object? licenseNumber = null,
    Object? yearsOfExperience = null,
    Object? hospitalName = null,
    Object? clinicName = freezed,
    Object? address = freezed,
    Object? profilePicture = freezed,
    Object? bio = freezed,
    Object? education = null,
    Object? certifications = null,
    Object? consultationFee = null,
    Object? availableDays = null,
    Object? availableHours = freezed,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? reviews = null,
    Object? isVerified = null,
    Object? isActive = null,
    Object? isAvailable = null,
    Object? acceptsNewPatients = null,
    Object? consultationTypes = null,
    Object? languages = null,
    Object? insuranceAccepted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DoctorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      specialty: null == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      subSpecialty: freezed == subSpecialty
          ? _value.subSpecialty
          : subSpecialty // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNumber: null == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      yearsOfExperience: null == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      clinicName: freezed == clinicName
          ? _value.clinicName
          : clinicName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      education: null == education
          ? _value._education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<Certification>,
      consultationFee: null == consultationFee
          ? _value.consultationFee
          : consultationFee // ignore: cast_nullable_to_non_nullable
              as double,
      availableDays: null == availableDays
          ? _value._availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableHours: freezed == availableHours
          ? _value.availableHours
          : availableHours // ignore: cast_nullable_to_non_nullable
              as AvailableHours?,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptsNewPatients: null == acceptsNewPatients
          ? _value.acceptsNewPatients
          : acceptsNewPatients // ignore: cast_nullable_to_non_nullable
              as bool,
      consultationTypes: null == consultationTypes
          ? _value._consultationTypes
          : consultationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      insuranceAccepted: null == insuranceAccepted
          ? _value._insuranceAccepted
          : insuranceAccepted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorImpl implements _Doctor {
  const _$DoctorImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phoneNumber,
      required this.specialty,
      this.subSpecialty,
      required this.licenseNumber,
      required this.yearsOfExperience,
      required this.hospitalName,
      this.clinicName,
      this.address,
      this.profilePicture,
      this.bio,
      final List<Education> education = const [],
      final List<Certification> certifications = const [],
      required this.consultationFee,
      final List<String> availableDays = const [],
      this.availableHours,
      this.averageRating = 0.0,
      this.totalReviews = 0,
      final List<Review> reviews = const [],
      this.isVerified = false,
      this.isActive = true,
      this.isAvailable = true,
      this.acceptsNewPatients = true,
      final List<String> consultationTypes = const [],
      final List<String> languages = const [],
      final List<String> insuranceAccepted = const [],
      required this.createdAt,
      required this.updatedAt})
      : _education = education,
        _certifications = certifications,
        _availableDays = availableDays,
        _reviews = reviews,
        _consultationTypes = consultationTypes,
        _languages = languages,
        _insuranceAccepted = insuranceAccepted;

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String specialty;
  @override
  final String? subSpecialty;
  @override
  final String licenseNumber;
  @override
  final int yearsOfExperience;
  @override
  final String hospitalName;
  @override
  final String? clinicName;
  @override
  final Address? address;
  @override
  final String? profilePicture;
  @override
  final String? bio;
  final List<Education> _education;
  @override
  @JsonKey()
  List<Education> get education {
    if (_education is EqualUnmodifiableListView) return _education;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_education);
  }

  final List<Certification> _certifications;
  @override
  @JsonKey()
  List<Certification> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  @override
  final double consultationFee;
  final List<String> _availableDays;
  @override
  @JsonKey()
  List<String> get availableDays {
    if (_availableDays is EqualUnmodifiableListView) return _availableDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDays);
  }

  @override
  final AvailableHours? availableHours;
  @override
  @JsonKey()
  final double averageRating;
  @override
  @JsonKey()
  final int totalReviews;
  final List<Review> _reviews;
  @override
  @JsonKey()
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  @JsonKey()
  final bool acceptsNewPatients;
  final List<String> _consultationTypes;
  @override
  @JsonKey()
  List<String> get consultationTypes {
    if (_consultationTypes is EqualUnmodifiableListView)
      return _consultationTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consultationTypes);
  }

  final List<String> _languages;
  @override
  @JsonKey()
  List<String> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final List<String> _insuranceAccepted;
  @override
  @JsonKey()
  List<String> get insuranceAccepted {
    if (_insuranceAccepted is EqualUnmodifiableListView)
      return _insuranceAccepted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insuranceAccepted);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Doctor(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, specialty: $specialty, subSpecialty: $subSpecialty, licenseNumber: $licenseNumber, yearsOfExperience: $yearsOfExperience, hospitalName: $hospitalName, clinicName: $clinicName, address: $address, profilePicture: $profilePicture, bio: $bio, education: $education, certifications: $certifications, consultationFee: $consultationFee, availableDays: $availableDays, availableHours: $availableHours, averageRating: $averageRating, totalReviews: $totalReviews, reviews: $reviews, isVerified: $isVerified, isActive: $isActive, isAvailable: $isAvailable, acceptsNewPatients: $acceptsNewPatients, consultationTypes: $consultationTypes, languages: $languages, insuranceAccepted: $insuranceAccepted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.subSpecialty, subSpecialty) ||
                other.subSpecialty == subSpecialty) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            (identical(other.hospitalName, hospitalName) ||
                other.hospitalName == hospitalName) &&
            (identical(other.clinicName, clinicName) ||
                other.clinicName == clinicName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._education, _education) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            (identical(other.consultationFee, consultationFee) ||
                other.consultationFee == consultationFee) &&
            const DeepCollectionEquality()
                .equals(other._availableDays, _availableDays) &&
            (identical(other.availableHours, availableHours) ||
                other.availableHours == availableHours) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.acceptsNewPatients, acceptsNewPatients) ||
                other.acceptsNewPatients == acceptsNewPatients) &&
            const DeepCollectionEquality()
                .equals(other._consultationTypes, _consultationTypes) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._insuranceAccepted, _insuranceAccepted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        email,
        phoneNumber,
        specialty,
        subSpecialty,
        licenseNumber,
        yearsOfExperience,
        hospitalName,
        clinicName,
        address,
        profilePicture,
        bio,
        const DeepCollectionEquality().hash(_education),
        const DeepCollectionEquality().hash(_certifications),
        consultationFee,
        const DeepCollectionEquality().hash(_availableDays),
        availableHours,
        averageRating,
        totalReviews,
        const DeepCollectionEquality().hash(_reviews),
        isVerified,
        isActive,
        isAvailable,
        acceptsNewPatients,
        const DeepCollectionEquality().hash(_consultationTypes),
        const DeepCollectionEquality().hash(_languages),
        const DeepCollectionEquality().hash(_insuranceAccepted),
        createdAt,
        updatedAt
      ]);

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  const factory _Doctor(
      {@JsonKey(name: '_id') required final String id,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String phoneNumber,
      required final String specialty,
      final String? subSpecialty,
      required final String licenseNumber,
      required final int yearsOfExperience,
      required final String hospitalName,
      final String? clinicName,
      final Address? address,
      final String? profilePicture,
      final String? bio,
      final List<Education> education,
      final List<Certification> certifications,
      required final double consultationFee,
      final List<String> availableDays,
      final AvailableHours? availableHours,
      final double averageRating,
      final int totalReviews,
      final List<Review> reviews,
      final bool isVerified,
      final bool isActive,
      final bool isAvailable,
      final bool acceptsNewPatients,
      final List<String> consultationTypes,
      final List<String> languages,
      final List<String> insuranceAccepted,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DoctorImpl;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get specialty;
  @override
  String? get subSpecialty;
  @override
  String get licenseNumber;
  @override
  int get yearsOfExperience;
  @override
  String get hospitalName;
  @override
  String? get clinicName;
  @override
  Address? get address;
  @override
  String? get profilePicture;
  @override
  String? get bio;
  @override
  List<Education> get education;
  @override
  List<Certification> get certifications;
  @override
  double get consultationFee;
  @override
  List<String> get availableDays;
  @override
  AvailableHours? get availableHours;
  @override
  double get averageRating;
  @override
  int get totalReviews;
  @override
  List<Review> get reviews;
  @override
  bool get isVerified;
  @override
  bool get isActive;
  @override
  bool get isAvailable;
  @override
  bool get acceptsNewPatients;
  @override
  List<String> get consultationTypes;
  @override
  List<String> get languages;
  @override
  List<String> get insuranceAccepted;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? state,
      String? zipCode,
      String? country});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? state,
      String? zipCode,
      String? country});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? country = freezed,
  }) {
    return _then(_$AddressImpl(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {this.street, this.city, this.state, this.zipCode, this.country});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipCode;
  @override
  final String? country;

  @override
  String toString() {
    return 'Address(street: $street, city: $city, state: $state, zipCode: $zipCode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, state, zipCode, country);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String? street,
      final String? city,
      final String? state,
      final String? zipCode,
      final String? country}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zipCode;
  @override
  String? get country;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Education _$EducationFromJson(Map<String, dynamic> json) {
  return _Education.fromJson(json);
}

/// @nodoc
mixin _$Education {
  String get degree => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  /// Serializes this Education to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationCopyWith<Education> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res, Education>;
  @useResult
  $Res call({String degree, String institution, int year});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res, $Val extends Education>
    implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degree = null,
    Object? institution = null,
    Object? year = null,
  }) {
    return _then(_value.copyWith(
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationImplCopyWith<$Res>
    implements $EducationCopyWith<$Res> {
  factory _$$EducationImplCopyWith(
          _$EducationImpl value, $Res Function(_$EducationImpl) then) =
      __$$EducationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String degree, String institution, int year});
}

/// @nodoc
class __$$EducationImplCopyWithImpl<$Res>
    extends _$EducationCopyWithImpl<$Res, _$EducationImpl>
    implements _$$EducationImplCopyWith<$Res> {
  __$$EducationImplCopyWithImpl(
      _$EducationImpl _value, $Res Function(_$EducationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degree = null,
    Object? institution = null,
    Object? year = null,
  }) {
    return _then(_$EducationImpl(
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationImpl implements _Education {
  const _$EducationImpl(
      {required this.degree, required this.institution, required this.year});

  factory _$EducationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationImplFromJson(json);

  @override
  final String degree;
  @override
  final String institution;
  @override
  final int year;

  @override
  String toString() {
    return 'Education(degree: $degree, institution: $institution, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationImpl &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, degree, institution, year);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      __$$EducationImplCopyWithImpl<_$EducationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationImplToJson(
      this,
    );
  }
}

abstract class _Education implements Education {
  const factory _Education(
      {required final String degree,
      required final String institution,
      required final int year}) = _$EducationImpl;

  factory _Education.fromJson(Map<String, dynamic> json) =
      _$EducationImpl.fromJson;

  @override
  String get degree;
  @override
  String get institution;
  @override
  int get year;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Certification _$CertificationFromJson(Map<String, dynamic> json) {
  return _Certification.fromJson(json);
}

/// @nodoc
mixin _$Certification {
  String get name => throw _privateConstructorUsedError;
  String get issuingOrganization => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  /// Serializes this Certification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificationCopyWith<Certification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationCopyWith<$Res> {
  factory $CertificationCopyWith(
          Certification value, $Res Function(Certification) then) =
      _$CertificationCopyWithImpl<$Res, Certification>;
  @useResult
  $Res call({String name, String issuingOrganization, int year});
}

/// @nodoc
class _$CertificationCopyWithImpl<$Res, $Val extends Certification>
    implements $CertificationCopyWith<$Res> {
  _$CertificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? issuingOrganization = null,
    Object? year = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      issuingOrganization: null == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificationImplCopyWith<$Res>
    implements $CertificationCopyWith<$Res> {
  factory _$$CertificationImplCopyWith(
          _$CertificationImpl value, $Res Function(_$CertificationImpl) then) =
      __$$CertificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String issuingOrganization, int year});
}

/// @nodoc
class __$$CertificationImplCopyWithImpl<$Res>
    extends _$CertificationCopyWithImpl<$Res, _$CertificationImpl>
    implements _$$CertificationImplCopyWith<$Res> {
  __$$CertificationImplCopyWithImpl(
      _$CertificationImpl _value, $Res Function(_$CertificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? issuingOrganization = null,
    Object? year = null,
  }) {
    return _then(_$CertificationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      issuingOrganization: null == issuingOrganization
          ? _value.issuingOrganization
          : issuingOrganization // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificationImpl implements _Certification {
  const _$CertificationImpl(
      {required this.name,
      required this.issuingOrganization,
      required this.year});

  factory _$CertificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificationImplFromJson(json);

  @override
  final String name;
  @override
  final String issuingOrganization;
  @override
  final int year;

  @override
  String toString() {
    return 'Certification(name: $name, issuingOrganization: $issuingOrganization, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.issuingOrganization, issuingOrganization) ||
                other.issuingOrganization == issuingOrganization) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, issuingOrganization, year);

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificationImplCopyWith<_$CertificationImpl> get copyWith =>
      __$$CertificationImplCopyWithImpl<_$CertificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificationImplToJson(
      this,
    );
  }
}

abstract class _Certification implements Certification {
  const factory _Certification(
      {required final String name,
      required final String issuingOrganization,
      required final int year}) = _$CertificationImpl;

  factory _Certification.fromJson(Map<String, dynamic> json) =
      _$CertificationImpl.fromJson;

  @override
  String get name;
  @override
  String get issuingOrganization;
  @override
  int get year;

  /// Create a copy of Certification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificationImplCopyWith<_$CertificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableHours _$AvailableHoursFromJson(Map<String, dynamic> json) {
  return _AvailableHours.fromJson(json);
}

/// @nodoc
mixin _$AvailableHours {
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;

  /// Serializes this AvailableHours to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableHoursCopyWith<AvailableHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableHoursCopyWith<$Res> {
  factory $AvailableHoursCopyWith(
          AvailableHours value, $Res Function(AvailableHours) then) =
      _$AvailableHoursCopyWithImpl<$Res, AvailableHours>;
  @useResult
  $Res call({String start, String end});
}

/// @nodoc
class _$AvailableHoursCopyWithImpl<$Res, $Val extends AvailableHours>
    implements $AvailableHoursCopyWith<$Res> {
  _$AvailableHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableHoursImplCopyWith<$Res>
    implements $AvailableHoursCopyWith<$Res> {
  factory _$$AvailableHoursImplCopyWith(_$AvailableHoursImpl value,
          $Res Function(_$AvailableHoursImpl) then) =
      __$$AvailableHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String start, String end});
}

/// @nodoc
class __$$AvailableHoursImplCopyWithImpl<$Res>
    extends _$AvailableHoursCopyWithImpl<$Res, _$AvailableHoursImpl>
    implements _$$AvailableHoursImplCopyWith<$Res> {
  __$$AvailableHoursImplCopyWithImpl(
      _$AvailableHoursImpl _value, $Res Function(_$AvailableHoursImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvailableHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$AvailableHoursImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableHoursImpl implements _AvailableHours {
  const _$AvailableHoursImpl({required this.start, required this.end});

  factory _$AvailableHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableHoursImplFromJson(json);

  @override
  final String start;
  @override
  final String end;

  @override
  String toString() {
    return 'AvailableHours(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableHoursImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of AvailableHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableHoursImplCopyWith<_$AvailableHoursImpl> get copyWith =>
      __$$AvailableHoursImplCopyWithImpl<_$AvailableHoursImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableHoursImplToJson(
      this,
    );
  }
}

abstract class _AvailableHours implements AvailableHours {
  const factory _AvailableHours(
      {required final String start,
      required final String end}) = _$AvailableHoursImpl;

  factory _AvailableHours.fromJson(Map<String, dynamic> json) =
      _$AvailableHoursImpl.fromJson;

  @override
  String get start;
  @override
  String get end;

  /// Create a copy of AvailableHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableHoursImplCopyWith<_$AvailableHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String get patientId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String patientId, int rating, String? comment, DateTime createdAt});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String patientId, int rating, String? comment, DateTime createdAt});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ReviewImpl(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {required this.patientId,
      required this.rating,
      this.comment,
      required this.createdAt});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final String patientId;
  @override
  final int rating;
  @override
  final String? comment;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Review(patientId: $patientId, rating: $rating, comment: $comment, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, patientId, rating, comment, createdAt);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final String patientId,
      required final int rating,
      final String? comment,
      required final DateTime createdAt}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  String get patientId;
  @override
  int get rating;
  @override
  String? get comment;
  @override
  DateTime get createdAt;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorListResponse _$DoctorListResponseFromJson(Map<String, dynamic> json) {
  return _DoctorListResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorListResponse {
  List<Doctor> get doctors => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get hasPrev => throw _privateConstructorUsedError;

  /// Serializes this DoctorListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorListResponseCopyWith<DoctorListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorListResponseCopyWith<$Res> {
  factory $DoctorListResponseCopyWith(
          DoctorListResponse value, $Res Function(DoctorListResponse) then) =
      _$DoctorListResponseCopyWithImpl<$Res, DoctorListResponse>;
  @useResult
  $Res call(
      {List<Doctor> doctors,
      int total,
      int page,
      int pages,
      bool hasNext,
      bool hasPrev});
}

/// @nodoc
class _$DoctorListResponseCopyWithImpl<$Res, $Val extends DoctorListResponse>
    implements $DoctorListResponseCopyWith<$Res> {
  _$DoctorListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? hasNext = null,
    Object? hasPrev = null,
  }) {
    return _then(_value.copyWith(
      doctors: null == doctors
          ? _value.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrev: null == hasPrev
          ? _value.hasPrev
          : hasPrev // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorListResponseImplCopyWith<$Res>
    implements $DoctorListResponseCopyWith<$Res> {
  factory _$$DoctorListResponseImplCopyWith(_$DoctorListResponseImpl value,
          $Res Function(_$DoctorListResponseImpl) then) =
      __$$DoctorListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Doctor> doctors,
      int total,
      int page,
      int pages,
      bool hasNext,
      bool hasPrev});
}

/// @nodoc
class __$$DoctorListResponseImplCopyWithImpl<$Res>
    extends _$DoctorListResponseCopyWithImpl<$Res, _$DoctorListResponseImpl>
    implements _$$DoctorListResponseImplCopyWith<$Res> {
  __$$DoctorListResponseImplCopyWithImpl(_$DoctorListResponseImpl _value,
      $Res Function(_$DoctorListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? hasNext = null,
    Object? hasPrev = null,
  }) {
    return _then(_$DoctorListResponseImpl(
      doctors: null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrev: null == hasPrev
          ? _value.hasPrev
          : hasPrev // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorListResponseImpl implements _DoctorListResponse {
  const _$DoctorListResponseImpl(
      {required final List<Doctor> doctors,
      required this.total,
      required this.page,
      required this.pages,
      required this.hasNext,
      required this.hasPrev})
      : _doctors = doctors;

  factory _$DoctorListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorListResponseImplFromJson(json);

  final List<Doctor> _doctors;
  @override
  List<Doctor> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;
  @override
  final bool hasNext;
  @override
  final bool hasPrev;

  @override
  String toString() {
    return 'DoctorListResponse(doctors: $doctors, total: $total, page: $page, pages: $pages, hasNext: $hasNext, hasPrev: $hasPrev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorListResponseImpl &&
            const DeepCollectionEquality().equals(other._doctors, _doctors) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrev, hasPrev) || other.hasPrev == hasPrev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_doctors),
      total,
      page,
      pages,
      hasNext,
      hasPrev);

  /// Create a copy of DoctorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorListResponseImplCopyWith<_$DoctorListResponseImpl> get copyWith =>
      __$$DoctorListResponseImplCopyWithImpl<_$DoctorListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorListResponseImplToJson(
      this,
    );
  }
}

abstract class _DoctorListResponse implements DoctorListResponse {
  const factory _DoctorListResponse(
      {required final List<Doctor> doctors,
      required final int total,
      required final int page,
      required final int pages,
      required final bool hasNext,
      required final bool hasPrev}) = _$DoctorListResponseImpl;

  factory _DoctorListResponse.fromJson(Map<String, dynamic> json) =
      _$DoctorListResponseImpl.fromJson;

  @override
  List<Doctor> get doctors;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  bool get hasNext;
  @override
  bool get hasPrev;

  /// Create a copy of DoctorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorListResponseImplCopyWith<_$DoctorListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorReviewsResponse _$DoctorReviewsResponseFromJson(
    Map<String, dynamic> json) {
  return _DoctorReviewsResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorReviewsResponse {
  List<Review> get reviews => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  int get totalReviews => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  /// Serializes this DoctorReviewsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorReviewsResponseCopyWith<DoctorReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorReviewsResponseCopyWith<$Res> {
  factory $DoctorReviewsResponseCopyWith(DoctorReviewsResponse value,
          $Res Function(DoctorReviewsResponse) then) =
      _$DoctorReviewsResponseCopyWithImpl<$Res, DoctorReviewsResponse>;
  @useResult
  $Res call(
      {List<Review> reviews,
      double averageRating,
      int totalReviews,
      int page,
      int pages});
}

/// @nodoc
class _$DoctorReviewsResponseCopyWithImpl<$Res,
        $Val extends DoctorReviewsResponse>
    implements $DoctorReviewsResponseCopyWith<$Res> {
  _$DoctorReviewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorReviewsResponseImplCopyWith<$Res>
    implements $DoctorReviewsResponseCopyWith<$Res> {
  factory _$$DoctorReviewsResponseImplCopyWith(
          _$DoctorReviewsResponseImpl value,
          $Res Function(_$DoctorReviewsResponseImpl) then) =
      __$$DoctorReviewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Review> reviews,
      double averageRating,
      int totalReviews,
      int page,
      int pages});
}

/// @nodoc
class __$$DoctorReviewsResponseImplCopyWithImpl<$Res>
    extends _$DoctorReviewsResponseCopyWithImpl<$Res,
        _$DoctorReviewsResponseImpl>
    implements _$$DoctorReviewsResponseImplCopyWith<$Res> {
  __$$DoctorReviewsResponseImplCopyWithImpl(_$DoctorReviewsResponseImpl _value,
      $Res Function(_$DoctorReviewsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_$DoctorReviewsResponseImpl(
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorReviewsResponseImpl implements _DoctorReviewsResponse {
  const _$DoctorReviewsResponseImpl(
      {required final List<Review> reviews,
      required this.averageRating,
      required this.totalReviews,
      required this.page,
      required this.pages})
      : _reviews = reviews;

  factory _$DoctorReviewsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorReviewsResponseImplFromJson(json);

  final List<Review> _reviews;
  @override
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final double averageRating;
  @override
  final int totalReviews;
  @override
  final int page;
  @override
  final int pages;

  @override
  String toString() {
    return 'DoctorReviewsResponse(reviews: $reviews, averageRating: $averageRating, totalReviews: $totalReviews, page: $page, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorReviewsResponseImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reviews),
      averageRating,
      totalReviews,
      page,
      pages);

  /// Create a copy of DoctorReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorReviewsResponseImplCopyWith<_$DoctorReviewsResponseImpl>
      get copyWith => __$$DoctorReviewsResponseImplCopyWithImpl<
          _$DoctorReviewsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorReviewsResponseImplToJson(
      this,
    );
  }
}

abstract class _DoctorReviewsResponse implements DoctorReviewsResponse {
  const factory _DoctorReviewsResponse(
      {required final List<Review> reviews,
      required final double averageRating,
      required final int totalReviews,
      required final int page,
      required final int pages}) = _$DoctorReviewsResponseImpl;

  factory _DoctorReviewsResponse.fromJson(Map<String, dynamic> json) =
      _$DoctorReviewsResponseImpl.fromJson;

  @override
  List<Review> get reviews;
  @override
  double get averageRating;
  @override
  int get totalReviews;
  @override
  int get page;
  @override
  int get pages;

  /// Create a copy of DoctorReviewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorReviewsResponseImplCopyWith<_$DoctorReviewsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddReviewRequest _$AddReviewRequestFromJson(Map<String, dynamic> json) {
  return _AddReviewRequest.fromJson(json);
}

/// @nodoc
mixin _$AddReviewRequest {
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this AddReviewRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddReviewRequestCopyWith<AddReviewRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewRequestCopyWith<$Res> {
  factory $AddReviewRequestCopyWith(
          AddReviewRequest value, $Res Function(AddReviewRequest) then) =
      _$AddReviewRequestCopyWithImpl<$Res, AddReviewRequest>;
  @useResult
  $Res call({int rating, String? comment});
}

/// @nodoc
class _$AddReviewRequestCopyWithImpl<$Res, $Val extends AddReviewRequest>
    implements $AddReviewRequestCopyWith<$Res> {
  _$AddReviewRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddReviewRequestImplCopyWith<$Res>
    implements $AddReviewRequestCopyWith<$Res> {
  factory _$$AddReviewRequestImplCopyWith(_$AddReviewRequestImpl value,
          $Res Function(_$AddReviewRequestImpl) then) =
      __$$AddReviewRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rating, String? comment});
}

/// @nodoc
class __$$AddReviewRequestImplCopyWithImpl<$Res>
    extends _$AddReviewRequestCopyWithImpl<$Res, _$AddReviewRequestImpl>
    implements _$$AddReviewRequestImplCopyWith<$Res> {
  __$$AddReviewRequestImplCopyWithImpl(_$AddReviewRequestImpl _value,
      $Res Function(_$AddReviewRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = freezed,
  }) {
    return _then(_$AddReviewRequestImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddReviewRequestImpl implements _AddReviewRequest {
  const _$AddReviewRequestImpl({required this.rating, this.comment});

  factory _$AddReviewRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddReviewRequestImplFromJson(json);

  @override
  final int rating;
  @override
  final String? comment;

  @override
  String toString() {
    return 'AddReviewRequest(rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReviewRequestImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, comment);

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReviewRequestImplCopyWith<_$AddReviewRequestImpl> get copyWith =>
      __$$AddReviewRequestImplCopyWithImpl<_$AddReviewRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddReviewRequestImplToJson(
      this,
    );
  }
}

abstract class _AddReviewRequest implements AddReviewRequest {
  const factory _AddReviewRequest(
      {required final int rating,
      final String? comment}) = _$AddReviewRequestImpl;

  factory _AddReviewRequest.fromJson(Map<String, dynamic> json) =
      _$AddReviewRequestImpl.fromJson;

  @override
  int get rating;
  @override
  String? get comment;

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReviewRequestImplCopyWith<_$AddReviewRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorApiResponse _$DoctorApiResponseFromJson(Map<String, dynamic> json) {
  return _DoctorApiResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorApiResponse {
  bool get success => throw _privateConstructorUsedError;
  Doctor get data => throw _privateConstructorUsedError;

  /// Serializes this DoctorApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorApiResponseCopyWith<DoctorApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorApiResponseCopyWith<$Res> {
  factory $DoctorApiResponseCopyWith(
          DoctorApiResponse value, $Res Function(DoctorApiResponse) then) =
      _$DoctorApiResponseCopyWithImpl<$Res, DoctorApiResponse>;
  @useResult
  $Res call({bool success, Doctor data});

  $DoctorCopyWith<$Res> get data;
}

/// @nodoc
class _$DoctorApiResponseCopyWithImpl<$Res, $Val extends DoctorApiResponse>
    implements $DoctorApiResponseCopyWith<$Res> {
  _$DoctorApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Doctor,
    ) as $Val);
  }

  /// Create a copy of DoctorApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res> get data {
    return $DoctorCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorApiResponseImplCopyWith<$Res>
    implements $DoctorApiResponseCopyWith<$Res> {
  factory _$$DoctorApiResponseImplCopyWith(_$DoctorApiResponseImpl value,
          $Res Function(_$DoctorApiResponseImpl) then) =
      __$$DoctorApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Doctor data});

  @override
  $DoctorCopyWith<$Res> get data;
}

/// @nodoc
class __$$DoctorApiResponseImplCopyWithImpl<$Res>
    extends _$DoctorApiResponseCopyWithImpl<$Res, _$DoctorApiResponseImpl>
    implements _$$DoctorApiResponseImplCopyWith<$Res> {
  __$$DoctorApiResponseImplCopyWithImpl(_$DoctorApiResponseImpl _value,
      $Res Function(_$DoctorApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$DoctorApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Doctor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorApiResponseImpl implements _DoctorApiResponse {
  const _$DoctorApiResponseImpl({required this.success, required this.data});

  factory _$DoctorApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Doctor data;

  @override
  String toString() {
    return 'DoctorApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DoctorApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorApiResponseImplCopyWith<_$DoctorApiResponseImpl> get copyWith =>
      __$$DoctorApiResponseImplCopyWithImpl<_$DoctorApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorApiResponseImplToJson(
      this,
    );
  }
}

abstract class _DoctorApiResponse implements DoctorApiResponse {
  const factory _DoctorApiResponse(
      {required final bool success,
      required final Doctor data}) = _$DoctorApiResponseImpl;

  factory _DoctorApiResponse.fromJson(Map<String, dynamic> json) =
      _$DoctorApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Doctor get data;

  /// Create a copy of DoctorApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorApiResponseImplCopyWith<_$DoctorApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorListApiResponse _$DoctorListApiResponseFromJson(
    Map<String, dynamic> json) {
  return _DoctorListApiResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorListApiResponse {
  bool get success => throw _privateConstructorUsedError;
  DoctorListResponse get data => throw _privateConstructorUsedError;

  /// Serializes this DoctorListApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorListApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorListApiResponseCopyWith<DoctorListApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorListApiResponseCopyWith<$Res> {
  factory $DoctorListApiResponseCopyWith(DoctorListApiResponse value,
          $Res Function(DoctorListApiResponse) then) =
      _$DoctorListApiResponseCopyWithImpl<$Res, DoctorListApiResponse>;
  @useResult
  $Res call({bool success, DoctorListResponse data});

  $DoctorListResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$DoctorListApiResponseCopyWithImpl<$Res,
        $Val extends DoctorListApiResponse>
    implements $DoctorListApiResponseCopyWith<$Res> {
  _$DoctorListApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorListApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DoctorListResponse,
    ) as $Val);
  }

  /// Create a copy of DoctorListApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorListResponseCopyWith<$Res> get data {
    return $DoctorListResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorListApiResponseImplCopyWith<$Res>
    implements $DoctorListApiResponseCopyWith<$Res> {
  factory _$$DoctorListApiResponseImplCopyWith(
          _$DoctorListApiResponseImpl value,
          $Res Function(_$DoctorListApiResponseImpl) then) =
      __$$DoctorListApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, DoctorListResponse data});

  @override
  $DoctorListResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$DoctorListApiResponseImplCopyWithImpl<$Res>
    extends _$DoctorListApiResponseCopyWithImpl<$Res,
        _$DoctorListApiResponseImpl>
    implements _$$DoctorListApiResponseImplCopyWith<$Res> {
  __$$DoctorListApiResponseImplCopyWithImpl(_$DoctorListApiResponseImpl _value,
      $Res Function(_$DoctorListApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorListApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$DoctorListApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DoctorListResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorListApiResponseImpl implements _DoctorListApiResponse {
  const _$DoctorListApiResponseImpl(
      {required this.success, required this.data});

  factory _$DoctorListApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorListApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final DoctorListResponse data;

  @override
  String toString() {
    return 'DoctorListApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorListApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DoctorListApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorListApiResponseImplCopyWith<_$DoctorListApiResponseImpl>
      get copyWith => __$$DoctorListApiResponseImplCopyWithImpl<
          _$DoctorListApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorListApiResponseImplToJson(
      this,
    );
  }
}

abstract class _DoctorListApiResponse implements DoctorListApiResponse {
  const factory _DoctorListApiResponse(
      {required final bool success,
      required final DoctorListResponse data}) = _$DoctorListApiResponseImpl;

  factory _DoctorListApiResponse.fromJson(Map<String, dynamic> json) =
      _$DoctorListApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  DoctorListResponse get data;

  /// Create a copy of DoctorListApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorListApiResponseImplCopyWith<_$DoctorListApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DoctorReviewsApiResponse _$DoctorReviewsApiResponseFromJson(
    Map<String, dynamic> json) {
  return _DoctorReviewsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorReviewsApiResponse {
  bool get success => throw _privateConstructorUsedError;
  DoctorReviewsResponse get data => throw _privateConstructorUsedError;

  /// Serializes this DoctorReviewsApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorReviewsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorReviewsApiResponseCopyWith<DoctorReviewsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorReviewsApiResponseCopyWith<$Res> {
  factory $DoctorReviewsApiResponseCopyWith(DoctorReviewsApiResponse value,
          $Res Function(DoctorReviewsApiResponse) then) =
      _$DoctorReviewsApiResponseCopyWithImpl<$Res, DoctorReviewsApiResponse>;
  @useResult
  $Res call({bool success, DoctorReviewsResponse data});

  $DoctorReviewsResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$DoctorReviewsApiResponseCopyWithImpl<$Res,
        $Val extends DoctorReviewsApiResponse>
    implements $DoctorReviewsApiResponseCopyWith<$Res> {
  _$DoctorReviewsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorReviewsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DoctorReviewsResponse,
    ) as $Val);
  }

  /// Create a copy of DoctorReviewsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorReviewsResponseCopyWith<$Res> get data {
    return $DoctorReviewsResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorReviewsApiResponseImplCopyWith<$Res>
    implements $DoctorReviewsApiResponseCopyWith<$Res> {
  factory _$$DoctorReviewsApiResponseImplCopyWith(
          _$DoctorReviewsApiResponseImpl value,
          $Res Function(_$DoctorReviewsApiResponseImpl) then) =
      __$$DoctorReviewsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, DoctorReviewsResponse data});

  @override
  $DoctorReviewsResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$DoctorReviewsApiResponseImplCopyWithImpl<$Res>
    extends _$DoctorReviewsApiResponseCopyWithImpl<$Res,
        _$DoctorReviewsApiResponseImpl>
    implements _$$DoctorReviewsApiResponseImplCopyWith<$Res> {
  __$$DoctorReviewsApiResponseImplCopyWithImpl(
      _$DoctorReviewsApiResponseImpl _value,
      $Res Function(_$DoctorReviewsApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorReviewsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$DoctorReviewsApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DoctorReviewsResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorReviewsApiResponseImpl implements _DoctorReviewsApiResponse {
  const _$DoctorReviewsApiResponseImpl(
      {required this.success, required this.data});

  factory _$DoctorReviewsApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorReviewsApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final DoctorReviewsResponse data;

  @override
  String toString() {
    return 'DoctorReviewsApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorReviewsApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DoctorReviewsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorReviewsApiResponseImplCopyWith<_$DoctorReviewsApiResponseImpl>
      get copyWith => __$$DoctorReviewsApiResponseImplCopyWithImpl<
          _$DoctorReviewsApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorReviewsApiResponseImplToJson(
      this,
    );
  }
}

abstract class _DoctorReviewsApiResponse implements DoctorReviewsApiResponse {
  const factory _DoctorReviewsApiResponse(
          {required final bool success,
          required final DoctorReviewsResponse data}) =
      _$DoctorReviewsApiResponseImpl;

  factory _DoctorReviewsApiResponse.fromJson(Map<String, dynamic> json) =
      _$DoctorReviewsApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  DoctorReviewsResponse get data;

  /// Create a copy of DoctorReviewsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorReviewsApiResponseImplCopyWith<_$DoctorReviewsApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpecialtiesApiResponse _$SpecialtiesApiResponseFromJson(
    Map<String, dynamic> json) {
  return _SpecialtiesApiResponse.fromJson(json);
}

/// @nodoc
mixin _$SpecialtiesApiResponse {
  bool get success => throw _privateConstructorUsedError;
  List<String> get data => throw _privateConstructorUsedError;

  /// Serializes this SpecialtiesApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecialtiesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialtiesApiResponseCopyWith<SpecialtiesApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialtiesApiResponseCopyWith<$Res> {
  factory $SpecialtiesApiResponseCopyWith(SpecialtiesApiResponse value,
          $Res Function(SpecialtiesApiResponse) then) =
      _$SpecialtiesApiResponseCopyWithImpl<$Res, SpecialtiesApiResponse>;
  @useResult
  $Res call({bool success, List<String> data});
}

/// @nodoc
class _$SpecialtiesApiResponseCopyWithImpl<$Res,
        $Val extends SpecialtiesApiResponse>
    implements $SpecialtiesApiResponseCopyWith<$Res> {
  _$SpecialtiesApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecialtiesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialtiesApiResponseImplCopyWith<$Res>
    implements $SpecialtiesApiResponseCopyWith<$Res> {
  factory _$$SpecialtiesApiResponseImplCopyWith(
          _$SpecialtiesApiResponseImpl value,
          $Res Function(_$SpecialtiesApiResponseImpl) then) =
      __$$SpecialtiesApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<String> data});
}

/// @nodoc
class __$$SpecialtiesApiResponseImplCopyWithImpl<$Res>
    extends _$SpecialtiesApiResponseCopyWithImpl<$Res,
        _$SpecialtiesApiResponseImpl>
    implements _$$SpecialtiesApiResponseImplCopyWith<$Res> {
  __$$SpecialtiesApiResponseImplCopyWithImpl(
      _$SpecialtiesApiResponseImpl _value,
      $Res Function(_$SpecialtiesApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecialtiesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$SpecialtiesApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialtiesApiResponseImpl implements _SpecialtiesApiResponse {
  const _$SpecialtiesApiResponseImpl(
      {required this.success, required final List<String> data})
      : _data = data;

  factory _$SpecialtiesApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialtiesApiResponseImplFromJson(json);

  @override
  final bool success;
  final List<String> _data;
  @override
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SpecialtiesApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtiesApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SpecialtiesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtiesApiResponseImplCopyWith<_$SpecialtiesApiResponseImpl>
      get copyWith => __$$SpecialtiesApiResponseImplCopyWithImpl<
          _$SpecialtiesApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialtiesApiResponseImplToJson(
      this,
    );
  }
}

abstract class _SpecialtiesApiResponse implements SpecialtiesApiResponse {
  const factory _SpecialtiesApiResponse(
      {required final bool success,
      required final List<String> data}) = _$SpecialtiesApiResponseImpl;

  factory _SpecialtiesApiResponse.fromJson(Map<String, dynamic> json) =
      _$SpecialtiesApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<String> get data;

  /// Create a copy of SpecialtiesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialtiesApiResponseImplCopyWith<_$SpecialtiesApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddReviewResponse _$AddReviewResponseFromJson(Map<String, dynamic> json) {
  return _AddReviewResponse.fromJson(json);
}

/// @nodoc
mixin _$AddReviewResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this AddReviewResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddReviewResponseCopyWith<AddReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewResponseCopyWith<$Res> {
  factory $AddReviewResponseCopyWith(
          AddReviewResponse value, $Res Function(AddReviewResponse) then) =
      _$AddReviewResponseCopyWithImpl<$Res, AddReviewResponse>;
  @useResult
  $Res call({bool success, String message, Map<String, dynamic> data});
}

/// @nodoc
class _$AddReviewResponseCopyWithImpl<$Res, $Val extends AddReviewResponse>
    implements $AddReviewResponseCopyWith<$Res> {
  _$AddReviewResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddReviewResponseImplCopyWith<$Res>
    implements $AddReviewResponseCopyWith<$Res> {
  factory _$$AddReviewResponseImplCopyWith(_$AddReviewResponseImpl value,
          $Res Function(_$AddReviewResponseImpl) then) =
      __$$AddReviewResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, Map<String, dynamic> data});
}

/// @nodoc
class __$$AddReviewResponseImplCopyWithImpl<$Res>
    extends _$AddReviewResponseCopyWithImpl<$Res, _$AddReviewResponseImpl>
    implements _$$AddReviewResponseImplCopyWith<$Res> {
  __$$AddReviewResponseImplCopyWithImpl(_$AddReviewResponseImpl _value,
      $Res Function(_$AddReviewResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AddReviewResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddReviewResponseImpl implements _AddReviewResponse {
  const _$AddReviewResponseImpl(
      {required this.success,
      required this.message,
      required final Map<String, dynamic> data})
      : _data = data;

  factory _$AddReviewResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddReviewResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'AddReviewResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReviewResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of AddReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReviewResponseImplCopyWith<_$AddReviewResponseImpl> get copyWith =>
      __$$AddReviewResponseImplCopyWithImpl<_$AddReviewResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddReviewResponseImplToJson(
      this,
    );
  }
}

abstract class _AddReviewResponse implements AddReviewResponse {
  const factory _AddReviewResponse(
      {required final bool success,
      required final String message,
      required final Map<String, dynamic> data}) = _$AddReviewResponseImpl;

  factory _AddReviewResponse.fromJson(Map<String, dynamic> json) =
      _$AddReviewResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  Map<String, dynamic> get data;

  /// Create a copy of AddReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReviewResponseImplCopyWith<_$AddReviewResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
