// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanned_prescription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScannedPrescription _$ScannedPrescriptionFromJson(Map<String, dynamic> json) {
  return _ScannedPrescription.fromJson(json);
}

/// @nodoc
mixin _$ScannedPrescription {
  String get id => throw _privateConstructorUsedError;
  String get medication => throw _privateConstructorUsedError;
  String get dosage => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get scannedAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get isConvertedToMedication => throw _privateConstructorUsedError;
  String? get convertedMedicationId => throw _privateConstructorUsedError;
  DateTime? get convertedAt => throw _privateConstructorUsedError;

  /// Serializes this ScannedPrescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScannedPrescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScannedPrescriptionCopyWith<ScannedPrescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannedPrescriptionCopyWith<$Res> {
  factory $ScannedPrescriptionCopyWith(
          ScannedPrescription value, $Res Function(ScannedPrescription) then) =
      _$ScannedPrescriptionCopyWithImpl<$Res, ScannedPrescription>;
  @useResult
  $Res call(
      {String id,
      String medication,
      String dosage,
      String instructions,
      double confidence,
      DateTime scannedAt,
      String status,
      bool isConvertedToMedication,
      String? convertedMedicationId,
      DateTime? convertedAt});
}

/// @nodoc
class _$ScannedPrescriptionCopyWithImpl<$Res, $Val extends ScannedPrescription>
    implements $ScannedPrescriptionCopyWith<$Res> {
  _$ScannedPrescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScannedPrescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medication = null,
    Object? dosage = null,
    Object? instructions = null,
    Object? confidence = null,
    Object? scannedAt = null,
    Object? status = null,
    Object? isConvertedToMedication = null,
    Object? convertedMedicationId = freezed,
    Object? convertedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      scannedAt: null == scannedAt
          ? _value.scannedAt
          : scannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isConvertedToMedication: null == isConvertedToMedication
          ? _value.isConvertedToMedication
          : isConvertedToMedication // ignore: cast_nullable_to_non_nullable
              as bool,
      convertedMedicationId: freezed == convertedMedicationId
          ? _value.convertedMedicationId
          : convertedMedicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedAt: freezed == convertedAt
          ? _value.convertedAt
          : convertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScannedPrescriptionImplCopyWith<$Res>
    implements $ScannedPrescriptionCopyWith<$Res> {
  factory _$$ScannedPrescriptionImplCopyWith(_$ScannedPrescriptionImpl value,
          $Res Function(_$ScannedPrescriptionImpl) then) =
      __$$ScannedPrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String medication,
      String dosage,
      String instructions,
      double confidence,
      DateTime scannedAt,
      String status,
      bool isConvertedToMedication,
      String? convertedMedicationId,
      DateTime? convertedAt});
}

/// @nodoc
class __$$ScannedPrescriptionImplCopyWithImpl<$Res>
    extends _$ScannedPrescriptionCopyWithImpl<$Res, _$ScannedPrescriptionImpl>
    implements _$$ScannedPrescriptionImplCopyWith<$Res> {
  __$$ScannedPrescriptionImplCopyWithImpl(_$ScannedPrescriptionImpl _value,
      $Res Function(_$ScannedPrescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScannedPrescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medication = null,
    Object? dosage = null,
    Object? instructions = null,
    Object? confidence = null,
    Object? scannedAt = null,
    Object? status = null,
    Object? isConvertedToMedication = null,
    Object? convertedMedicationId = freezed,
    Object? convertedAt = freezed,
  }) {
    return _then(_$ScannedPrescriptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      scannedAt: null == scannedAt
          ? _value.scannedAt
          : scannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isConvertedToMedication: null == isConvertedToMedication
          ? _value.isConvertedToMedication
          : isConvertedToMedication // ignore: cast_nullable_to_non_nullable
              as bool,
      convertedMedicationId: freezed == convertedMedicationId
          ? _value.convertedMedicationId
          : convertedMedicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertedAt: freezed == convertedAt
          ? _value.convertedAt
          : convertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScannedPrescriptionImpl implements _ScannedPrescription {
  const _$ScannedPrescriptionImpl(
      {required this.id,
      required this.medication,
      required this.dosage,
      required this.instructions,
      required this.confidence,
      required this.scannedAt,
      required this.status,
      required this.isConvertedToMedication,
      this.convertedMedicationId,
      this.convertedAt});

  factory _$ScannedPrescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScannedPrescriptionImplFromJson(json);

  @override
  final String id;
  @override
  final String medication;
  @override
  final String dosage;
  @override
  final String instructions;
  @override
  final double confidence;
  @override
  final DateTime scannedAt;
  @override
  final String status;
  @override
  final bool isConvertedToMedication;
  @override
  final String? convertedMedicationId;
  @override
  final DateTime? convertedAt;

  @override
  String toString() {
    return 'ScannedPrescription(id: $id, medication: $medication, dosage: $dosage, instructions: $instructions, confidence: $confidence, scannedAt: $scannedAt, status: $status, isConvertedToMedication: $isConvertedToMedication, convertedMedicationId: $convertedMedicationId, convertedAt: $convertedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannedPrescriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.medication, medication) ||
                other.medication == medication) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.scannedAt, scannedAt) ||
                other.scannedAt == scannedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.isConvertedToMedication, isConvertedToMedication) ||
                other.isConvertedToMedication == isConvertedToMedication) &&
            (identical(other.convertedMedicationId, convertedMedicationId) ||
                other.convertedMedicationId == convertedMedicationId) &&
            (identical(other.convertedAt, convertedAt) ||
                other.convertedAt == convertedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      medication,
      dosage,
      instructions,
      confidence,
      scannedAt,
      status,
      isConvertedToMedication,
      convertedMedicationId,
      convertedAt);

  /// Create a copy of ScannedPrescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannedPrescriptionImplCopyWith<_$ScannedPrescriptionImpl> get copyWith =>
      __$$ScannedPrescriptionImplCopyWithImpl<_$ScannedPrescriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScannedPrescriptionImplToJson(
      this,
    );
  }
}

abstract class _ScannedPrescription implements ScannedPrescription {
  const factory _ScannedPrescription(
      {required final String id,
      required final String medication,
      required final String dosage,
      required final String instructions,
      required final double confidence,
      required final DateTime scannedAt,
      required final String status,
      required final bool isConvertedToMedication,
      final String? convertedMedicationId,
      final DateTime? convertedAt}) = _$ScannedPrescriptionImpl;

  factory _ScannedPrescription.fromJson(Map<String, dynamic> json) =
      _$ScannedPrescriptionImpl.fromJson;

  @override
  String get id;
  @override
  String get medication;
  @override
  String get dosage;
  @override
  String get instructions;
  @override
  double get confidence;
  @override
  DateTime get scannedAt;
  @override
  String get status;
  @override
  bool get isConvertedToMedication;
  @override
  String? get convertedMedicationId;
  @override
  DateTime? get convertedAt;

  /// Create a copy of ScannedPrescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScannedPrescriptionImplCopyWith<_$ScannedPrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScannedPrescriptionResponse _$ScannedPrescriptionResponseFromJson(
    Map<String, dynamic> json) {
  return _ScannedPrescriptionResponse.fromJson(json);
}

/// @nodoc
mixin _$ScannedPrescriptionResponse {
  bool get success => throw _privateConstructorUsedError;
  List<ScannedPrescription>? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ScannedPrescriptionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScannedPrescriptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScannedPrescriptionResponseCopyWith<ScannedPrescriptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannedPrescriptionResponseCopyWith<$Res> {
  factory $ScannedPrescriptionResponseCopyWith(
          ScannedPrescriptionResponse value,
          $Res Function(ScannedPrescriptionResponse) then) =
      _$ScannedPrescriptionResponseCopyWithImpl<$Res,
          ScannedPrescriptionResponse>;
  @useResult
  $Res call(
      {bool success,
      List<ScannedPrescription>? data,
      String? error,
      String? message});
}

/// @nodoc
class _$ScannedPrescriptionResponseCopyWithImpl<$Res,
        $Val extends ScannedPrescriptionResponse>
    implements $ScannedPrescriptionResponseCopyWith<$Res> {
  _$ScannedPrescriptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScannedPrescriptionResponse
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
              as List<ScannedPrescription>?,
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
}

/// @nodoc
abstract class _$$ScannedPrescriptionResponseImplCopyWith<$Res>
    implements $ScannedPrescriptionResponseCopyWith<$Res> {
  factory _$$ScannedPrescriptionResponseImplCopyWith(
          _$ScannedPrescriptionResponseImpl value,
          $Res Function(_$ScannedPrescriptionResponseImpl) then) =
      __$$ScannedPrescriptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      List<ScannedPrescription>? data,
      String? error,
      String? message});
}

/// @nodoc
class __$$ScannedPrescriptionResponseImplCopyWithImpl<$Res>
    extends _$ScannedPrescriptionResponseCopyWithImpl<$Res,
        _$ScannedPrescriptionResponseImpl>
    implements _$$ScannedPrescriptionResponseImplCopyWith<$Res> {
  __$$ScannedPrescriptionResponseImplCopyWithImpl(
      _$ScannedPrescriptionResponseImpl _value,
      $Res Function(_$ScannedPrescriptionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScannedPrescriptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ScannedPrescriptionResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ScannedPrescription>?,
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
class _$ScannedPrescriptionResponseImpl
    implements _ScannedPrescriptionResponse {
  const _$ScannedPrescriptionResponseImpl(
      {required this.success,
      final List<ScannedPrescription>? data,
      this.error,
      this.message})
      : _data = data;

  factory _$ScannedPrescriptionResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScannedPrescriptionResponseImplFromJson(json);

  @override
  final bool success;
  final List<ScannedPrescription>? _data;
  @override
  List<ScannedPrescription>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  final String? message;

  @override
  String toString() {
    return 'ScannedPrescriptionResponse(success: $success, data: $data, error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannedPrescriptionResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success,
      const DeepCollectionEquality().hash(_data), error, message);

  /// Create a copy of ScannedPrescriptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannedPrescriptionResponseImplCopyWith<_$ScannedPrescriptionResponseImpl>
      get copyWith => __$$ScannedPrescriptionResponseImplCopyWithImpl<
          _$ScannedPrescriptionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScannedPrescriptionResponseImplToJson(
      this,
    );
  }
}

abstract class _ScannedPrescriptionResponse
    implements ScannedPrescriptionResponse {
  const factory _ScannedPrescriptionResponse(
      {required final bool success,
      final List<ScannedPrescription>? data,
      final String? error,
      final String? message}) = _$ScannedPrescriptionResponseImpl;

  factory _ScannedPrescriptionResponse.fromJson(Map<String, dynamic> json) =
      _$ScannedPrescriptionResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<ScannedPrescription>? get data;
  @override
  String? get error;
  @override
  String? get message;

  /// Create a copy of ScannedPrescriptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScannedPrescriptionResponseImplCopyWith<_$ScannedPrescriptionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConvertToMedicationRequest _$ConvertToMedicationRequestFromJson(
    Map<String, dynamic> json) {
  return _ConvertToMedicationRequest.fromJson(json);
}

/// @nodoc
mixin _$ConvertToMedicationRequest {
  List<String>? get scheduleTimes => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this ConvertToMedicationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConvertToMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConvertToMedicationRequestCopyWith<ConvertToMedicationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertToMedicationRequestCopyWith<$Res> {
  factory $ConvertToMedicationRequestCopyWith(ConvertToMedicationRequest value,
          $Res Function(ConvertToMedicationRequest) then) =
      _$ConvertToMedicationRequestCopyWithImpl<$Res,
          ConvertToMedicationRequest>;
  @useResult
  $Res call(
      {List<String>? scheduleTimes,
      DateTime? startDate,
      DateTime? endDate,
      String? notes});
}

/// @nodoc
class _$ConvertToMedicationRequestCopyWithImpl<$Res,
        $Val extends ConvertToMedicationRequest>
    implements $ConvertToMedicationRequestCopyWith<$Res> {
  _$ConvertToMedicationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConvertToMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleTimes = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleTimes: freezed == scheduleTimes
          ? _value.scheduleTimes
          : scheduleTimes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConvertToMedicationRequestImplCopyWith<$Res>
    implements $ConvertToMedicationRequestCopyWith<$Res> {
  factory _$$ConvertToMedicationRequestImplCopyWith(
          _$ConvertToMedicationRequestImpl value,
          $Res Function(_$ConvertToMedicationRequestImpl) then) =
      __$$ConvertToMedicationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? scheduleTimes,
      DateTime? startDate,
      DateTime? endDate,
      String? notes});
}

/// @nodoc
class __$$ConvertToMedicationRequestImplCopyWithImpl<$Res>
    extends _$ConvertToMedicationRequestCopyWithImpl<$Res,
        _$ConvertToMedicationRequestImpl>
    implements _$$ConvertToMedicationRequestImplCopyWith<$Res> {
  __$$ConvertToMedicationRequestImplCopyWithImpl(
      _$ConvertToMedicationRequestImpl _value,
      $Res Function(_$ConvertToMedicationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConvertToMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleTimes = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$ConvertToMedicationRequestImpl(
      scheduleTimes: freezed == scheduleTimes
          ? _value._scheduleTimes
          : scheduleTimes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConvertToMedicationRequestImpl implements _ConvertToMedicationRequest {
  const _$ConvertToMedicationRequestImpl(
      {final List<String>? scheduleTimes,
      this.startDate,
      this.endDate,
      this.notes})
      : _scheduleTimes = scheduleTimes;

  factory _$ConvertToMedicationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConvertToMedicationRequestImplFromJson(json);

  final List<String>? _scheduleTimes;
  @override
  List<String>? get scheduleTimes {
    final value = _scheduleTimes;
    if (value == null) return null;
    if (_scheduleTimes is EqualUnmodifiableListView) return _scheduleTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? notes;

  @override
  String toString() {
    return 'ConvertToMedicationRequest(scheduleTimes: $scheduleTimes, startDate: $startDate, endDate: $endDate, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertToMedicationRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._scheduleTimes, _scheduleTimes) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_scheduleTimes),
      startDate,
      endDate,
      notes);

  /// Create a copy of ConvertToMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertToMedicationRequestImplCopyWith<_$ConvertToMedicationRequestImpl>
      get copyWith => __$$ConvertToMedicationRequestImplCopyWithImpl<
          _$ConvertToMedicationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvertToMedicationRequestImplToJson(
      this,
    );
  }
}

abstract class _ConvertToMedicationRequest
    implements ConvertToMedicationRequest {
  const factory _ConvertToMedicationRequest(
      {final List<String>? scheduleTimes,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? notes}) = _$ConvertToMedicationRequestImpl;

  factory _ConvertToMedicationRequest.fromJson(Map<String, dynamic> json) =
      _$ConvertToMedicationRequestImpl.fromJson;

  @override
  List<String>? get scheduleTimes;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get notes;

  /// Create a copy of ConvertToMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConvertToMedicationRequestImplCopyWith<_$ConvertToMedicationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConvertToMedicationResponse _$ConvertToMedicationResponseFromJson(
    Map<String, dynamic> json) {
  return _ConvertToMedicationResponse.fromJson(json);
}

/// @nodoc
mixin _$ConvertToMedicationResponse {
  bool get success => throw _privateConstructorUsedError;
  dynamic get medication => throw _privateConstructorUsedError;
  ScannedPrescription? get scannedPrescription =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this ConvertToMedicationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConvertToMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConvertToMedicationResponseCopyWith<ConvertToMedicationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertToMedicationResponseCopyWith<$Res> {
  factory $ConvertToMedicationResponseCopyWith(
          ConvertToMedicationResponse value,
          $Res Function(ConvertToMedicationResponse) then) =
      _$ConvertToMedicationResponseCopyWithImpl<$Res,
          ConvertToMedicationResponse>;
  @useResult
  $Res call(
      {bool success,
      dynamic medication,
      ScannedPrescription? scannedPrescription,
      String? error});

  $ScannedPrescriptionCopyWith<$Res>? get scannedPrescription;
}

/// @nodoc
class _$ConvertToMedicationResponseCopyWithImpl<$Res,
        $Val extends ConvertToMedicationResponse>
    implements $ConvertToMedicationResponseCopyWith<$Res> {
  _$ConvertToMedicationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConvertToMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? medication = freezed,
    Object? scannedPrescription = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      medication: freezed == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scannedPrescription: freezed == scannedPrescription
          ? _value.scannedPrescription
          : scannedPrescription // ignore: cast_nullable_to_non_nullable
              as ScannedPrescription?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ConvertToMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScannedPrescriptionCopyWith<$Res>? get scannedPrescription {
    if (_value.scannedPrescription == null) {
      return null;
    }

    return $ScannedPrescriptionCopyWith<$Res>(_value.scannedPrescription!,
        (value) {
      return _then(_value.copyWith(scannedPrescription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConvertToMedicationResponseImplCopyWith<$Res>
    implements $ConvertToMedicationResponseCopyWith<$Res> {
  factory _$$ConvertToMedicationResponseImplCopyWith(
          _$ConvertToMedicationResponseImpl value,
          $Res Function(_$ConvertToMedicationResponseImpl) then) =
      __$$ConvertToMedicationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      dynamic medication,
      ScannedPrescription? scannedPrescription,
      String? error});

  @override
  $ScannedPrescriptionCopyWith<$Res>? get scannedPrescription;
}

/// @nodoc
class __$$ConvertToMedicationResponseImplCopyWithImpl<$Res>
    extends _$ConvertToMedicationResponseCopyWithImpl<$Res,
        _$ConvertToMedicationResponseImpl>
    implements _$$ConvertToMedicationResponseImplCopyWith<$Res> {
  __$$ConvertToMedicationResponseImplCopyWithImpl(
      _$ConvertToMedicationResponseImpl _value,
      $Res Function(_$ConvertToMedicationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConvertToMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? medication = freezed,
    Object? scannedPrescription = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ConvertToMedicationResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      medication: freezed == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scannedPrescription: freezed == scannedPrescription
          ? _value.scannedPrescription
          : scannedPrescription // ignore: cast_nullable_to_non_nullable
              as ScannedPrescription?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConvertToMedicationResponseImpl
    implements _ConvertToMedicationResponse {
  const _$ConvertToMedicationResponseImpl(
      {required this.success,
      this.medication,
      this.scannedPrescription,
      this.error});

  factory _$ConvertToMedicationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConvertToMedicationResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final dynamic medication;
  @override
  final ScannedPrescription? scannedPrescription;
  @override
  final String? error;

  @override
  String toString() {
    return 'ConvertToMedicationResponse(success: $success, medication: $medication, scannedPrescription: $scannedPrescription, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertToMedicationResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality()
                .equals(other.medication, medication) &&
            (identical(other.scannedPrescription, scannedPrescription) ||
                other.scannedPrescription == scannedPrescription) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      const DeepCollectionEquality().hash(medication),
      scannedPrescription,
      error);

  /// Create a copy of ConvertToMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertToMedicationResponseImplCopyWith<_$ConvertToMedicationResponseImpl>
      get copyWith => __$$ConvertToMedicationResponseImplCopyWithImpl<
          _$ConvertToMedicationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvertToMedicationResponseImplToJson(
      this,
    );
  }
}

abstract class _ConvertToMedicationResponse
    implements ConvertToMedicationResponse {
  const factory _ConvertToMedicationResponse(
      {required final bool success,
      final dynamic medication,
      final ScannedPrescription? scannedPrescription,
      final String? error}) = _$ConvertToMedicationResponseImpl;

  factory _ConvertToMedicationResponse.fromJson(Map<String, dynamic> json) =
      _$ConvertToMedicationResponseImpl.fromJson;

  @override
  bool get success;
  @override
  dynamic get medication;
  @override
  ScannedPrescription? get scannedPrescription;
  @override
  String? get error;

  /// Create a copy of ConvertToMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConvertToMedicationResponseImplCopyWith<_$ConvertToMedicationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
