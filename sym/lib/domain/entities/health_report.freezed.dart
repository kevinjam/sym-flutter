// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HealthMetric _$HealthMetricFromJson(Map<String, dynamic> json) {
  return _HealthMetric.fromJson(json);
}

/// @nodoc
mixin _$HealthMetric {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get referenceRange => throw _privateConstructorUsedError;

  /// Serializes this HealthMetric to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthMetric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthMetricCopyWith<HealthMetric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthMetricCopyWith<$Res> {
  factory $HealthMetricCopyWith(
          HealthMetric value, $Res Function(HealthMetric) then) =
      _$HealthMetricCopyWithImpl<$Res, HealthMetric>;
  @useResult
  $Res call(
      {String name,
      String value,
      String unit,
      String status,
      String? referenceRange});
}

/// @nodoc
class _$HealthMetricCopyWithImpl<$Res, $Val extends HealthMetric>
    implements $HealthMetricCopyWith<$Res> {
  _$HealthMetricCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthMetric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? unit = null,
    Object? status = null,
    Object? referenceRange = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      referenceRange: freezed == referenceRange
          ? _value.referenceRange
          : referenceRange // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthMetricImplCopyWith<$Res>
    implements $HealthMetricCopyWith<$Res> {
  factory _$$HealthMetricImplCopyWith(
          _$HealthMetricImpl value, $Res Function(_$HealthMetricImpl) then) =
      __$$HealthMetricImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String value,
      String unit,
      String status,
      String? referenceRange});
}

/// @nodoc
class __$$HealthMetricImplCopyWithImpl<$Res>
    extends _$HealthMetricCopyWithImpl<$Res, _$HealthMetricImpl>
    implements _$$HealthMetricImplCopyWith<$Res> {
  __$$HealthMetricImplCopyWithImpl(
      _$HealthMetricImpl _value, $Res Function(_$HealthMetricImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthMetric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? unit = null,
    Object? status = null,
    Object? referenceRange = freezed,
  }) {
    return _then(_$HealthMetricImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      referenceRange: freezed == referenceRange
          ? _value.referenceRange
          : referenceRange // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthMetricImpl implements _HealthMetric {
  const _$HealthMetricImpl(
      {required this.name,
      required this.value,
      required this.unit,
      this.status = 'normal',
      this.referenceRange});

  factory _$HealthMetricImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthMetricImplFromJson(json);

  @override
  final String name;
  @override
  final String value;
  @override
  final String unit;
  @override
  @JsonKey()
  final String status;
  @override
  final String? referenceRange;

  @override
  String toString() {
    return 'HealthMetric(name: $name, value: $value, unit: $unit, status: $status, referenceRange: $referenceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthMetricImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.referenceRange, referenceRange) ||
                other.referenceRange == referenceRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, value, unit, status, referenceRange);

  /// Create a copy of HealthMetric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthMetricImplCopyWith<_$HealthMetricImpl> get copyWith =>
      __$$HealthMetricImplCopyWithImpl<_$HealthMetricImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthMetricImplToJson(
      this,
    );
  }
}

abstract class _HealthMetric implements HealthMetric {
  const factory _HealthMetric(
      {required final String name,
      required final String value,
      required final String unit,
      final String status,
      final String? referenceRange}) = _$HealthMetricImpl;

  factory _HealthMetric.fromJson(Map<String, dynamic> json) =
      _$HealthMetricImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  String get unit;
  @override
  String get status;
  @override
  String? get referenceRange;

  /// Create a copy of HealthMetric
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthMetricImplCopyWith<_$HealthMetricImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestResult _$TestResultFromJson(Map<String, dynamic> json) {
  return _TestResult.fromJson(json);
}

/// @nodoc
mixin _$TestResult {
  String get testName => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get referenceRange => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this TestResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestResultCopyWith<TestResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultCopyWith<$Res> {
  factory $TestResultCopyWith(
          TestResult value, $Res Function(TestResult) then) =
      _$TestResultCopyWithImpl<$Res, TestResult>;
  @useResult
  $Res call(
      {String testName,
      String result,
      String? unit,
      String status,
      String? referenceRange,
      String? notes});
}

/// @nodoc
class _$TestResultCopyWithImpl<$Res, $Val extends TestResult>
    implements $TestResultCopyWith<$Res> {
  _$TestResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = null,
    Object? result = null,
    Object? unit = freezed,
    Object? status = null,
    Object? referenceRange = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      referenceRange: freezed == referenceRange
          ? _value.referenceRange
          : referenceRange // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestResultImplCopyWith<$Res>
    implements $TestResultCopyWith<$Res> {
  factory _$$TestResultImplCopyWith(
          _$TestResultImpl value, $Res Function(_$TestResultImpl) then) =
      __$$TestResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String testName,
      String result,
      String? unit,
      String status,
      String? referenceRange,
      String? notes});
}

/// @nodoc
class __$$TestResultImplCopyWithImpl<$Res>
    extends _$TestResultCopyWithImpl<$Res, _$TestResultImpl>
    implements _$$TestResultImplCopyWith<$Res> {
  __$$TestResultImplCopyWithImpl(
      _$TestResultImpl _value, $Res Function(_$TestResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = null,
    Object? result = null,
    Object? unit = freezed,
    Object? status = null,
    Object? referenceRange = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$TestResultImpl(
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      referenceRange: freezed == referenceRange
          ? _value.referenceRange
          : referenceRange // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestResultImpl implements _TestResult {
  const _$TestResultImpl(
      {required this.testName,
      required this.result,
      this.unit,
      this.status = 'normal',
      this.referenceRange,
      this.notes});

  factory _$TestResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestResultImplFromJson(json);

  @override
  final String testName;
  @override
  final String result;
  @override
  final String? unit;
  @override
  @JsonKey()
  final String status;
  @override
  final String? referenceRange;
  @override
  final String? notes;

  @override
  String toString() {
    return 'TestResult(testName: $testName, result: $result, unit: $unit, status: $status, referenceRange: $referenceRange, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestResultImpl &&
            (identical(other.testName, testName) ||
                other.testName == testName) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.referenceRange, referenceRange) ||
                other.referenceRange == referenceRange) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, testName, result, unit, status, referenceRange, notes);

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestResultImplCopyWith<_$TestResultImpl> get copyWith =>
      __$$TestResultImplCopyWithImpl<_$TestResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestResultImplToJson(
      this,
    );
  }
}

abstract class _TestResult implements TestResult {
  const factory _TestResult(
      {required final String testName,
      required final String result,
      final String? unit,
      final String status,
      final String? referenceRange,
      final String? notes}) = _$TestResultImpl;

  factory _TestResult.fromJson(Map<String, dynamic> json) =
      _$TestResultImpl.fromJson;

  @override
  String get testName;
  @override
  String get result;
  @override
  String? get unit;
  @override
  String get status;
  @override
  String? get referenceRange;
  @override
  String? get notes;

  /// Create a copy of TestResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestResultImplCopyWith<_$TestResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
mixin _$Attachment {
  String get fileName => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this Attachment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res, Attachment>;
  @useResult
  $Res call(
      {String fileName, String fileUrl, String fileType, DateTime uploadedAt});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res, $Val extends Attachment>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? fileUrl = null,
    Object? fileType = null,
    Object? uploadedAt = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentImplCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$AttachmentImplCopyWith(
          _$AttachmentImpl value, $Res Function(_$AttachmentImpl) then) =
      __$$AttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileName, String fileUrl, String fileType, DateTime uploadedAt});
}

/// @nodoc
class __$$AttachmentImplCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$AttachmentImpl>
    implements _$$AttachmentImplCopyWith<$Res> {
  __$$AttachmentImplCopyWithImpl(
      _$AttachmentImpl _value, $Res Function(_$AttachmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? fileUrl = null,
    Object? fileType = null,
    Object? uploadedAt = null,
  }) {
    return _then(_$AttachmentImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentImpl implements _Attachment {
  const _$AttachmentImpl(
      {required this.fileName,
      required this.fileUrl,
      required this.fileType,
      required this.uploadedAt});

  factory _$AttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentImplFromJson(json);

  @override
  final String fileName;
  @override
  final String fileUrl;
  @override
  final String fileType;
  @override
  final DateTime uploadedAt;

  @override
  String toString() {
    return 'Attachment(fileName: $fileName, fileUrl: $fileUrl, fileType: $fileType, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileName, fileUrl, fileType, uploadedAt);

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      __$$AttachmentImplCopyWithImpl<_$AttachmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentImplToJson(
      this,
    );
  }
}

abstract class _Attachment implements Attachment {
  const factory _Attachment(
      {required final String fileName,
      required final String fileUrl,
      required final String fileType,
      required final DateTime uploadedAt}) = _$AttachmentImpl;

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$AttachmentImpl.fromJson;

  @override
  String get fileName;
  @override
  String get fileUrl;
  @override
  String get fileType;
  @override
  DateTime get uploadedAt;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get specialty => throw _privateConstructorUsedError;
  String? get hospitalName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String firstName,
      String lastName,
      String email,
      String? specialty,
      String? hospitalName,
      String? phoneNumber});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? specialty = freezed,
    Object? hospitalName = freezed,
    Object? phoneNumber = freezed,
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
      specialty: freezed == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalName: freezed == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String firstName,
      String lastName,
      String email,
      String? specialty,
      String? hospitalName,
      String? phoneNumber});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? specialty = freezed,
    Object? hospitalName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$UserImpl(
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
      specialty: freezed == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalName: freezed == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.specialty,
      this.hospitalName,
      this.phoneNumber});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

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
  final String? specialty;
  @override
  final String? hospitalName;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, email: $email, specialty: $specialty, hospitalName: $hospitalName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.hospitalName, hospitalName) ||
                other.hospitalName == hospitalName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, email,
      specialty, hospitalName, phoneNumber);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: '_id') required final String id,
      required final String firstName,
      required final String lastName,
      required final String email,
      final String? specialty,
      final String? hospitalName,
      final String? phoneNumber}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

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
  String? get specialty;
  @override
  String? get hospitalName;
  @override
  String? get phoneNumber;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthReport _$HealthReportFromJson(Map<String, dynamic> json) {
  return _HealthReport.fromJson(json);
}

/// @nodoc
mixin _$HealthReport {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  User get patient => throw _privateConstructorUsedError;
  User? get doctor => throw _privateConstructorUsedError;
  String get reportType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get reportDate => throw _privateConstructorUsedError;
  List<HealthMetric> get healthMetrics => throw _privateConstructorUsedError;
  List<TestResult> get testResults => throw _privateConstructorUsedError;
  String? get doctorNotes => throw _privateConstructorUsedError;
  String? get recommendations => throw _privateConstructorUsedError;
  bool get followUpRequired => throw _privateConstructorUsedError;
  DateTime? get followUpDate => throw _privateConstructorUsedError;
  List<Attachment> get attachments => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'formattedDate')
  String? get formattedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'ageInDays')
  int? get ageInDays => throw _privateConstructorUsedError;

  /// Serializes this HealthReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthReportCopyWith<HealthReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthReportCopyWith<$Res> {
  factory $HealthReportCopyWith(
          HealthReport value, $Res Function(HealthReport) then) =
      _$HealthReportCopyWithImpl<$Res, HealthReport>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      User patient,
      User? doctor,
      String reportType,
      String title,
      String? description,
      DateTime reportDate,
      List<HealthMetric> healthMetrics,
      List<TestResult> testResults,
      String? doctorNotes,
      String? recommendations,
      bool followUpRequired,
      DateTime? followUpDate,
      List<Attachment> attachments,
      bool isActive,
      List<String> tags,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'formattedDate') String? formattedDate,
      @JsonKey(name: 'ageInDays') int? ageInDays});

  $UserCopyWith<$Res> get patient;
  $UserCopyWith<$Res>? get doctor;
}

/// @nodoc
class _$HealthReportCopyWithImpl<$Res, $Val extends HealthReport>
    implements $HealthReportCopyWith<$Res> {
  _$HealthReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patient = null,
    Object? doctor = freezed,
    Object? reportType = null,
    Object? title = null,
    Object? description = freezed,
    Object? reportDate = null,
    Object? healthMetrics = null,
    Object? testResults = null,
    Object? doctorNotes = freezed,
    Object? recommendations = freezed,
    Object? followUpRequired = null,
    Object? followUpDate = freezed,
    Object? attachments = null,
    Object? isActive = null,
    Object? tags = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? formattedDate = freezed,
    Object? ageInDays = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as User,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as User?,
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportDate: null == reportDate
          ? _value.reportDate
          : reportDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      healthMetrics: null == healthMetrics
          ? _value.healthMetrics
          : healthMetrics // ignore: cast_nullable_to_non_nullable
              as List<HealthMetric>,
      testResults: null == testResults
          ? _value.testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>,
      doctorNotes: freezed == doctorNotes
          ? _value.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as String?,
      followUpRequired: null == followUpRequired
          ? _value.followUpRequired
          : followUpRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      followUpDate: freezed == followUpDate
          ? _value.followUpDate
          : followUpDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedDate: freezed == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ageInDays: freezed == ageInDays
          ? _value.ageInDays
          : ageInDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of HealthReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get patient {
    return $UserCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  /// Create a copy of HealthReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthReportImplCopyWith<$Res>
    implements $HealthReportCopyWith<$Res> {
  factory _$$HealthReportImplCopyWith(
          _$HealthReportImpl value, $Res Function(_$HealthReportImpl) then) =
      __$$HealthReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      User patient,
      User? doctor,
      String reportType,
      String title,
      String? description,
      DateTime reportDate,
      List<HealthMetric> healthMetrics,
      List<TestResult> testResults,
      String? doctorNotes,
      String? recommendations,
      bool followUpRequired,
      DateTime? followUpDate,
      List<Attachment> attachments,
      bool isActive,
      List<String> tags,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'formattedDate') String? formattedDate,
      @JsonKey(name: 'ageInDays') int? ageInDays});

  @override
  $UserCopyWith<$Res> get patient;
  @override
  $UserCopyWith<$Res>? get doctor;
}

/// @nodoc
class __$$HealthReportImplCopyWithImpl<$Res>
    extends _$HealthReportCopyWithImpl<$Res, _$HealthReportImpl>
    implements _$$HealthReportImplCopyWith<$Res> {
  __$$HealthReportImplCopyWithImpl(
      _$HealthReportImpl _value, $Res Function(_$HealthReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patient = null,
    Object? doctor = freezed,
    Object? reportType = null,
    Object? title = null,
    Object? description = freezed,
    Object? reportDate = null,
    Object? healthMetrics = null,
    Object? testResults = null,
    Object? doctorNotes = freezed,
    Object? recommendations = freezed,
    Object? followUpRequired = null,
    Object? followUpDate = freezed,
    Object? attachments = null,
    Object? isActive = null,
    Object? tags = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? formattedDate = freezed,
    Object? ageInDays = freezed,
  }) {
    return _then(_$HealthReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as User,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as User?,
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportDate: null == reportDate
          ? _value.reportDate
          : reportDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      healthMetrics: null == healthMetrics
          ? _value._healthMetrics
          : healthMetrics // ignore: cast_nullable_to_non_nullable
              as List<HealthMetric>,
      testResults: null == testResults
          ? _value._testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>,
      doctorNotes: freezed == doctorNotes
          ? _value.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as String?,
      followUpRequired: null == followUpRequired
          ? _value.followUpRequired
          : followUpRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      followUpDate: freezed == followUpDate
          ? _value.followUpDate
          : followUpDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedDate: freezed == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ageInDays: freezed == ageInDays
          ? _value.ageInDays
          : ageInDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthReportImpl implements _HealthReport {
  const _$HealthReportImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.patient,
      this.doctor,
      required this.reportType,
      required this.title,
      this.description,
      required this.reportDate,
      final List<HealthMetric> healthMetrics = const [],
      final List<TestResult> testResults = const [],
      this.doctorNotes,
      this.recommendations,
      this.followUpRequired = false,
      this.followUpDate,
      final List<Attachment> attachments = const [],
      this.isActive = true,
      final List<String> tags = const [],
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: 'formattedDate') this.formattedDate,
      @JsonKey(name: 'ageInDays') this.ageInDays})
      : _healthMetrics = healthMetrics,
        _testResults = testResults,
        _attachments = attachments,
        _tags = tags;

  factory _$HealthReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthReportImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final User patient;
  @override
  final User? doctor;
  @override
  final String reportType;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime reportDate;
  final List<HealthMetric> _healthMetrics;
  @override
  @JsonKey()
  List<HealthMetric> get healthMetrics {
    if (_healthMetrics is EqualUnmodifiableListView) return _healthMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthMetrics);
  }

  final List<TestResult> _testResults;
  @override
  @JsonKey()
  List<TestResult> get testResults {
    if (_testResults is EqualUnmodifiableListView) return _testResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testResults);
  }

  @override
  final String? doctorNotes;
  @override
  final String? recommendations;
  @override
  @JsonKey()
  final bool followUpRequired;
  @override
  final DateTime? followUpDate;
  final List<Attachment> _attachments;
  @override
  @JsonKey()
  List<Attachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  @JsonKey()
  final bool isActive;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'formattedDate')
  final String? formattedDate;
  @override
  @JsonKey(name: 'ageInDays')
  final int? ageInDays;

  @override
  String toString() {
    return 'HealthReport(id: $id, patient: $patient, doctor: $doctor, reportType: $reportType, title: $title, description: $description, reportDate: $reportDate, healthMetrics: $healthMetrics, testResults: $testResults, doctorNotes: $doctorNotes, recommendations: $recommendations, followUpRequired: $followUpRequired, followUpDate: $followUpDate, attachments: $attachments, isActive: $isActive, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, formattedDate: $formattedDate, ageInDays: $ageInDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reportDate, reportDate) ||
                other.reportDate == reportDate) &&
            const DeepCollectionEquality()
                .equals(other._healthMetrics, _healthMetrics) &&
            const DeepCollectionEquality()
                .equals(other._testResults, _testResults) &&
            (identical(other.doctorNotes, doctorNotes) ||
                other.doctorNotes == doctorNotes) &&
            (identical(other.recommendations, recommendations) ||
                other.recommendations == recommendations) &&
            (identical(other.followUpRequired, followUpRequired) ||
                other.followUpRequired == followUpRequired) &&
            (identical(other.followUpDate, followUpDate) ||
                other.followUpDate == followUpDate) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.ageInDays, ageInDays) ||
                other.ageInDays == ageInDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        patient,
        doctor,
        reportType,
        title,
        description,
        reportDate,
        const DeepCollectionEquality().hash(_healthMetrics),
        const DeepCollectionEquality().hash(_testResults),
        doctorNotes,
        recommendations,
        followUpRequired,
        followUpDate,
        const DeepCollectionEquality().hash(_attachments),
        isActive,
        const DeepCollectionEquality().hash(_tags),
        createdAt,
        updatedAt,
        formattedDate,
        ageInDays
      ]);

  /// Create a copy of HealthReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthReportImplCopyWith<_$HealthReportImpl> get copyWith =>
      __$$HealthReportImplCopyWithImpl<_$HealthReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthReportImplToJson(
      this,
    );
  }
}

abstract class _HealthReport implements HealthReport {
  const factory _HealthReport(
      {@JsonKey(name: '_id') required final String id,
      required final User patient,
      final User? doctor,
      required final String reportType,
      required final String title,
      final String? description,
      required final DateTime reportDate,
      final List<HealthMetric> healthMetrics,
      final List<TestResult> testResults,
      final String? doctorNotes,
      final String? recommendations,
      final bool followUpRequired,
      final DateTime? followUpDate,
      final List<Attachment> attachments,
      final bool isActive,
      final List<String> tags,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: 'formattedDate') final String? formattedDate,
      @JsonKey(name: 'ageInDays') final int? ageInDays}) = _$HealthReportImpl;

  factory _HealthReport.fromJson(Map<String, dynamic> json) =
      _$HealthReportImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  User get patient;
  @override
  User? get doctor;
  @override
  String get reportType;
  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime get reportDate;
  @override
  List<HealthMetric> get healthMetrics;
  @override
  List<TestResult> get testResults;
  @override
  String? get doctorNotes;
  @override
  String? get recommendations;
  @override
  bool get followUpRequired;
  @override
  DateTime? get followUpDate;
  @override
  List<Attachment> get attachments;
  @override
  bool get isActive;
  @override
  List<String> get tags;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'formattedDate')
  String? get formattedDate;
  @override
  @JsonKey(name: 'ageInDays')
  int? get ageInDays;

  /// Create a copy of HealthReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthReportImplCopyWith<_$HealthReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateHealthReportRequest _$CreateHealthReportRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateHealthReportRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateHealthReportRequest {
  String get patient => throw _privateConstructorUsedError;
  String? get doctor => throw _privateConstructorUsedError;
  String get reportType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get reportDate => throw _privateConstructorUsedError;
  List<HealthMetric> get healthMetrics => throw _privateConstructorUsedError;
  List<TestResult> get testResults => throw _privateConstructorUsedError;
  String? get doctorNotes => throw _privateConstructorUsedError;
  String? get recommendations => throw _privateConstructorUsedError;
  bool get followUpRequired => throw _privateConstructorUsedError;
  DateTime? get followUpDate => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this CreateHealthReportRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateHealthReportRequestCopyWith<CreateHealthReportRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateHealthReportRequestCopyWith<$Res> {
  factory $CreateHealthReportRequestCopyWith(CreateHealthReportRequest value,
          $Res Function(CreateHealthReportRequest) then) =
      _$CreateHealthReportRequestCopyWithImpl<$Res, CreateHealthReportRequest>;
  @useResult
  $Res call(
      {String patient,
      String? doctor,
      String reportType,
      String title,
      String? description,
      DateTime? reportDate,
      List<HealthMetric> healthMetrics,
      List<TestResult> testResults,
      String? doctorNotes,
      String? recommendations,
      bool followUpRequired,
      DateTime? followUpDate,
      List<String> tags});
}

/// @nodoc
class _$CreateHealthReportRequestCopyWithImpl<$Res,
        $Val extends CreateHealthReportRequest>
    implements $CreateHealthReportRequestCopyWith<$Res> {
  _$CreateHealthReportRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = null,
    Object? doctor = freezed,
    Object? reportType = null,
    Object? title = null,
    Object? description = freezed,
    Object? reportDate = freezed,
    Object? healthMetrics = null,
    Object? testResults = null,
    Object? doctorNotes = freezed,
    Object? recommendations = freezed,
    Object? followUpRequired = null,
    Object? followUpDate = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as String,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as String?,
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportDate: freezed == reportDate
          ? _value.reportDate
          : reportDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      healthMetrics: null == healthMetrics
          ? _value.healthMetrics
          : healthMetrics // ignore: cast_nullable_to_non_nullable
              as List<HealthMetric>,
      testResults: null == testResults
          ? _value.testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>,
      doctorNotes: freezed == doctorNotes
          ? _value.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as String?,
      followUpRequired: null == followUpRequired
          ? _value.followUpRequired
          : followUpRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      followUpDate: freezed == followUpDate
          ? _value.followUpDate
          : followUpDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateHealthReportRequestImplCopyWith<$Res>
    implements $CreateHealthReportRequestCopyWith<$Res> {
  factory _$$CreateHealthReportRequestImplCopyWith(
          _$CreateHealthReportRequestImpl value,
          $Res Function(_$CreateHealthReportRequestImpl) then) =
      __$$CreateHealthReportRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String patient,
      String? doctor,
      String reportType,
      String title,
      String? description,
      DateTime? reportDate,
      List<HealthMetric> healthMetrics,
      List<TestResult> testResults,
      String? doctorNotes,
      String? recommendations,
      bool followUpRequired,
      DateTime? followUpDate,
      List<String> tags});
}

/// @nodoc
class __$$CreateHealthReportRequestImplCopyWithImpl<$Res>
    extends _$CreateHealthReportRequestCopyWithImpl<$Res,
        _$CreateHealthReportRequestImpl>
    implements _$$CreateHealthReportRequestImplCopyWith<$Res> {
  __$$CreateHealthReportRequestImplCopyWithImpl(
      _$CreateHealthReportRequestImpl _value,
      $Res Function(_$CreateHealthReportRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = null,
    Object? doctor = freezed,
    Object? reportType = null,
    Object? title = null,
    Object? description = freezed,
    Object? reportDate = freezed,
    Object? healthMetrics = null,
    Object? testResults = null,
    Object? doctorNotes = freezed,
    Object? recommendations = freezed,
    Object? followUpRequired = null,
    Object? followUpDate = freezed,
    Object? tags = null,
  }) {
    return _then(_$CreateHealthReportRequestImpl(
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as String,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as String?,
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportDate: freezed == reportDate
          ? _value.reportDate
          : reportDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      healthMetrics: null == healthMetrics
          ? _value._healthMetrics
          : healthMetrics // ignore: cast_nullable_to_non_nullable
              as List<HealthMetric>,
      testResults: null == testResults
          ? _value._testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>,
      doctorNotes: freezed == doctorNotes
          ? _value.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as String?,
      followUpRequired: null == followUpRequired
          ? _value.followUpRequired
          : followUpRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      followUpDate: freezed == followUpDate
          ? _value.followUpDate
          : followUpDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateHealthReportRequestImpl implements _CreateHealthReportRequest {
  const _$CreateHealthReportRequestImpl(
      {required this.patient,
      this.doctor,
      required this.reportType,
      required this.title,
      this.description,
      this.reportDate,
      final List<HealthMetric> healthMetrics = const [],
      final List<TestResult> testResults = const [],
      this.doctorNotes,
      this.recommendations,
      this.followUpRequired = false,
      this.followUpDate,
      final List<String> tags = const []})
      : _healthMetrics = healthMetrics,
        _testResults = testResults,
        _tags = tags;

  factory _$CreateHealthReportRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateHealthReportRequestImplFromJson(json);

  @override
  final String patient;
  @override
  final String? doctor;
  @override
  final String reportType;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime? reportDate;
  final List<HealthMetric> _healthMetrics;
  @override
  @JsonKey()
  List<HealthMetric> get healthMetrics {
    if (_healthMetrics is EqualUnmodifiableListView) return _healthMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthMetrics);
  }

  final List<TestResult> _testResults;
  @override
  @JsonKey()
  List<TestResult> get testResults {
    if (_testResults is EqualUnmodifiableListView) return _testResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testResults);
  }

  @override
  final String? doctorNotes;
  @override
  final String? recommendations;
  @override
  @JsonKey()
  final bool followUpRequired;
  @override
  final DateTime? followUpDate;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'CreateHealthReportRequest(patient: $patient, doctor: $doctor, reportType: $reportType, title: $title, description: $description, reportDate: $reportDate, healthMetrics: $healthMetrics, testResults: $testResults, doctorNotes: $doctorNotes, recommendations: $recommendations, followUpRequired: $followUpRequired, followUpDate: $followUpDate, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateHealthReportRequestImpl &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reportDate, reportDate) ||
                other.reportDate == reportDate) &&
            const DeepCollectionEquality()
                .equals(other._healthMetrics, _healthMetrics) &&
            const DeepCollectionEquality()
                .equals(other._testResults, _testResults) &&
            (identical(other.doctorNotes, doctorNotes) ||
                other.doctorNotes == doctorNotes) &&
            (identical(other.recommendations, recommendations) ||
                other.recommendations == recommendations) &&
            (identical(other.followUpRequired, followUpRequired) ||
                other.followUpRequired == followUpRequired) &&
            (identical(other.followUpDate, followUpDate) ||
                other.followUpDate == followUpDate) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      patient,
      doctor,
      reportType,
      title,
      description,
      reportDate,
      const DeepCollectionEquality().hash(_healthMetrics),
      const DeepCollectionEquality().hash(_testResults),
      doctorNotes,
      recommendations,
      followUpRequired,
      followUpDate,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of CreateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateHealthReportRequestImplCopyWith<_$CreateHealthReportRequestImpl>
      get copyWith => __$$CreateHealthReportRequestImplCopyWithImpl<
          _$CreateHealthReportRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateHealthReportRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateHealthReportRequest implements CreateHealthReportRequest {
  const factory _CreateHealthReportRequest(
      {required final String patient,
      final String? doctor,
      required final String reportType,
      required final String title,
      final String? description,
      final DateTime? reportDate,
      final List<HealthMetric> healthMetrics,
      final List<TestResult> testResults,
      final String? doctorNotes,
      final String? recommendations,
      final bool followUpRequired,
      final DateTime? followUpDate,
      final List<String> tags}) = _$CreateHealthReportRequestImpl;

  factory _CreateHealthReportRequest.fromJson(Map<String, dynamic> json) =
      _$CreateHealthReportRequestImpl.fromJson;

  @override
  String get patient;
  @override
  String? get doctor;
  @override
  String get reportType;
  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime? get reportDate;
  @override
  List<HealthMetric> get healthMetrics;
  @override
  List<TestResult> get testResults;
  @override
  String? get doctorNotes;
  @override
  String? get recommendations;
  @override
  bool get followUpRequired;
  @override
  DateTime? get followUpDate;
  @override
  List<String> get tags;

  /// Create a copy of CreateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateHealthReportRequestImplCopyWith<_$CreateHealthReportRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateHealthReportRequest _$UpdateHealthReportRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateHealthReportRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateHealthReportRequest {
  String? get doctor => throw _privateConstructorUsedError;
  String? get reportType => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get reportDate => throw _privateConstructorUsedError;
  List<HealthMetric>? get healthMetrics => throw _privateConstructorUsedError;
  List<TestResult>? get testResults => throw _privateConstructorUsedError;
  String? get doctorNotes => throw _privateConstructorUsedError;
  String? get recommendations => throw _privateConstructorUsedError;
  bool? get followUpRequired => throw _privateConstructorUsedError;
  DateTime? get followUpDate => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  /// Serializes this UpdateHealthReportRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateHealthReportRequestCopyWith<UpdateHealthReportRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateHealthReportRequestCopyWith<$Res> {
  factory $UpdateHealthReportRequestCopyWith(UpdateHealthReportRequest value,
          $Res Function(UpdateHealthReportRequest) then) =
      _$UpdateHealthReportRequestCopyWithImpl<$Res, UpdateHealthReportRequest>;
  @useResult
  $Res call(
      {String? doctor,
      String? reportType,
      String? title,
      String? description,
      DateTime? reportDate,
      List<HealthMetric>? healthMetrics,
      List<TestResult>? testResults,
      String? doctorNotes,
      String? recommendations,
      bool? followUpRequired,
      DateTime? followUpDate,
      List<String>? tags});
}

/// @nodoc
class _$UpdateHealthReportRequestCopyWithImpl<$Res,
        $Val extends UpdateHealthReportRequest>
    implements $UpdateHealthReportRequestCopyWith<$Res> {
  _$UpdateHealthReportRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctor = freezed,
    Object? reportType = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? reportDate = freezed,
    Object? healthMetrics = freezed,
    Object? testResults = freezed,
    Object? doctorNotes = freezed,
    Object? recommendations = freezed,
    Object? followUpRequired = freezed,
    Object? followUpDate = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as String?,
      reportType: freezed == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportDate: freezed == reportDate
          ? _value.reportDate
          : reportDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      healthMetrics: freezed == healthMetrics
          ? _value.healthMetrics
          : healthMetrics // ignore: cast_nullable_to_non_nullable
              as List<HealthMetric>?,
      testResults: freezed == testResults
          ? _value.testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>?,
      doctorNotes: freezed == doctorNotes
          ? _value.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as String?,
      followUpRequired: freezed == followUpRequired
          ? _value.followUpRequired
          : followUpRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      followUpDate: freezed == followUpDate
          ? _value.followUpDate
          : followUpDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateHealthReportRequestImplCopyWith<$Res>
    implements $UpdateHealthReportRequestCopyWith<$Res> {
  factory _$$UpdateHealthReportRequestImplCopyWith(
          _$UpdateHealthReportRequestImpl value,
          $Res Function(_$UpdateHealthReportRequestImpl) then) =
      __$$UpdateHealthReportRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? doctor,
      String? reportType,
      String? title,
      String? description,
      DateTime? reportDate,
      List<HealthMetric>? healthMetrics,
      List<TestResult>? testResults,
      String? doctorNotes,
      String? recommendations,
      bool? followUpRequired,
      DateTime? followUpDate,
      List<String>? tags});
}

/// @nodoc
class __$$UpdateHealthReportRequestImplCopyWithImpl<$Res>
    extends _$UpdateHealthReportRequestCopyWithImpl<$Res,
        _$UpdateHealthReportRequestImpl>
    implements _$$UpdateHealthReportRequestImplCopyWith<$Res> {
  __$$UpdateHealthReportRequestImplCopyWithImpl(
      _$UpdateHealthReportRequestImpl _value,
      $Res Function(_$UpdateHealthReportRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctor = freezed,
    Object? reportType = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? reportDate = freezed,
    Object? healthMetrics = freezed,
    Object? testResults = freezed,
    Object? doctorNotes = freezed,
    Object? recommendations = freezed,
    Object? followUpRequired = freezed,
    Object? followUpDate = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$UpdateHealthReportRequestImpl(
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as String?,
      reportType: freezed == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportDate: freezed == reportDate
          ? _value.reportDate
          : reportDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      healthMetrics: freezed == healthMetrics
          ? _value._healthMetrics
          : healthMetrics // ignore: cast_nullable_to_non_nullable
              as List<HealthMetric>?,
      testResults: freezed == testResults
          ? _value._testResults
          : testResults // ignore: cast_nullable_to_non_nullable
              as List<TestResult>?,
      doctorNotes: freezed == doctorNotes
          ? _value.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as String?,
      followUpRequired: freezed == followUpRequired
          ? _value.followUpRequired
          : followUpRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      followUpDate: freezed == followUpDate
          ? _value.followUpDate
          : followUpDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateHealthReportRequestImpl implements _UpdateHealthReportRequest {
  const _$UpdateHealthReportRequestImpl(
      {this.doctor,
      this.reportType,
      this.title,
      this.description,
      this.reportDate,
      final List<HealthMetric>? healthMetrics,
      final List<TestResult>? testResults,
      this.doctorNotes,
      this.recommendations,
      this.followUpRequired,
      this.followUpDate,
      final List<String>? tags})
      : _healthMetrics = healthMetrics,
        _testResults = testResults,
        _tags = tags;

  factory _$UpdateHealthReportRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateHealthReportRequestImplFromJson(json);

  @override
  final String? doctor;
  @override
  final String? reportType;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? reportDate;
  final List<HealthMetric>? _healthMetrics;
  @override
  List<HealthMetric>? get healthMetrics {
    final value = _healthMetrics;
    if (value == null) return null;
    if (_healthMetrics is EqualUnmodifiableListView) return _healthMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TestResult>? _testResults;
  @override
  List<TestResult>? get testResults {
    final value = _testResults;
    if (value == null) return null;
    if (_testResults is EqualUnmodifiableListView) return _testResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? doctorNotes;
  @override
  final String? recommendations;
  @override
  final bool? followUpRequired;
  @override
  final DateTime? followUpDate;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateHealthReportRequest(doctor: $doctor, reportType: $reportType, title: $title, description: $description, reportDate: $reportDate, healthMetrics: $healthMetrics, testResults: $testResults, doctorNotes: $doctorNotes, recommendations: $recommendations, followUpRequired: $followUpRequired, followUpDate: $followUpDate, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateHealthReportRequestImpl &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reportDate, reportDate) ||
                other.reportDate == reportDate) &&
            const DeepCollectionEquality()
                .equals(other._healthMetrics, _healthMetrics) &&
            const DeepCollectionEquality()
                .equals(other._testResults, _testResults) &&
            (identical(other.doctorNotes, doctorNotes) ||
                other.doctorNotes == doctorNotes) &&
            (identical(other.recommendations, recommendations) ||
                other.recommendations == recommendations) &&
            (identical(other.followUpRequired, followUpRequired) ||
                other.followUpRequired == followUpRequired) &&
            (identical(other.followUpDate, followUpDate) ||
                other.followUpDate == followUpDate) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      doctor,
      reportType,
      title,
      description,
      reportDate,
      const DeepCollectionEquality().hash(_healthMetrics),
      const DeepCollectionEquality().hash(_testResults),
      doctorNotes,
      recommendations,
      followUpRequired,
      followUpDate,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of UpdateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateHealthReportRequestImplCopyWith<_$UpdateHealthReportRequestImpl>
      get copyWith => __$$UpdateHealthReportRequestImplCopyWithImpl<
          _$UpdateHealthReportRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateHealthReportRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateHealthReportRequest implements UpdateHealthReportRequest {
  const factory _UpdateHealthReportRequest(
      {final String? doctor,
      final String? reportType,
      final String? title,
      final String? description,
      final DateTime? reportDate,
      final List<HealthMetric>? healthMetrics,
      final List<TestResult>? testResults,
      final String? doctorNotes,
      final String? recommendations,
      final bool? followUpRequired,
      final DateTime? followUpDate,
      final List<String>? tags}) = _$UpdateHealthReportRequestImpl;

  factory _UpdateHealthReportRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateHealthReportRequestImpl.fromJson;

  @override
  String? get doctor;
  @override
  String? get reportType;
  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get reportDate;
  @override
  List<HealthMetric>? get healthMetrics;
  @override
  List<TestResult>? get testResults;
  @override
  String? get doctorNotes;
  @override
  String? get recommendations;
  @override
  bool? get followUpRequired;
  @override
  DateTime? get followUpDate;
  @override
  List<String>? get tags;

  /// Create a copy of UpdateHealthReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateHealthReportRequestImplCopyWith<_$UpdateHealthReportRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReportType _$ReportTypeFromJson(Map<String, dynamic> json) {
  return _ReportType.fromJson(json);
}

/// @nodoc
mixin _$ReportType {
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  /// Serializes this ReportType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportTypeCopyWith<ReportType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportTypeCopyWith<$Res> {
  factory $ReportTypeCopyWith(
          ReportType value, $Res Function(ReportType) then) =
      _$ReportTypeCopyWithImpl<$Res, ReportType>;
  @useResult
  $Res call({String value, String label});
}

/// @nodoc
class _$ReportTypeCopyWithImpl<$Res, $Val extends ReportType>
    implements $ReportTypeCopyWith<$Res> {
  _$ReportTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportTypeImplCopyWith<$Res>
    implements $ReportTypeCopyWith<$Res> {
  factory _$$ReportTypeImplCopyWith(
          _$ReportTypeImpl value, $Res Function(_$ReportTypeImpl) then) =
      __$$ReportTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String label});
}

/// @nodoc
class __$$ReportTypeImplCopyWithImpl<$Res>
    extends _$ReportTypeCopyWithImpl<$Res, _$ReportTypeImpl>
    implements _$$ReportTypeImplCopyWith<$Res> {
  __$$ReportTypeImplCopyWithImpl(
      _$ReportTypeImpl _value, $Res Function(_$ReportTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
  }) {
    return _then(_$ReportTypeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportTypeImpl implements _ReportType {
  const _$ReportTypeImpl({required this.value, required this.label});

  factory _$ReportTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportTypeImplFromJson(json);

  @override
  final String value;
  @override
  final String label;

  @override
  String toString() {
    return 'ReportType(value: $value, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportTypeImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label);

  /// Create a copy of ReportType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportTypeImplCopyWith<_$ReportTypeImpl> get copyWith =>
      __$$ReportTypeImplCopyWithImpl<_$ReportTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportTypeImplToJson(
      this,
    );
  }
}

abstract class _ReportType implements ReportType {
  const factory _ReportType(
      {required final String value,
      required final String label}) = _$ReportTypeImpl;

  factory _ReportType.fromJson(Map<String, dynamic> json) =
      _$ReportTypeImpl.fromJson;

  @override
  String get value;
  @override
  String get label;

  /// Create a copy of ReportType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportTypeImplCopyWith<_$ReportTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthSummary _$HealthSummaryFromJson(Map<String, dynamic> json) {
  return _HealthSummary.fromJson(json);
}

/// @nodoc
mixin _$HealthSummary {
  HealthReport? get latestReport => throw _privateConstructorUsedError;
  List<ReportCount> get reportCounts => throw _privateConstructorUsedError;
  List<HealthReport> get recentReports => throw _privateConstructorUsedError;
  List<HealthMetric> get healthMetricsSummary =>
      throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this HealthSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthSummaryCopyWith<HealthSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthSummaryCopyWith<$Res> {
  factory $HealthSummaryCopyWith(
          HealthSummary value, $Res Function(HealthSummary) then) =
      _$HealthSummaryCopyWithImpl<$Res, HealthSummary>;
  @useResult
  $Res call(
      {HealthReport? latestReport,
      List<ReportCount> reportCounts,
      List<HealthReport> recentReports,
      List<HealthMetric> healthMetricsSummary,
      DateTime? lastUpdated});

  $HealthReportCopyWith<$Res>? get latestReport;
}

/// @nodoc
class _$HealthSummaryCopyWithImpl<$Res, $Val extends HealthSummary>
    implements $HealthSummaryCopyWith<$Res> {
  _$HealthSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestReport = freezed,
    Object? reportCounts = null,
    Object? recentReports = null,
    Object? healthMetricsSummary = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      latestReport: freezed == latestReport
          ? _value.latestReport
          : latestReport // ignore: cast_nullable_to_non_nullable
              as HealthReport?,
      reportCounts: null == reportCounts
          ? _value.reportCounts
          : reportCounts // ignore: cast_nullable_to_non_nullable
              as List<ReportCount>,
      recentReports: null == recentReports
          ? _value.recentReports
          : recentReports // ignore: cast_nullable_to_non_nullable
              as List<HealthReport>,
      healthMetricsSummary: null == healthMetricsSummary
          ? _value.healthMetricsSummary
          : healthMetricsSummary // ignore: cast_nullable_to_non_nullable
              as List<HealthMetric>,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of HealthSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthReportCopyWith<$Res>? get latestReport {
    if (_value.latestReport == null) {
      return null;
    }

    return $HealthReportCopyWith<$Res>(_value.latestReport!, (value) {
      return _then(_value.copyWith(latestReport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthSummaryImplCopyWith<$Res>
    implements $HealthSummaryCopyWith<$Res> {
  factory _$$HealthSummaryImplCopyWith(
          _$HealthSummaryImpl value, $Res Function(_$HealthSummaryImpl) then) =
      __$$HealthSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HealthReport? latestReport,
      List<ReportCount> reportCounts,
      List<HealthReport> recentReports,
      List<HealthMetric> healthMetricsSummary,
      DateTime? lastUpdated});

  @override
  $HealthReportCopyWith<$Res>? get latestReport;
}

/// @nodoc
class __$$HealthSummaryImplCopyWithImpl<$Res>
    extends _$HealthSummaryCopyWithImpl<$Res, _$HealthSummaryImpl>
    implements _$$HealthSummaryImplCopyWith<$Res> {
  __$$HealthSummaryImplCopyWithImpl(
      _$HealthSummaryImpl _value, $Res Function(_$HealthSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestReport = freezed,
    Object? reportCounts = null,
    Object? recentReports = null,
    Object? healthMetricsSummary = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$HealthSummaryImpl(
      latestReport: freezed == latestReport
          ? _value.latestReport
          : latestReport // ignore: cast_nullable_to_non_nullable
              as HealthReport?,
      reportCounts: null == reportCounts
          ? _value._reportCounts
          : reportCounts // ignore: cast_nullable_to_non_nullable
              as List<ReportCount>,
      recentReports: null == recentReports
          ? _value._recentReports
          : recentReports // ignore: cast_nullable_to_non_nullable
              as List<HealthReport>,
      healthMetricsSummary: null == healthMetricsSummary
          ? _value._healthMetricsSummary
          : healthMetricsSummary // ignore: cast_nullable_to_non_nullable
              as List<HealthMetric>,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthSummaryImpl implements _HealthSummary {
  const _$HealthSummaryImpl(
      {this.latestReport,
      final List<ReportCount> reportCounts = const [],
      final List<HealthReport> recentReports = const [],
      final List<HealthMetric> healthMetricsSummary = const [],
      this.lastUpdated})
      : _reportCounts = reportCounts,
        _recentReports = recentReports,
        _healthMetricsSummary = healthMetricsSummary;

  factory _$HealthSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthSummaryImplFromJson(json);

  @override
  final HealthReport? latestReport;
  final List<ReportCount> _reportCounts;
  @override
  @JsonKey()
  List<ReportCount> get reportCounts {
    if (_reportCounts is EqualUnmodifiableListView) return _reportCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportCounts);
  }

  final List<HealthReport> _recentReports;
  @override
  @JsonKey()
  List<HealthReport> get recentReports {
    if (_recentReports is EqualUnmodifiableListView) return _recentReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentReports);
  }

  final List<HealthMetric> _healthMetricsSummary;
  @override
  @JsonKey()
  List<HealthMetric> get healthMetricsSummary {
    if (_healthMetricsSummary is EqualUnmodifiableListView)
      return _healthMetricsSummary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthMetricsSummary);
  }

  @override
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'HealthSummary(latestReport: $latestReport, reportCounts: $reportCounts, recentReports: $recentReports, healthMetricsSummary: $healthMetricsSummary, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthSummaryImpl &&
            (identical(other.latestReport, latestReport) ||
                other.latestReport == latestReport) &&
            const DeepCollectionEquality()
                .equals(other._reportCounts, _reportCounts) &&
            const DeepCollectionEquality()
                .equals(other._recentReports, _recentReports) &&
            const DeepCollectionEquality()
                .equals(other._healthMetricsSummary, _healthMetricsSummary) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latestReport,
      const DeepCollectionEquality().hash(_reportCounts),
      const DeepCollectionEquality().hash(_recentReports),
      const DeepCollectionEquality().hash(_healthMetricsSummary),
      lastUpdated);

  /// Create a copy of HealthSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthSummaryImplCopyWith<_$HealthSummaryImpl> get copyWith =>
      __$$HealthSummaryImplCopyWithImpl<_$HealthSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthSummaryImplToJson(
      this,
    );
  }
}

abstract class _HealthSummary implements HealthSummary {
  const factory _HealthSummary(
      {final HealthReport? latestReport,
      final List<ReportCount> reportCounts,
      final List<HealthReport> recentReports,
      final List<HealthMetric> healthMetricsSummary,
      final DateTime? lastUpdated}) = _$HealthSummaryImpl;

  factory _HealthSummary.fromJson(Map<String, dynamic> json) =
      _$HealthSummaryImpl.fromJson;

  @override
  HealthReport? get latestReport;
  @override
  List<ReportCount> get reportCounts;
  @override
  List<HealthReport> get recentReports;
  @override
  List<HealthMetric> get healthMetricsSummary;
  @override
  DateTime? get lastUpdated;

  /// Create a copy of HealthSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthSummaryImplCopyWith<_$HealthSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportCount _$ReportCountFromJson(Map<String, dynamic> json) {
  return _ReportCount.fromJson(json);
}

/// @nodoc
mixin _$ReportCount {
  String get reportType => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this ReportCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCountCopyWith<ReportCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCountCopyWith<$Res> {
  factory $ReportCountCopyWith(
          ReportCount value, $Res Function(ReportCount) then) =
      _$ReportCountCopyWithImpl<$Res, ReportCount>;
  @useResult
  $Res call({String reportType, int count});
}

/// @nodoc
class _$ReportCountCopyWithImpl<$Res, $Val extends ReportCount>
    implements $ReportCountCopyWith<$Res> {
  _$ReportCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportType = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportCountImplCopyWith<$Res>
    implements $ReportCountCopyWith<$Res> {
  factory _$$ReportCountImplCopyWith(
          _$ReportCountImpl value, $Res Function(_$ReportCountImpl) then) =
      __$$ReportCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reportType, int count});
}

/// @nodoc
class __$$ReportCountImplCopyWithImpl<$Res>
    extends _$ReportCountCopyWithImpl<$Res, _$ReportCountImpl>
    implements _$$ReportCountImplCopyWith<$Res> {
  __$$ReportCountImplCopyWithImpl(
      _$ReportCountImpl _value, $Res Function(_$ReportCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportType = null,
    Object? count = null,
  }) {
    return _then(_$ReportCountImpl(
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportCountImpl implements _ReportCount {
  const _$ReportCountImpl({required this.reportType, required this.count});

  factory _$ReportCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportCountImplFromJson(json);

  @override
  final String reportType;
  @override
  final int count;

  @override
  String toString() {
    return 'ReportCount(reportType: $reportType, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportCountImpl &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reportType, count);

  /// Create a copy of ReportCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportCountImplCopyWith<_$ReportCountImpl> get copyWith =>
      __$$ReportCountImplCopyWithImpl<_$ReportCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportCountImplToJson(
      this,
    );
  }
}

abstract class _ReportCount implements ReportCount {
  const factory _ReportCount(
      {required final String reportType,
      required final int count}) = _$ReportCountImpl;

  factory _ReportCount.fromJson(Map<String, dynamic> json) =
      _$ReportCountImpl.fromJson;

  @override
  String get reportType;
  @override
  int get count;

  /// Create a copy of ReportCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportCountImplCopyWith<_$ReportCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthReportApiResponse _$HealthReportApiResponseFromJson(
    Map<String, dynamic> json) {
  return _HealthReportApiResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthReportApiResponse {
  bool get success => throw _privateConstructorUsedError;
  HealthReport get data => throw _privateConstructorUsedError;

  /// Serializes this HealthReportApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthReportApiResponseCopyWith<HealthReportApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthReportApiResponseCopyWith<$Res> {
  factory $HealthReportApiResponseCopyWith(HealthReportApiResponse value,
          $Res Function(HealthReportApiResponse) then) =
      _$HealthReportApiResponseCopyWithImpl<$Res, HealthReportApiResponse>;
  @useResult
  $Res call({bool success, HealthReport data});

  $HealthReportCopyWith<$Res> get data;
}

/// @nodoc
class _$HealthReportApiResponseCopyWithImpl<$Res,
        $Val extends HealthReportApiResponse>
    implements $HealthReportApiResponseCopyWith<$Res> {
  _$HealthReportApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthReportApiResponse
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
              as HealthReport,
    ) as $Val);
  }

  /// Create a copy of HealthReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthReportCopyWith<$Res> get data {
    return $HealthReportCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthReportApiResponseImplCopyWith<$Res>
    implements $HealthReportApiResponseCopyWith<$Res> {
  factory _$$HealthReportApiResponseImplCopyWith(
          _$HealthReportApiResponseImpl value,
          $Res Function(_$HealthReportApiResponseImpl) then) =
      __$$HealthReportApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, HealthReport data});

  @override
  $HealthReportCopyWith<$Res> get data;
}

/// @nodoc
class __$$HealthReportApiResponseImplCopyWithImpl<$Res>
    extends _$HealthReportApiResponseCopyWithImpl<$Res,
        _$HealthReportApiResponseImpl>
    implements _$$HealthReportApiResponseImplCopyWith<$Res> {
  __$$HealthReportApiResponseImplCopyWithImpl(
      _$HealthReportApiResponseImpl _value,
      $Res Function(_$HealthReportApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$HealthReportApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HealthReport,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthReportApiResponseImpl implements _HealthReportApiResponse {
  const _$HealthReportApiResponseImpl(
      {required this.success, required this.data});

  factory _$HealthReportApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthReportApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final HealthReport data;

  @override
  String toString() {
    return 'HealthReportApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthReportApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of HealthReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthReportApiResponseImplCopyWith<_$HealthReportApiResponseImpl>
      get copyWith => __$$HealthReportApiResponseImplCopyWithImpl<
          _$HealthReportApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthReportApiResponseImplToJson(
      this,
    );
  }
}

abstract class _HealthReportApiResponse implements HealthReportApiResponse {
  const factory _HealthReportApiResponse(
      {required final bool success,
      required final HealthReport data}) = _$HealthReportApiResponseImpl;

  factory _HealthReportApiResponse.fromJson(Map<String, dynamic> json) =
      _$HealthReportApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  HealthReport get data;

  /// Create a copy of HealthReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthReportApiResponseImplCopyWith<_$HealthReportApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HealthReportsListResponse _$HealthReportsListResponseFromJson(
    Map<String, dynamic> json) {
  return _HealthReportsListResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthReportsListResponse {
  List<HealthReport> get reports => throw _privateConstructorUsedError;
  PaginationInfo get pagination => throw _privateConstructorUsedError;

  /// Serializes this HealthReportsListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthReportsListResponseCopyWith<HealthReportsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthReportsListResponseCopyWith<$Res> {
  factory $HealthReportsListResponseCopyWith(HealthReportsListResponse value,
          $Res Function(HealthReportsListResponse) then) =
      _$HealthReportsListResponseCopyWithImpl<$Res, HealthReportsListResponse>;
  @useResult
  $Res call({List<HealthReport> reports, PaginationInfo pagination});

  $PaginationInfoCopyWith<$Res> get pagination;
}

/// @nodoc
class _$HealthReportsListResponseCopyWithImpl<$Res,
        $Val extends HealthReportsListResponse>
    implements $HealthReportsListResponseCopyWith<$Res> {
  _$HealthReportsListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<HealthReport>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationInfo,
    ) as $Val);
  }

  /// Create a copy of HealthReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationInfoCopyWith<$Res> get pagination {
    return $PaginationInfoCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthReportsListResponseImplCopyWith<$Res>
    implements $HealthReportsListResponseCopyWith<$Res> {
  factory _$$HealthReportsListResponseImplCopyWith(
          _$HealthReportsListResponseImpl value,
          $Res Function(_$HealthReportsListResponseImpl) then) =
      __$$HealthReportsListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HealthReport> reports, PaginationInfo pagination});

  @override
  $PaginationInfoCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$HealthReportsListResponseImplCopyWithImpl<$Res>
    extends _$HealthReportsListResponseCopyWithImpl<$Res,
        _$HealthReportsListResponseImpl>
    implements _$$HealthReportsListResponseImplCopyWith<$Res> {
  __$$HealthReportsListResponseImplCopyWithImpl(
      _$HealthReportsListResponseImpl _value,
      $Res Function(_$HealthReportsListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
    Object? pagination = null,
  }) {
    return _then(_$HealthReportsListResponseImpl(
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<HealthReport>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthReportsListResponseImpl implements _HealthReportsListResponse {
  const _$HealthReportsListResponseImpl(
      {required final List<HealthReport> reports, required this.pagination})
      : _reports = reports;

  factory _$HealthReportsListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthReportsListResponseImplFromJson(json);

  final List<HealthReport> _reports;
  @override
  List<HealthReport> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  final PaginationInfo pagination;

  @override
  String toString() {
    return 'HealthReportsListResponse(reports: $reports, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthReportsListResponseImpl &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reports), pagination);

  /// Create a copy of HealthReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthReportsListResponseImplCopyWith<_$HealthReportsListResponseImpl>
      get copyWith => __$$HealthReportsListResponseImplCopyWithImpl<
          _$HealthReportsListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthReportsListResponseImplToJson(
      this,
    );
  }
}

abstract class _HealthReportsListResponse implements HealthReportsListResponse {
  const factory _HealthReportsListResponse(
          {required final List<HealthReport> reports,
          required final PaginationInfo pagination}) =
      _$HealthReportsListResponseImpl;

  factory _HealthReportsListResponse.fromJson(Map<String, dynamic> json) =
      _$HealthReportsListResponseImpl.fromJson;

  @override
  List<HealthReport> get reports;
  @override
  PaginationInfo get pagination;

  /// Create a copy of HealthReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthReportsListResponseImplCopyWith<_$HealthReportsListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HealthReportsApiResponse _$HealthReportsApiResponseFromJson(
    Map<String, dynamic> json) {
  return _HealthReportsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthReportsApiResponse {
  bool get success => throw _privateConstructorUsedError;
  HealthReportsListResponse get data => throw _privateConstructorUsedError;

  /// Serializes this HealthReportsApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthReportsApiResponseCopyWith<HealthReportsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthReportsApiResponseCopyWith<$Res> {
  factory $HealthReportsApiResponseCopyWith(HealthReportsApiResponse value,
          $Res Function(HealthReportsApiResponse) then) =
      _$HealthReportsApiResponseCopyWithImpl<$Res, HealthReportsApiResponse>;
  @useResult
  $Res call({bool success, HealthReportsListResponse data});

  $HealthReportsListResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$HealthReportsApiResponseCopyWithImpl<$Res,
        $Val extends HealthReportsApiResponse>
    implements $HealthReportsApiResponseCopyWith<$Res> {
  _$HealthReportsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthReportsApiResponse
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
              as HealthReportsListResponse,
    ) as $Val);
  }

  /// Create a copy of HealthReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthReportsListResponseCopyWith<$Res> get data {
    return $HealthReportsListResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthReportsApiResponseImplCopyWith<$Res>
    implements $HealthReportsApiResponseCopyWith<$Res> {
  factory _$$HealthReportsApiResponseImplCopyWith(
          _$HealthReportsApiResponseImpl value,
          $Res Function(_$HealthReportsApiResponseImpl) then) =
      __$$HealthReportsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, HealthReportsListResponse data});

  @override
  $HealthReportsListResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$HealthReportsApiResponseImplCopyWithImpl<$Res>
    extends _$HealthReportsApiResponseCopyWithImpl<$Res,
        _$HealthReportsApiResponseImpl>
    implements _$$HealthReportsApiResponseImplCopyWith<$Res> {
  __$$HealthReportsApiResponseImplCopyWithImpl(
      _$HealthReportsApiResponseImpl _value,
      $Res Function(_$HealthReportsApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$HealthReportsApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HealthReportsListResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthReportsApiResponseImpl implements _HealthReportsApiResponse {
  const _$HealthReportsApiResponseImpl(
      {required this.success, required this.data});

  factory _$HealthReportsApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthReportsApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final HealthReportsListResponse data;

  @override
  String toString() {
    return 'HealthReportsApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthReportsApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of HealthReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthReportsApiResponseImplCopyWith<_$HealthReportsApiResponseImpl>
      get copyWith => __$$HealthReportsApiResponseImplCopyWithImpl<
          _$HealthReportsApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthReportsApiResponseImplToJson(
      this,
    );
  }
}

abstract class _HealthReportsApiResponse implements HealthReportsApiResponse {
  const factory _HealthReportsApiResponse(
          {required final bool success,
          required final HealthReportsListResponse data}) =
      _$HealthReportsApiResponseImpl;

  factory _HealthReportsApiResponse.fromJson(Map<String, dynamic> json) =
      _$HealthReportsApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  HealthReportsListResponse get data;

  /// Create a copy of HealthReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthReportsApiResponseImplCopyWith<_$HealthReportsApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HealthSummaryApiResponse _$HealthSummaryApiResponseFromJson(
    Map<String, dynamic> json) {
  return _HealthSummaryApiResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthSummaryApiResponse {
  bool get success => throw _privateConstructorUsedError;
  HealthSummary get data => throw _privateConstructorUsedError;

  /// Serializes this HealthSummaryApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthSummaryApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthSummaryApiResponseCopyWith<HealthSummaryApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthSummaryApiResponseCopyWith<$Res> {
  factory $HealthSummaryApiResponseCopyWith(HealthSummaryApiResponse value,
          $Res Function(HealthSummaryApiResponse) then) =
      _$HealthSummaryApiResponseCopyWithImpl<$Res, HealthSummaryApiResponse>;
  @useResult
  $Res call({bool success, HealthSummary data});

  $HealthSummaryCopyWith<$Res> get data;
}

/// @nodoc
class _$HealthSummaryApiResponseCopyWithImpl<$Res,
        $Val extends HealthSummaryApiResponse>
    implements $HealthSummaryApiResponseCopyWith<$Res> {
  _$HealthSummaryApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthSummaryApiResponse
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
              as HealthSummary,
    ) as $Val);
  }

  /// Create a copy of HealthSummaryApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthSummaryCopyWith<$Res> get data {
    return $HealthSummaryCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthSummaryApiResponseImplCopyWith<$Res>
    implements $HealthSummaryApiResponseCopyWith<$Res> {
  factory _$$HealthSummaryApiResponseImplCopyWith(
          _$HealthSummaryApiResponseImpl value,
          $Res Function(_$HealthSummaryApiResponseImpl) then) =
      __$$HealthSummaryApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, HealthSummary data});

  @override
  $HealthSummaryCopyWith<$Res> get data;
}

/// @nodoc
class __$$HealthSummaryApiResponseImplCopyWithImpl<$Res>
    extends _$HealthSummaryApiResponseCopyWithImpl<$Res,
        _$HealthSummaryApiResponseImpl>
    implements _$$HealthSummaryApiResponseImplCopyWith<$Res> {
  __$$HealthSummaryApiResponseImplCopyWithImpl(
      _$HealthSummaryApiResponseImpl _value,
      $Res Function(_$HealthSummaryApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthSummaryApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$HealthSummaryApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HealthSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthSummaryApiResponseImpl implements _HealthSummaryApiResponse {
  const _$HealthSummaryApiResponseImpl(
      {required this.success, required this.data});

  factory _$HealthSummaryApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthSummaryApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final HealthSummary data;

  @override
  String toString() {
    return 'HealthSummaryApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthSummaryApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of HealthSummaryApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthSummaryApiResponseImplCopyWith<_$HealthSummaryApiResponseImpl>
      get copyWith => __$$HealthSummaryApiResponseImplCopyWithImpl<
          _$HealthSummaryApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthSummaryApiResponseImplToJson(
      this,
    );
  }
}

abstract class _HealthSummaryApiResponse implements HealthSummaryApiResponse {
  const factory _HealthSummaryApiResponse(
      {required final bool success,
      required final HealthSummary data}) = _$HealthSummaryApiResponseImpl;

  factory _HealthSummaryApiResponse.fromJson(Map<String, dynamic> json) =
      _$HealthSummaryApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  HealthSummary get data;

  /// Create a copy of HealthSummaryApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthSummaryApiResponseImplCopyWith<_$HealthSummaryApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReportTypesApiResponse _$ReportTypesApiResponseFromJson(
    Map<String, dynamic> json) {
  return _ReportTypesApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ReportTypesApiResponse {
  bool get success => throw _privateConstructorUsedError;
  List<ReportType> get data => throw _privateConstructorUsedError;

  /// Serializes this ReportTypesApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportTypesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportTypesApiResponseCopyWith<ReportTypesApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportTypesApiResponseCopyWith<$Res> {
  factory $ReportTypesApiResponseCopyWith(ReportTypesApiResponse value,
          $Res Function(ReportTypesApiResponse) then) =
      _$ReportTypesApiResponseCopyWithImpl<$Res, ReportTypesApiResponse>;
  @useResult
  $Res call({bool success, List<ReportType> data});
}

/// @nodoc
class _$ReportTypesApiResponseCopyWithImpl<$Res,
        $Val extends ReportTypesApiResponse>
    implements $ReportTypesApiResponseCopyWith<$Res> {
  _$ReportTypesApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportTypesApiResponse
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
              as List<ReportType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportTypesApiResponseImplCopyWith<$Res>
    implements $ReportTypesApiResponseCopyWith<$Res> {
  factory _$$ReportTypesApiResponseImplCopyWith(
          _$ReportTypesApiResponseImpl value,
          $Res Function(_$ReportTypesApiResponseImpl) then) =
      __$$ReportTypesApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<ReportType> data});
}

/// @nodoc
class __$$ReportTypesApiResponseImplCopyWithImpl<$Res>
    extends _$ReportTypesApiResponseCopyWithImpl<$Res,
        _$ReportTypesApiResponseImpl>
    implements _$$ReportTypesApiResponseImplCopyWith<$Res> {
  __$$ReportTypesApiResponseImplCopyWithImpl(
      _$ReportTypesApiResponseImpl _value,
      $Res Function(_$ReportTypesApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportTypesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$ReportTypesApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReportType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportTypesApiResponseImpl implements _ReportTypesApiResponse {
  const _$ReportTypesApiResponseImpl(
      {required this.success, required final List<ReportType> data})
      : _data = data;

  factory _$ReportTypesApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportTypesApiResponseImplFromJson(json);

  @override
  final bool success;
  final List<ReportType> _data;
  @override
  List<ReportType> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ReportTypesApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportTypesApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ReportTypesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportTypesApiResponseImplCopyWith<_$ReportTypesApiResponseImpl>
      get copyWith => __$$ReportTypesApiResponseImplCopyWithImpl<
          _$ReportTypesApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportTypesApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ReportTypesApiResponse implements ReportTypesApiResponse {
  const factory _ReportTypesApiResponse(
      {required final bool success,
      required final List<ReportType> data}) = _$ReportTypesApiResponseImpl;

  factory _ReportTypesApiResponse.fromJson(Map<String, dynamic> json) =
      _$ReportTypesApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<ReportType> get data;

  /// Create a copy of ReportTypesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportTypesApiResponseImplCopyWith<_$ReportTypesApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) {
  return _PaginationInfo.fromJson(json);
}

/// @nodoc
mixin _$PaginationInfo {
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalReports => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get hasPrev => throw _privateConstructorUsedError;

  /// Serializes this PaginationInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
          PaginationInfo value, $Res Function(PaginationInfo) then) =
      _$PaginationInfoCopyWithImpl<$Res, PaginationInfo>;
  @useResult
  $Res call(
      {int currentPage,
      int totalPages,
      int totalReports,
      bool hasNext,
      bool hasPrev});
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res, $Val extends PaginationInfo>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalReports = null,
    Object? hasNext = null,
    Object? hasPrev = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalReports: null == totalReports
          ? _value.totalReports
          : totalReports // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PaginationInfoImplCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$$PaginationInfoImplCopyWith(_$PaginationInfoImpl value,
          $Res Function(_$PaginationInfoImpl) then) =
      __$$PaginationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      int totalPages,
      int totalReports,
      bool hasNext,
      bool hasPrev});
}

/// @nodoc
class __$$PaginationInfoImplCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res, _$PaginationInfoImpl>
    implements _$$PaginationInfoImplCopyWith<$Res> {
  __$$PaginationInfoImplCopyWithImpl(
      _$PaginationInfoImpl _value, $Res Function(_$PaginationInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalReports = null,
    Object? hasNext = null,
    Object? hasPrev = null,
  }) {
    return _then(_$PaginationInfoImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalReports: null == totalReports
          ? _value.totalReports
          : totalReports // ignore: cast_nullable_to_non_nullable
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
class _$PaginationInfoImpl implements _PaginationInfo {
  const _$PaginationInfoImpl(
      {required this.currentPage,
      required this.totalPages,
      required this.totalReports,
      required this.hasNext,
      required this.hasPrev});

  factory _$PaginationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationInfoImplFromJson(json);

  @override
  final int currentPage;
  @override
  final int totalPages;
  @override
  final int totalReports;
  @override
  final bool hasNext;
  @override
  final bool hasPrev;

  @override
  String toString() {
    return 'PaginationInfo(currentPage: $currentPage, totalPages: $totalPages, totalReports: $totalReports, hasNext: $hasNext, hasPrev: $hasPrev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationInfoImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalReports, totalReports) ||
                other.totalReports == totalReports) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrev, hasPrev) || other.hasPrev == hasPrev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, totalPages, totalReports, hasNext, hasPrev);

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationInfoImplCopyWith<_$PaginationInfoImpl> get copyWith =>
      __$$PaginationInfoImplCopyWithImpl<_$PaginationInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationInfoImplToJson(
      this,
    );
  }
}

abstract class _PaginationInfo implements PaginationInfo {
  const factory _PaginationInfo(
      {required final int currentPage,
      required final int totalPages,
      required final int totalReports,
      required final bool hasNext,
      required final bool hasPrev}) = _$PaginationInfoImpl;

  factory _PaginationInfo.fromJson(Map<String, dynamic> json) =
      _$PaginationInfoImpl.fromJson;

  @override
  int get currentPage;
  @override
  int get totalPages;
  @override
  int get totalReports;
  @override
  bool get hasNext;
  @override
  bool get hasPrev;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationInfoImplCopyWith<_$PaginationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) {
  return _SuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$SuccessResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

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
  $Res call({bool success, String message});
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
    Object? success = null,
    Object? message = null,
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
  $Res call({bool success, String message});
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
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_$SuccessResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessResponseImpl implements _SuccessResponse {
  const _$SuccessResponseImpl({required this.success, required this.message});

  factory _$SuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'SuccessResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

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
      {required final bool success,
      required final String message}) = _$SuccessResponseImpl;

  factory _SuccessResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
