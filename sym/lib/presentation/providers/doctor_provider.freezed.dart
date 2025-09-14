// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Doctor> get doctors => throw _privateConstructorUsedError;
  List<String> get specialties => throw _privateConstructorUsedError;
  List<Doctor> get popularDoctors => throw _privateConstructorUsedError;
  Doctor? get selectedDoctor => throw _privateConstructorUsedError;
  DoctorReviewsResponse? get doctorReviews =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  String? get selectedSpecialty => throw _privateConstructorUsedError;

  /// Create a copy of DoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorStateCopyWith<DoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res, DoctorState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Doctor> doctors,
      List<String> specialties,
      List<Doctor> popularDoctors,
      Doctor? selectedDoctor,
      DoctorReviewsResponse? doctorReviews,
      String? error,
      bool hasMore,
      int currentPage,
      String? searchQuery,
      String? selectedSpecialty});

  $DoctorCopyWith<$Res>? get selectedDoctor;
  $DoctorReviewsResponseCopyWith<$Res>? get doctorReviews;
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res, $Val extends DoctorState>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? doctors = null,
    Object? specialties = null,
    Object? popularDoctors = null,
    Object? selectedDoctor = freezed,
    Object? doctorReviews = freezed,
    Object? error = freezed,
    Object? hasMore = null,
    Object? currentPage = null,
    Object? searchQuery = freezed,
    Object? selectedSpecialty = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      doctors: null == doctors
          ? _value.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      specialties: null == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      popularDoctors: null == popularDoctors
          ? _value.popularDoctors
          : popularDoctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      selectedDoctor: freezed == selectedDoctor
          ? _value.selectedDoctor
          : selectedDoctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      doctorReviews: freezed == doctorReviews
          ? _value.doctorReviews
          : doctorReviews // ignore: cast_nullable_to_non_nullable
              as DoctorReviewsResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedSpecialty: freezed == selectedSpecialty
          ? _value.selectedSpecialty
          : selectedSpecialty // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of DoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res>? get selectedDoctor {
    if (_value.selectedDoctor == null) {
      return null;
    }

    return $DoctorCopyWith<$Res>(_value.selectedDoctor!, (value) {
      return _then(_value.copyWith(selectedDoctor: value) as $Val);
    });
  }

  /// Create a copy of DoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorReviewsResponseCopyWith<$Res>? get doctorReviews {
    if (_value.doctorReviews == null) {
      return null;
    }

    return $DoctorReviewsResponseCopyWith<$Res>(_value.doctorReviews!, (value) {
      return _then(_value.copyWith(doctorReviews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorStateImplCopyWith<$Res>
    implements $DoctorStateCopyWith<$Res> {
  factory _$$DoctorStateImplCopyWith(
          _$DoctorStateImpl value, $Res Function(_$DoctorStateImpl) then) =
      __$$DoctorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Doctor> doctors,
      List<String> specialties,
      List<Doctor> popularDoctors,
      Doctor? selectedDoctor,
      DoctorReviewsResponse? doctorReviews,
      String? error,
      bool hasMore,
      int currentPage,
      String? searchQuery,
      String? selectedSpecialty});

  @override
  $DoctorCopyWith<$Res>? get selectedDoctor;
  @override
  $DoctorReviewsResponseCopyWith<$Res>? get doctorReviews;
}

/// @nodoc
class __$$DoctorStateImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$DoctorStateImpl>
    implements _$$DoctorStateImplCopyWith<$Res> {
  __$$DoctorStateImplCopyWithImpl(
      _$DoctorStateImpl _value, $Res Function(_$DoctorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? doctors = null,
    Object? specialties = null,
    Object? popularDoctors = null,
    Object? selectedDoctor = freezed,
    Object? doctorReviews = freezed,
    Object? error = freezed,
    Object? hasMore = null,
    Object? currentPage = null,
    Object? searchQuery = freezed,
    Object? selectedSpecialty = freezed,
  }) {
    return _then(_$DoctorStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      doctors: null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      specialties: null == specialties
          ? _value._specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      popularDoctors: null == popularDoctors
          ? _value._popularDoctors
          : popularDoctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      selectedDoctor: freezed == selectedDoctor
          ? _value.selectedDoctor
          : selectedDoctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      doctorReviews: freezed == doctorReviews
          ? _value.doctorReviews
          : doctorReviews // ignore: cast_nullable_to_non_nullable
              as DoctorReviewsResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedSpecialty: freezed == selectedSpecialty
          ? _value.selectedSpecialty
          : selectedSpecialty // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DoctorStateImpl implements _DoctorState {
  const _$DoctorStateImpl(
      {this.isLoading = false,
      final List<Doctor> doctors = const [],
      final List<String> specialties = const [],
      final List<Doctor> popularDoctors = const [],
      this.selectedDoctor,
      this.doctorReviews,
      this.error,
      this.hasMore = false,
      this.currentPage = 1,
      this.searchQuery,
      this.selectedSpecialty})
      : _doctors = doctors,
        _specialties = specialties,
        _popularDoctors = popularDoctors;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Doctor> _doctors;
  @override
  @JsonKey()
  List<Doctor> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  final List<String> _specialties;
  @override
  @JsonKey()
  List<String> get specialties {
    if (_specialties is EqualUnmodifiableListView) return _specialties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialties);
  }

  final List<Doctor> _popularDoctors;
  @override
  @JsonKey()
  List<Doctor> get popularDoctors {
    if (_popularDoctors is EqualUnmodifiableListView) return _popularDoctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularDoctors);
  }

  @override
  final Doctor? selectedDoctor;
  @override
  final DoctorReviewsResponse? doctorReviews;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final String? searchQuery;
  @override
  final String? selectedSpecialty;

  @override
  String toString() {
    return 'DoctorState(isLoading: $isLoading, doctors: $doctors, specialties: $specialties, popularDoctors: $popularDoctors, selectedDoctor: $selectedDoctor, doctorReviews: $doctorReviews, error: $error, hasMore: $hasMore, currentPage: $currentPage, searchQuery: $searchQuery, selectedSpecialty: $selectedSpecialty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors) &&
            const DeepCollectionEquality()
                .equals(other._specialties, _specialties) &&
            const DeepCollectionEquality()
                .equals(other._popularDoctors, _popularDoctors) &&
            (identical(other.selectedDoctor, selectedDoctor) ||
                other.selectedDoctor == selectedDoctor) &&
            (identical(other.doctorReviews, doctorReviews) ||
                other.doctorReviews == doctorReviews) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.selectedSpecialty, selectedSpecialty) ||
                other.selectedSpecialty == selectedSpecialty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_doctors),
      const DeepCollectionEquality().hash(_specialties),
      const DeepCollectionEquality().hash(_popularDoctors),
      selectedDoctor,
      doctorReviews,
      error,
      hasMore,
      currentPage,
      searchQuery,
      selectedSpecialty);

  /// Create a copy of DoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorStateImplCopyWith<_$DoctorStateImpl> get copyWith =>
      __$$DoctorStateImplCopyWithImpl<_$DoctorStateImpl>(this, _$identity);
}

abstract class _DoctorState implements DoctorState {
  const factory _DoctorState(
      {final bool isLoading,
      final List<Doctor> doctors,
      final List<String> specialties,
      final List<Doctor> popularDoctors,
      final Doctor? selectedDoctor,
      final DoctorReviewsResponse? doctorReviews,
      final String? error,
      final bool hasMore,
      final int currentPage,
      final String? searchQuery,
      final String? selectedSpecialty}) = _$DoctorStateImpl;

  @override
  bool get isLoading;
  @override
  List<Doctor> get doctors;
  @override
  List<String> get specialties;
  @override
  List<Doctor> get popularDoctors;
  @override
  Doctor? get selectedDoctor;
  @override
  DoctorReviewsResponse? get doctorReviews;
  @override
  String? get error;
  @override
  bool get hasMore;
  @override
  int get currentPage;
  @override
  String? get searchQuery;
  @override
  String? get selectedSpecialty;

  /// Create a copy of DoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorStateImplCopyWith<_$DoctorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
