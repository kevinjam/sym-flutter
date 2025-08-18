// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicationResponse _$MedicationResponseFromJson(Map<String, dynamic> json) {
  return _MedicationResponse.fromJson(json);
}

/// @nodoc
mixin _$MedicationResponse {
  Medication get medication => throw _privateConstructorUsedError;

  /// Serializes this MedicationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationResponseCopyWith<MedicationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationResponseCopyWith<$Res> {
  factory $MedicationResponseCopyWith(
          MedicationResponse value, $Res Function(MedicationResponse) then) =
      _$MedicationResponseCopyWithImpl<$Res, MedicationResponse>;
  @useResult
  $Res call({Medication medication});

  $MedicationCopyWith<$Res> get medication;
}

/// @nodoc
class _$MedicationResponseCopyWithImpl<$Res, $Val extends MedicationResponse>
    implements $MedicationResponseCopyWith<$Res> {
  _$MedicationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medication = null,
  }) {
    return _then(_value.copyWith(
      medication: null == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as Medication,
    ) as $Val);
  }

  /// Create a copy of MedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationCopyWith<$Res> get medication {
    return $MedicationCopyWith<$Res>(_value.medication, (value) {
      return _then(_value.copyWith(medication: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicationResponseImplCopyWith<$Res>
    implements $MedicationResponseCopyWith<$Res> {
  factory _$$MedicationResponseImplCopyWith(_$MedicationResponseImpl value,
          $Res Function(_$MedicationResponseImpl) then) =
      __$$MedicationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Medication medication});

  @override
  $MedicationCopyWith<$Res> get medication;
}

/// @nodoc
class __$$MedicationResponseImplCopyWithImpl<$Res>
    extends _$MedicationResponseCopyWithImpl<$Res, _$MedicationResponseImpl>
    implements _$$MedicationResponseImplCopyWith<$Res> {
  __$$MedicationResponseImplCopyWithImpl(_$MedicationResponseImpl _value,
      $Res Function(_$MedicationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medication = null,
  }) {
    return _then(_$MedicationResponseImpl(
      medication: null == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as Medication,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationResponseImpl implements _MedicationResponse {
  const _$MedicationResponseImpl({required this.medication});

  factory _$MedicationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationResponseImplFromJson(json);

  @override
  final Medication medication;

  @override
  String toString() {
    return 'MedicationResponse(medication: $medication)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationResponseImpl &&
            (identical(other.medication, medication) ||
                other.medication == medication));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, medication);

  /// Create a copy of MedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationResponseImplCopyWith<_$MedicationResponseImpl> get copyWith =>
      __$$MedicationResponseImplCopyWithImpl<_$MedicationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationResponseImplToJson(
      this,
    );
  }
}

abstract class _MedicationResponse implements MedicationResponse {
  const factory _MedicationResponse({required final Medication medication}) =
      _$MedicationResponseImpl;

  factory _MedicationResponse.fromJson(Map<String, dynamic> json) =
      _$MedicationResponseImpl.fromJson;

  @override
  Medication get medication;

  /// Create a copy of MedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationResponseImplCopyWith<_$MedicationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationsResponse _$MedicationsResponseFromJson(Map<String, dynamic> json) {
  return _MedicationsResponse.fromJson(json);
}

/// @nodoc
mixin _$MedicationsResponse {
  List<Medication> get medications => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this MedicationsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationsResponseCopyWith<MedicationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationsResponseCopyWith<$Res> {
  factory $MedicationsResponseCopyWith(
          MedicationsResponse value, $Res Function(MedicationsResponse) then) =
      _$MedicationsResponseCopyWithImpl<$Res, MedicationsResponse>;
  @useResult
  $Res call(
      {List<Medication> medications,
      int total,
      int page,
      int limit,
      int totalPages});
}

/// @nodoc
class _$MedicationsResponseCopyWithImpl<$Res, $Val extends MedicationsResponse>
    implements $MedicationsResponseCopyWith<$Res> {
  _$MedicationsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medications = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      medications: null == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<Medication>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationsResponseImplCopyWith<$Res>
    implements $MedicationsResponseCopyWith<$Res> {
  factory _$$MedicationsResponseImplCopyWith(_$MedicationsResponseImpl value,
          $Res Function(_$MedicationsResponseImpl) then) =
      __$$MedicationsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Medication> medications,
      int total,
      int page,
      int limit,
      int totalPages});
}

/// @nodoc
class __$$MedicationsResponseImplCopyWithImpl<$Res>
    extends _$MedicationsResponseCopyWithImpl<$Res, _$MedicationsResponseImpl>
    implements _$$MedicationsResponseImplCopyWith<$Res> {
  __$$MedicationsResponseImplCopyWithImpl(_$MedicationsResponseImpl _value,
      $Res Function(_$MedicationsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medications = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(_$MedicationsResponseImpl(
      medications: null == medications
          ? _value._medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<Medication>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationsResponseImpl implements _MedicationsResponse {
  const _$MedicationsResponseImpl(
      {required final List<Medication> medications,
      required this.total,
      required this.page,
      required this.limit,
      required this.totalPages})
      : _medications = medications;

  factory _$MedicationsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationsResponseImplFromJson(json);

  final List<Medication> _medications;
  @override
  List<Medication> get medications {
    if (_medications is EqualUnmodifiableListView) return _medications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medications);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int limit;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'MedicationsResponse(medications: $medications, total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._medications, _medications) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_medications),
      total,
      page,
      limit,
      totalPages);

  /// Create a copy of MedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationsResponseImplCopyWith<_$MedicationsResponseImpl> get copyWith =>
      __$$MedicationsResponseImplCopyWithImpl<_$MedicationsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationsResponseImplToJson(
      this,
    );
  }
}

abstract class _MedicationsResponse implements MedicationsResponse {
  const factory _MedicationsResponse(
      {required final List<Medication> medications,
      required final int total,
      required final int page,
      required final int limit,
      required final int totalPages}) = _$MedicationsResponseImpl;

  factory _MedicationsResponse.fromJson(Map<String, dynamic> json) =
      _$MedicationsResponseImpl.fromJson;

  @override
  List<Medication> get medications;
  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;
  @override
  int get totalPages;

  /// Create a copy of MedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationsResponseImplCopyWith<_$MedicationsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationLogsResponse _$MedicationLogsResponseFromJson(
    Map<String, dynamic> json) {
  return _MedicationLogsResponse.fromJson(json);
}

/// @nodoc
mixin _$MedicationLogsResponse {
  List<MedicationLog> get logs => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this MedicationLogsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationLogsResponseCopyWith<MedicationLogsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationLogsResponseCopyWith<$Res> {
  factory $MedicationLogsResponseCopyWith(MedicationLogsResponse value,
          $Res Function(MedicationLogsResponse) then) =
      _$MedicationLogsResponseCopyWithImpl<$Res, MedicationLogsResponse>;
  @useResult
  $Res call({List<MedicationLog> logs, int total});
}

/// @nodoc
class _$MedicationLogsResponseCopyWithImpl<$Res,
        $Val extends MedicationLogsResponse>
    implements $MedicationLogsResponseCopyWith<$Res> {
  _$MedicationLogsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logs = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      logs: null == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<MedicationLog>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationLogsResponseImplCopyWith<$Res>
    implements $MedicationLogsResponseCopyWith<$Res> {
  factory _$$MedicationLogsResponseImplCopyWith(
          _$MedicationLogsResponseImpl value,
          $Res Function(_$MedicationLogsResponseImpl) then) =
      __$$MedicationLogsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MedicationLog> logs, int total});
}

/// @nodoc
class __$$MedicationLogsResponseImplCopyWithImpl<$Res>
    extends _$MedicationLogsResponseCopyWithImpl<$Res,
        _$MedicationLogsResponseImpl>
    implements _$$MedicationLogsResponseImplCopyWith<$Res> {
  __$$MedicationLogsResponseImplCopyWithImpl(
      _$MedicationLogsResponseImpl _value,
      $Res Function(_$MedicationLogsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logs = null,
    Object? total = null,
  }) {
    return _then(_$MedicationLogsResponseImpl(
      logs: null == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<MedicationLog>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationLogsResponseImpl implements _MedicationLogsResponse {
  const _$MedicationLogsResponseImpl(
      {required final List<MedicationLog> logs, required this.total})
      : _logs = logs;

  factory _$MedicationLogsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationLogsResponseImplFromJson(json);

  final List<MedicationLog> _logs;
  @override
  List<MedicationLog> get logs {
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logs);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'MedicationLogsResponse(logs: $logs, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationLogsResponseImpl &&
            const DeepCollectionEquality().equals(other._logs, _logs) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_logs), total);

  /// Create a copy of MedicationLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationLogsResponseImplCopyWith<_$MedicationLogsResponseImpl>
      get copyWith => __$$MedicationLogsResponseImplCopyWithImpl<
          _$MedicationLogsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationLogsResponseImplToJson(
      this,
    );
  }
}

abstract class _MedicationLogsResponse implements MedicationLogsResponse {
  const factory _MedicationLogsResponse(
      {required final List<MedicationLog> logs,
      required final int total}) = _$MedicationLogsResponseImpl;

  factory _MedicationLogsResponse.fromJson(Map<String, dynamic> json) =
      _$MedicationLogsResponseImpl.fromJson;

  @override
  List<MedicationLog> get logs;
  @override
  int get total;

  /// Create a copy of MedicationLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationLogsResponseImplCopyWith<_$MedicationLogsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DosageFormsResponse _$DosageFormsResponseFromJson(Map<String, dynamic> json) {
  return _DosageFormsResponse.fromJson(json);
}

/// @nodoc
mixin _$DosageFormsResponse {
  List<String> get dosageForms => throw _privateConstructorUsedError;

  /// Serializes this DosageFormsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DosageFormsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DosageFormsResponseCopyWith<DosageFormsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DosageFormsResponseCopyWith<$Res> {
  factory $DosageFormsResponseCopyWith(
          DosageFormsResponse value, $Res Function(DosageFormsResponse) then) =
      _$DosageFormsResponseCopyWithImpl<$Res, DosageFormsResponse>;
  @useResult
  $Res call({List<String> dosageForms});
}

/// @nodoc
class _$DosageFormsResponseCopyWithImpl<$Res, $Val extends DosageFormsResponse>
    implements $DosageFormsResponseCopyWith<$Res> {
  _$DosageFormsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DosageFormsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dosageForms = null,
  }) {
    return _then(_value.copyWith(
      dosageForms: null == dosageForms
          ? _value.dosageForms
          : dosageForms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DosageFormsResponseImplCopyWith<$Res>
    implements $DosageFormsResponseCopyWith<$Res> {
  factory _$$DosageFormsResponseImplCopyWith(_$DosageFormsResponseImpl value,
          $Res Function(_$DosageFormsResponseImpl) then) =
      __$$DosageFormsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> dosageForms});
}

/// @nodoc
class __$$DosageFormsResponseImplCopyWithImpl<$Res>
    extends _$DosageFormsResponseCopyWithImpl<$Res, _$DosageFormsResponseImpl>
    implements _$$DosageFormsResponseImplCopyWith<$Res> {
  __$$DosageFormsResponseImplCopyWithImpl(_$DosageFormsResponseImpl _value,
      $Res Function(_$DosageFormsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DosageFormsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dosageForms = null,
  }) {
    return _then(_$DosageFormsResponseImpl(
      dosageForms: null == dosageForms
          ? _value._dosageForms
          : dosageForms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DosageFormsResponseImpl implements _DosageFormsResponse {
  const _$DosageFormsResponseImpl({required final List<String> dosageForms})
      : _dosageForms = dosageForms;

  factory _$DosageFormsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DosageFormsResponseImplFromJson(json);

  final List<String> _dosageForms;
  @override
  List<String> get dosageForms {
    if (_dosageForms is EqualUnmodifiableListView) return _dosageForms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dosageForms);
  }

  @override
  String toString() {
    return 'DosageFormsResponse(dosageForms: $dosageForms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DosageFormsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._dosageForms, _dosageForms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dosageForms));

  /// Create a copy of DosageFormsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DosageFormsResponseImplCopyWith<_$DosageFormsResponseImpl> get copyWith =>
      __$$DosageFormsResponseImplCopyWithImpl<_$DosageFormsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DosageFormsResponseImplToJson(
      this,
    );
  }
}

abstract class _DosageFormsResponse implements DosageFormsResponse {
  const factory _DosageFormsResponse(
      {required final List<String> dosageForms}) = _$DosageFormsResponseImpl;

  factory _DosageFormsResponse.fromJson(Map<String, dynamic> json) =
      _$DosageFormsResponseImpl.fromJson;

  @override
  List<String> get dosageForms;

  /// Create a copy of DosageFormsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DosageFormsResponseImplCopyWith<_$DosageFormsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) {
  return _SuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$SuccessResponse {
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this SuccessResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse value, $Res Function(SuccessResponse) then) =
      _$SuccessResponseCopyWithImpl<$Res, SuccessResponse>;
  @useResult
  $Res call({String message, bool success});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res, $Val extends SuccessResponse>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessResponseImplCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(_$SuccessResponseImpl value,
          $Res Function(_$SuccessResponseImpl) then) =
      __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool success});
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$SuccessResponseCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
      _$SuccessResponseImpl _value, $Res Function(_$SuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$SuccessResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessResponseImpl implements _SuccessResponse {
  const _$SuccessResponseImpl({required this.message, required this.success});

  factory _$SuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'SuccessResponse(message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success);

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      __$$SuccessResponseImplCopyWithImpl<_$SuccessResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _SuccessResponse implements SuccessResponse {
  const factory _SuccessResponse(
      {required final String message,
      required final bool success}) = _$SuccessResponseImpl;

  factory _SuccessResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get success;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SymptomResponse _$SymptomResponseFromJson(Map<String, dynamic> json) {
  return _SymptomResponse.fromJson(json);
}

/// @nodoc
mixin _$SymptomResponse {
  Symptom get symptom => throw _privateConstructorUsedError;

  /// Serializes this SymptomResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomResponseCopyWith<SymptomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomResponseCopyWith<$Res> {
  factory $SymptomResponseCopyWith(
          SymptomResponse value, $Res Function(SymptomResponse) then) =
      _$SymptomResponseCopyWithImpl<$Res, SymptomResponse>;
  @useResult
  $Res call({Symptom symptom});

  $SymptomCopyWith<$Res> get symptom;
}

/// @nodoc
class _$SymptomResponseCopyWithImpl<$Res, $Val extends SymptomResponse>
    implements $SymptomResponseCopyWith<$Res> {
  _$SymptomResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptom = null,
  }) {
    return _then(_value.copyWith(
      symptom: null == symptom
          ? _value.symptom
          : symptom // ignore: cast_nullable_to_non_nullable
              as Symptom,
    ) as $Val);
  }

  /// Create a copy of SymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SymptomCopyWith<$Res> get symptom {
    return $SymptomCopyWith<$Res>(_value.symptom, (value) {
      return _then(_value.copyWith(symptom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SymptomResponseImplCopyWith<$Res>
    implements $SymptomResponseCopyWith<$Res> {
  factory _$$SymptomResponseImplCopyWith(_$SymptomResponseImpl value,
          $Res Function(_$SymptomResponseImpl) then) =
      __$$SymptomResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Symptom symptom});

  @override
  $SymptomCopyWith<$Res> get symptom;
}

/// @nodoc
class __$$SymptomResponseImplCopyWithImpl<$Res>
    extends _$SymptomResponseCopyWithImpl<$Res, _$SymptomResponseImpl>
    implements _$$SymptomResponseImplCopyWith<$Res> {
  __$$SymptomResponseImplCopyWithImpl(
      _$SymptomResponseImpl _value, $Res Function(_$SymptomResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptom = null,
  }) {
    return _then(_$SymptomResponseImpl(
      symptom: null == symptom
          ? _value.symptom
          : symptom // ignore: cast_nullable_to_non_nullable
              as Symptom,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomResponseImpl implements _SymptomResponse {
  const _$SymptomResponseImpl({required this.symptom});

  factory _$SymptomResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomResponseImplFromJson(json);

  @override
  final Symptom symptom;

  @override
  String toString() {
    return 'SymptomResponse(symptom: $symptom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomResponseImpl &&
            (identical(other.symptom, symptom) || other.symptom == symptom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symptom);

  /// Create a copy of SymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomResponseImplCopyWith<_$SymptomResponseImpl> get copyWith =>
      __$$SymptomResponseImplCopyWithImpl<_$SymptomResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomResponseImplToJson(
      this,
    );
  }
}

abstract class _SymptomResponse implements SymptomResponse {
  const factory _SymptomResponse({required final Symptom symptom}) =
      _$SymptomResponseImpl;

  factory _SymptomResponse.fromJson(Map<String, dynamic> json) =
      _$SymptomResponseImpl.fromJson;

  @override
  Symptom get symptom;

  /// Create a copy of SymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomResponseImplCopyWith<_$SymptomResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SymptomsResponse _$SymptomsResponseFromJson(Map<String, dynamic> json) {
  return _SymptomsResponse.fromJson(json);
}

/// @nodoc
mixin _$SymptomsResponse {
  List<Symptom> get symptoms => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this SymptomsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomsResponseCopyWith<SymptomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomsResponseCopyWith<$Res> {
  factory $SymptomsResponseCopyWith(
          SymptomsResponse value, $Res Function(SymptomsResponse) then) =
      _$SymptomsResponseCopyWithImpl<$Res, SymptomsResponse>;
  @useResult
  $Res call(
      {List<Symptom> symptoms, int total, int page, int limit, int totalPages});
}

/// @nodoc
class _$SymptomsResponseCopyWithImpl<$Res, $Val extends SymptomsResponse>
    implements $SymptomsResponseCopyWith<$Res> {
  _$SymptomsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomsResponseImplCopyWith<$Res>
    implements $SymptomsResponseCopyWith<$Res> {
  factory _$$SymptomsResponseImplCopyWith(_$SymptomsResponseImpl value,
          $Res Function(_$SymptomsResponseImpl) then) =
      __$$SymptomsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Symptom> symptoms, int total, int page, int limit, int totalPages});
}

/// @nodoc
class __$$SymptomsResponseImplCopyWithImpl<$Res>
    extends _$SymptomsResponseCopyWithImpl<$Res, _$SymptomsResponseImpl>
    implements _$$SymptomsResponseImplCopyWith<$Res> {
  __$$SymptomsResponseImplCopyWithImpl(_$SymptomsResponseImpl _value,
      $Res Function(_$SymptomsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(_$SymptomsResponseImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomsResponseImpl implements _SymptomsResponse {
  const _$SymptomsResponseImpl(
      {required final List<Symptom> symptoms,
      required this.total,
      required this.page,
      required this.limit,
      required this.totalPages})
      : _symptoms = symptoms;

  factory _$SymptomsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomsResponseImplFromJson(json);

  final List<Symptom> _symptoms;
  @override
  List<Symptom> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int limit;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'SymptomsResponse(symptoms: $symptoms, total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomsResponseImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_symptoms),
      total,
      page,
      limit,
      totalPages);

  /// Create a copy of SymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomsResponseImplCopyWith<_$SymptomsResponseImpl> get copyWith =>
      __$$SymptomsResponseImplCopyWithImpl<_$SymptomsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomsResponseImplToJson(
      this,
    );
  }
}

abstract class _SymptomsResponse implements SymptomsResponse {
  const factory _SymptomsResponse(
      {required final List<Symptom> symptoms,
      required final int total,
      required final int page,
      required final int limit,
      required final int totalPages}) = _$SymptomsResponseImpl;

  factory _SymptomsResponse.fromJson(Map<String, dynamic> json) =
      _$SymptomsResponseImpl.fromJson;

  @override
  List<Symptom> get symptoms;
  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;
  @override
  int get totalPages;

  /// Create a copy of SymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomsResponseImplCopyWith<_$SymptomsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SymptomLogsResponse _$SymptomLogsResponseFromJson(Map<String, dynamic> json) {
  return _SymptomLogsResponse.fromJson(json);
}

/// @nodoc
mixin _$SymptomLogsResponse {
  List<SymptomLog> get logs => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this SymptomLogsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomLogsResponseCopyWith<SymptomLogsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomLogsResponseCopyWith<$Res> {
  factory $SymptomLogsResponseCopyWith(
          SymptomLogsResponse value, $Res Function(SymptomLogsResponse) then) =
      _$SymptomLogsResponseCopyWithImpl<$Res, SymptomLogsResponse>;
  @useResult
  $Res call({List<SymptomLog> logs, int total});
}

/// @nodoc
class _$SymptomLogsResponseCopyWithImpl<$Res, $Val extends SymptomLogsResponse>
    implements $SymptomLogsResponseCopyWith<$Res> {
  _$SymptomLogsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logs = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      logs: null == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<SymptomLog>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomLogsResponseImplCopyWith<$Res>
    implements $SymptomLogsResponseCopyWith<$Res> {
  factory _$$SymptomLogsResponseImplCopyWith(_$SymptomLogsResponseImpl value,
          $Res Function(_$SymptomLogsResponseImpl) then) =
      __$$SymptomLogsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SymptomLog> logs, int total});
}

/// @nodoc
class __$$SymptomLogsResponseImplCopyWithImpl<$Res>
    extends _$SymptomLogsResponseCopyWithImpl<$Res, _$SymptomLogsResponseImpl>
    implements _$$SymptomLogsResponseImplCopyWith<$Res> {
  __$$SymptomLogsResponseImplCopyWithImpl(_$SymptomLogsResponseImpl _value,
      $Res Function(_$SymptomLogsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymptomLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logs = null,
    Object? total = null,
  }) {
    return _then(_$SymptomLogsResponseImpl(
      logs: null == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<SymptomLog>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomLogsResponseImpl implements _SymptomLogsResponse {
  const _$SymptomLogsResponseImpl(
      {required final List<SymptomLog> logs, required this.total})
      : _logs = logs;

  factory _$SymptomLogsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomLogsResponseImplFromJson(json);

  final List<SymptomLog> _logs;
  @override
  List<SymptomLog> get logs {
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logs);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'SymptomLogsResponse(logs: $logs, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomLogsResponseImpl &&
            const DeepCollectionEquality().equals(other._logs, _logs) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_logs), total);

  /// Create a copy of SymptomLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomLogsResponseImplCopyWith<_$SymptomLogsResponseImpl> get copyWith =>
      __$$SymptomLogsResponseImplCopyWithImpl<_$SymptomLogsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomLogsResponseImplToJson(
      this,
    );
  }
}

abstract class _SymptomLogsResponse implements SymptomLogsResponse {
  const factory _SymptomLogsResponse(
      {required final List<SymptomLog> logs,
      required final int total}) = _$SymptomLogsResponseImpl;

  factory _SymptomLogsResponse.fromJson(Map<String, dynamic> json) =
      _$SymptomLogsResponseImpl.fromJson;

  @override
  List<SymptomLog> get logs;
  @override
  int get total;

  /// Create a copy of SymptomLogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomLogsResponseImplCopyWith<_$SymptomLogsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SymptomCatalogResponse _$SymptomCatalogResponseFromJson(
    Map<String, dynamic> json) {
  return _SymptomCatalogResponse.fromJson(json);
}

/// @nodoc
mixin _$SymptomCatalogResponse {
  List<String> get symptoms => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this SymptomCatalogResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomCatalogResponseCopyWith<SymptomCatalogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomCatalogResponseCopyWith<$Res> {
  factory $SymptomCatalogResponseCopyWith(SymptomCatalogResponse value,
          $Res Function(SymptomCatalogResponse) then) =
      _$SymptomCatalogResponseCopyWithImpl<$Res, SymptomCatalogResponse>;
  @useResult
  $Res call({List<String> symptoms, int total});
}

/// @nodoc
class _$SymptomCatalogResponseCopyWithImpl<$Res,
        $Val extends SymptomCatalogResponse>
    implements $SymptomCatalogResponseCopyWith<$Res> {
  _$SymptomCatalogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomCatalogResponseImplCopyWith<$Res>
    implements $SymptomCatalogResponseCopyWith<$Res> {
  factory _$$SymptomCatalogResponseImplCopyWith(
          _$SymptomCatalogResponseImpl value,
          $Res Function(_$SymptomCatalogResponseImpl) then) =
      __$$SymptomCatalogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> symptoms, int total});
}

/// @nodoc
class __$$SymptomCatalogResponseImplCopyWithImpl<$Res>
    extends _$SymptomCatalogResponseCopyWithImpl<$Res,
        _$SymptomCatalogResponseImpl>
    implements _$$SymptomCatalogResponseImplCopyWith<$Res> {
  __$$SymptomCatalogResponseImplCopyWithImpl(
      _$SymptomCatalogResponseImpl _value,
      $Res Function(_$SymptomCatalogResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymptomCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? total = null,
  }) {
    return _then(_$SymptomCatalogResponseImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomCatalogResponseImpl implements _SymptomCatalogResponse {
  const _$SymptomCatalogResponseImpl(
      {required final List<String> symptoms, required this.total})
      : _symptoms = symptoms;

  factory _$SymptomCatalogResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomCatalogResponseImplFromJson(json);

  final List<String> _symptoms;
  @override
  List<String> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'SymptomCatalogResponse(symptoms: $symptoms, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomCatalogResponseImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_symptoms), total);

  /// Create a copy of SymptomCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomCatalogResponseImplCopyWith<_$SymptomCatalogResponseImpl>
      get copyWith => __$$SymptomCatalogResponseImplCopyWithImpl<
          _$SymptomCatalogResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomCatalogResponseImplToJson(
      this,
    );
  }
}

abstract class _SymptomCatalogResponse implements SymptomCatalogResponse {
  const factory _SymptomCatalogResponse(
      {required final List<String> symptoms,
      required final int total}) = _$SymptomCatalogResponseImpl;

  factory _SymptomCatalogResponse.fromJson(Map<String, dynamic> json) =
      _$SymptomCatalogResponseImpl.fromJson;

  @override
  List<String> get symptoms;
  @override
  int get total;

  /// Create a copy of SymptomCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomCatalogResponseImplCopyWith<_$SymptomCatalogResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SymptomCategoriesResponse _$SymptomCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _SymptomCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$SymptomCategoriesResponse {
  List<String> get categories => throw _privateConstructorUsedError;

  /// Serializes this SymptomCategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomCategoriesResponseCopyWith<SymptomCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomCategoriesResponseCopyWith<$Res> {
  factory $SymptomCategoriesResponseCopyWith(SymptomCategoriesResponse value,
          $Res Function(SymptomCategoriesResponse) then) =
      _$SymptomCategoriesResponseCopyWithImpl<$Res, SymptomCategoriesResponse>;
  @useResult
  $Res call({List<String> categories});
}

/// @nodoc
class _$SymptomCategoriesResponseCopyWithImpl<$Res,
        $Val extends SymptomCategoriesResponse>
    implements $SymptomCategoriesResponseCopyWith<$Res> {
  _$SymptomCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomCategoriesResponseImplCopyWith<$Res>
    implements $SymptomCategoriesResponseCopyWith<$Res> {
  factory _$$SymptomCategoriesResponseImplCopyWith(
          _$SymptomCategoriesResponseImpl value,
          $Res Function(_$SymptomCategoriesResponseImpl) then) =
      __$$SymptomCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> categories});
}

/// @nodoc
class __$$SymptomCategoriesResponseImplCopyWithImpl<$Res>
    extends _$SymptomCategoriesResponseCopyWithImpl<$Res,
        _$SymptomCategoriesResponseImpl>
    implements _$$SymptomCategoriesResponseImplCopyWith<$Res> {
  __$$SymptomCategoriesResponseImplCopyWithImpl(
      _$SymptomCategoriesResponseImpl _value,
      $Res Function(_$SymptomCategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymptomCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$SymptomCategoriesResponseImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomCategoriesResponseImpl implements _SymptomCategoriesResponse {
  const _$SymptomCategoriesResponseImpl(
      {required final List<String> categories})
      : _categories = categories;

  factory _$SymptomCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomCategoriesResponseImplFromJson(json);

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'SymptomCategoriesResponse(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomCategoriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of SymptomCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomCategoriesResponseImplCopyWith<_$SymptomCategoriesResponseImpl>
      get copyWith => __$$SymptomCategoriesResponseImplCopyWithImpl<
          _$SymptomCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _SymptomCategoriesResponse implements SymptomCategoriesResponse {
  const factory _SymptomCategoriesResponse(
          {required final List<String> categories}) =
      _$SymptomCategoriesResponseImpl;

  factory _SymptomCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$SymptomCategoriesResponseImpl.fromJson;

  @override
  List<String> get categories;

  /// Create a copy of SymptomCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomCategoriesResponseImplCopyWith<_$SymptomCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) {
  return _CategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoriesResponse {
  List<String> get categories => throw _privateConstructorUsedError;

  /// Serializes this CategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesResponseCopyWith<CategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesResponseCopyWith<$Res> {
  factory $CategoriesResponseCopyWith(
          CategoriesResponse value, $Res Function(CategoriesResponse) then) =
      _$CategoriesResponseCopyWithImpl<$Res, CategoriesResponse>;
  @useResult
  $Res call({List<String> categories});
}

/// @nodoc
class _$CategoriesResponseCopyWithImpl<$Res, $Val extends CategoriesResponse>
    implements $CategoriesResponseCopyWith<$Res> {
  _$CategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesResponseImplCopyWith<$Res>
    implements $CategoriesResponseCopyWith<$Res> {
  factory _$$CategoriesResponseImplCopyWith(_$CategoriesResponseImpl value,
          $Res Function(_$CategoriesResponseImpl) then) =
      __$$CategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> categories});
}

/// @nodoc
class __$$CategoriesResponseImplCopyWithImpl<$Res>
    extends _$CategoriesResponseCopyWithImpl<$Res, _$CategoriesResponseImpl>
    implements _$$CategoriesResponseImplCopyWith<$Res> {
  __$$CategoriesResponseImplCopyWithImpl(_$CategoriesResponseImpl _value,
      $Res Function(_$CategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesResponseImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesResponseImpl implements _CategoriesResponse {
  const _$CategoriesResponseImpl({required final List<String> categories})
      : _categories = categories;

  factory _$CategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesResponseImplFromJson(json);

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesResponse(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesResponseImplCopyWith<_$CategoriesResponseImpl> get copyWith =>
      __$$CategoriesResponseImplCopyWithImpl<_$CategoriesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoriesResponse implements CategoriesResponse {
  const factory _CategoriesResponse({required final List<String> categories}) =
      _$CategoriesResponseImpl;

  factory _CategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$CategoriesResponseImpl.fromJson;

  @override
  List<String> get categories;

  /// Create a copy of CategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesResponseImplCopyWith<_$CategoriesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
