// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_scan_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrescriptionScanResult _$PrescriptionScanResultFromJson(
    Map<String, dynamic> json) {
  return _PrescriptionScanResult.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionScanResult {
  String get medication => throw _privateConstructorUsedError;
  String get dosage => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String? get scannedPrescriptionId => throw _privateConstructorUsedError;

  /// Serializes this PrescriptionScanResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrescriptionScanResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrescriptionScanResultCopyWith<PrescriptionScanResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionScanResultCopyWith<$Res> {
  factory $PrescriptionScanResultCopyWith(PrescriptionScanResult value,
          $Res Function(PrescriptionScanResult) then) =
      _$PrescriptionScanResultCopyWithImpl<$Res, PrescriptionScanResult>;
  @useResult
  $Res call(
      {String medication,
      String dosage,
      String instructions,
      double confidence,
      String? scannedPrescriptionId});
}

/// @nodoc
class _$PrescriptionScanResultCopyWithImpl<$Res,
        $Val extends PrescriptionScanResult>
    implements $PrescriptionScanResultCopyWith<$Res> {
  _$PrescriptionScanResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrescriptionScanResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medication = null,
    Object? dosage = null,
    Object? instructions = null,
    Object? confidence = null,
    Object? scannedPrescriptionId = freezed,
  }) {
    return _then(_value.copyWith(
      medication: null == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      scannedPrescriptionId: freezed == scannedPrescriptionId
          ? _value.scannedPrescriptionId
          : scannedPrescriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrescriptionScanResultImplCopyWith<$Res>
    implements $PrescriptionScanResultCopyWith<$Res> {
  factory _$$PrescriptionScanResultImplCopyWith(
          _$PrescriptionScanResultImpl value,
          $Res Function(_$PrescriptionScanResultImpl) then) =
      __$$PrescriptionScanResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String medication,
      String dosage,
      String instructions,
      double confidence,
      String? scannedPrescriptionId});
}

/// @nodoc
class __$$PrescriptionScanResultImplCopyWithImpl<$Res>
    extends _$PrescriptionScanResultCopyWithImpl<$Res,
        _$PrescriptionScanResultImpl>
    implements _$$PrescriptionScanResultImplCopyWith<$Res> {
  __$$PrescriptionScanResultImplCopyWithImpl(
      _$PrescriptionScanResultImpl _value,
      $Res Function(_$PrescriptionScanResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrescriptionScanResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medication = null,
    Object? dosage = null,
    Object? instructions = null,
    Object? confidence = null,
    Object? scannedPrescriptionId = freezed,
  }) {
    return _then(_$PrescriptionScanResultImpl(
      medication: null == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      scannedPrescriptionId: freezed == scannedPrescriptionId
          ? _value.scannedPrescriptionId
          : scannedPrescriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionScanResultImpl implements _PrescriptionScanResult {
  const _$PrescriptionScanResultImpl(
      {required this.medication,
      required this.dosage,
      required this.instructions,
      this.confidence = 0.0,
      this.scannedPrescriptionId});

  factory _$PrescriptionScanResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionScanResultImplFromJson(json);

  @override
  final String medication;
  @override
  final String dosage;
  @override
  final String instructions;
  @override
  @JsonKey()
  final double confidence;
  @override
  final String? scannedPrescriptionId;

  @override
  String toString() {
    return 'PrescriptionScanResult(medication: $medication, dosage: $dosage, instructions: $instructions, confidence: $confidence, scannedPrescriptionId: $scannedPrescriptionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionScanResultImpl &&
            (identical(other.medication, medication) ||
                other.medication == medication) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.scannedPrescriptionId, scannedPrescriptionId) ||
                other.scannedPrescriptionId == scannedPrescriptionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, medication, dosage, instructions,
      confidence, scannedPrescriptionId);

  /// Create a copy of PrescriptionScanResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionScanResultImplCopyWith<_$PrescriptionScanResultImpl>
      get copyWith => __$$PrescriptionScanResultImplCopyWithImpl<
          _$PrescriptionScanResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionScanResultImplToJson(
      this,
    );
  }
}

abstract class _PrescriptionScanResult implements PrescriptionScanResult {
  const factory _PrescriptionScanResult(
      {required final String medication,
      required final String dosage,
      required final String instructions,
      final double confidence,
      final String? scannedPrescriptionId}) = _$PrescriptionScanResultImpl;

  factory _PrescriptionScanResult.fromJson(Map<String, dynamic> json) =
      _$PrescriptionScanResultImpl.fromJson;

  @override
  String get medication;
  @override
  String get dosage;
  @override
  String get instructions;
  @override
  double get confidence;
  @override
  String? get scannedPrescriptionId;

  /// Create a copy of PrescriptionScanResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionScanResultImplCopyWith<_$PrescriptionScanResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PrescriptionScanResponse _$PrescriptionScanResponseFromJson(
    Map<String, dynamic> json) {
  return _PrescriptionScanResponse.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionScanResponse {
  bool get success => throw _privateConstructorUsedError;
  PrescriptionScanResult? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this PrescriptionScanResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrescriptionScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrescriptionScanResponseCopyWith<PrescriptionScanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionScanResponseCopyWith<$Res> {
  factory $PrescriptionScanResponseCopyWith(PrescriptionScanResponse value,
          $Res Function(PrescriptionScanResponse) then) =
      _$PrescriptionScanResponseCopyWithImpl<$Res, PrescriptionScanResponse>;
  @useResult
  $Res call(
      {bool success,
      PrescriptionScanResult? data,
      String? error,
      String? message});

  $PrescriptionScanResultCopyWith<$Res>? get data;
}

/// @nodoc
class _$PrescriptionScanResponseCopyWithImpl<$Res,
        $Val extends PrescriptionScanResponse>
    implements $PrescriptionScanResponseCopyWith<$Res> {
  _$PrescriptionScanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrescriptionScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrescriptionScanResult?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PrescriptionScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrescriptionScanResultCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PrescriptionScanResultCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrescriptionScanResponseImplCopyWith<$Res>
    implements $PrescriptionScanResponseCopyWith<$Res> {
  factory _$$PrescriptionScanResponseImplCopyWith(
          _$PrescriptionScanResponseImpl value,
          $Res Function(_$PrescriptionScanResponseImpl) then) =
      __$$PrescriptionScanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      PrescriptionScanResult? data,
      String? error,
      String? message});

  @override
  $PrescriptionScanResultCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PrescriptionScanResponseImplCopyWithImpl<$Res>
    extends _$PrescriptionScanResponseCopyWithImpl<$Res,
        _$PrescriptionScanResponseImpl>
    implements _$$PrescriptionScanResponseImplCopyWith<$Res> {
  __$$PrescriptionScanResponseImplCopyWithImpl(
      _$PrescriptionScanResponseImpl _value,
      $Res Function(_$PrescriptionScanResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrescriptionScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PrescriptionScanResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrescriptionScanResult?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionScanResponseImpl implements _PrescriptionScanResponse {
  const _$PrescriptionScanResponseImpl(
      {required this.success, this.data, this.error, this.message});

  factory _$PrescriptionScanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionScanResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final PrescriptionScanResult? data;
  @override
  final String? error;
  @override
  final String? message;

  @override
  String toString() {
    return 'PrescriptionScanResponse(success: $success, data: $data, error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionScanResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, error, message);

  /// Create a copy of PrescriptionScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionScanResponseImplCopyWith<_$PrescriptionScanResponseImpl>
      get copyWith => __$$PrescriptionScanResponseImplCopyWithImpl<
          _$PrescriptionScanResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionScanResponseImplToJson(
      this,
    );
  }
}

abstract class _PrescriptionScanResponse implements PrescriptionScanResponse {
  const factory _PrescriptionScanResponse(
      {required final bool success,
      final PrescriptionScanResult? data,
      final String? error,
      final String? message}) = _$PrescriptionScanResponseImpl;

  factory _PrescriptionScanResponse.fromJson(Map<String, dynamic> json) =
      _$PrescriptionScanResponseImpl.fromJson;

  @override
  bool get success;
  @override
  PrescriptionScanResult? get data;
  @override
  String? get error;
  @override
  String? get message;

  /// Create a copy of PrescriptionScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionScanResponseImplCopyWith<_$PrescriptionScanResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
