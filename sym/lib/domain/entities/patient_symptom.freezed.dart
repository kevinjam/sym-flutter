// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_symptom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientSymptom _$PatientSymptomFromJson(Map<String, dynamic> json) {
  return _PatientSymptom.fromJson(json);
}

/// @nodoc
mixin _$PatientSymptom {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get patientId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _patientMedicationIdFromJson)
  String? get patientMedicationId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  DateTime get onsetDate => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  bool get isResolved => throw _privateConstructorUsedError;
  DateTime? get resolvedDate => throw _privateConstructorUsedError;
  bool get reportedToDoctor => throw _privateConstructorUsedError;
  String? get doctorNotes => throw _privateConstructorUsedError;
  String? get doctorId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PatientSymptom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientSymptom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientSymptomCopyWith<PatientSymptom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientSymptomCopyWith<$Res> {
  factory $PatientSymptomCopyWith(
          PatientSymptom value, $Res Function(PatientSymptom) then) =
      _$PatientSymptomCopyWithImpl<$Res, PatientSymptom>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String patientId,
      @JsonKey(fromJson: _patientMedicationIdFromJson)
      String? patientMedicationId,
      String name,
      String? description,
      String severity,
      String? category,
      DateTime onsetDate,
      String? duration,
      bool isResolved,
      DateTime? resolvedDate,
      bool reportedToDoctor,
      String? doctorNotes,
      String? doctorId,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$PatientSymptomCopyWithImpl<$Res, $Val extends PatientSymptom>
    implements $PatientSymptomCopyWith<$Res> {
  _$PatientSymptomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientSymptom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? patientMedicationId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? severity = null,
    Object? category = freezed,
    Object? onsetDate = null,
    Object? duration = freezed,
    Object? isResolved = null,
    Object? resolvedDate = freezed,
    Object? reportedToDoctor = null,
    Object? doctorNotes = freezed,
    Object? doctorId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      patientMedicationId: freezed == patientMedicationId
          ? _value.patientMedicationId
          : patientMedicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      onsetDate: null == onsetDate
          ? _value.onsetDate
          : onsetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      isResolved: null == isResolved
          ? _value.isResolved
          : isResolved // ignore: cast_nullable_to_non_nullable
              as bool,
      resolvedDate: freezed == resolvedDate
          ? _value.resolvedDate
          : resolvedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reportedToDoctor: null == reportedToDoctor
          ? _value.reportedToDoctor
          : reportedToDoctor // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorNotes: freezed == doctorNotes
          ? _value.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$PatientSymptomImplCopyWith<$Res>
    implements $PatientSymptomCopyWith<$Res> {
  factory _$$PatientSymptomImplCopyWith(_$PatientSymptomImpl value,
          $Res Function(_$PatientSymptomImpl) then) =
      __$$PatientSymptomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String patientId,
      @JsonKey(fromJson: _patientMedicationIdFromJson)
      String? patientMedicationId,
      String name,
      String? description,
      String severity,
      String? category,
      DateTime onsetDate,
      String? duration,
      bool isResolved,
      DateTime? resolvedDate,
      bool reportedToDoctor,
      String? doctorNotes,
      String? doctorId,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$PatientSymptomImplCopyWithImpl<$Res>
    extends _$PatientSymptomCopyWithImpl<$Res, _$PatientSymptomImpl>
    implements _$$PatientSymptomImplCopyWith<$Res> {
  __$$PatientSymptomImplCopyWithImpl(
      _$PatientSymptomImpl _value, $Res Function(_$PatientSymptomImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientSymptom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? patientMedicationId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? severity = null,
    Object? category = freezed,
    Object? onsetDate = null,
    Object? duration = freezed,
    Object? isResolved = null,
    Object? resolvedDate = freezed,
    Object? reportedToDoctor = null,
    Object? doctorNotes = freezed,
    Object? doctorId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PatientSymptomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      patientMedicationId: freezed == patientMedicationId
          ? _value.patientMedicationId
          : patientMedicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      onsetDate: null == onsetDate
          ? _value.onsetDate
          : onsetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      isResolved: null == isResolved
          ? _value.isResolved
          : isResolved // ignore: cast_nullable_to_non_nullable
              as bool,
      resolvedDate: freezed == resolvedDate
          ? _value.resolvedDate
          : resolvedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reportedToDoctor: null == reportedToDoctor
          ? _value.reportedToDoctor
          : reportedToDoctor // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorNotes: freezed == doctorNotes
          ? _value.doctorNotes
          : doctorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$PatientSymptomImpl implements _PatientSymptom {
  const _$PatientSymptomImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.patientId,
      @JsonKey(fromJson: _patientMedicationIdFromJson) this.patientMedicationId,
      required this.name,
      this.description,
      required this.severity,
      this.category,
      required this.onsetDate,
      this.duration,
      this.isResolved = false,
      this.resolvedDate,
      this.reportedToDoctor = false,
      this.doctorNotes,
      this.doctorId,
      required this.createdAt,
      required this.updatedAt});

  factory _$PatientSymptomImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientSymptomImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String patientId;
  @override
  @JsonKey(fromJson: _patientMedicationIdFromJson)
  final String? patientMedicationId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String severity;
  @override
  final String? category;
  @override
  final DateTime onsetDate;
  @override
  final String? duration;
  @override
  @JsonKey()
  final bool isResolved;
  @override
  final DateTime? resolvedDate;
  @override
  @JsonKey()
  final bool reportedToDoctor;
  @override
  final String? doctorNotes;
  @override
  final String? doctorId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'PatientSymptom(id: $id, patientId: $patientId, patientMedicationId: $patientMedicationId, name: $name, description: $description, severity: $severity, category: $category, onsetDate: $onsetDate, duration: $duration, isResolved: $isResolved, resolvedDate: $resolvedDate, reportedToDoctor: $reportedToDoctor, doctorNotes: $doctorNotes, doctorId: $doctorId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientSymptomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.patientMedicationId, patientMedicationId) ||
                other.patientMedicationId == patientMedicationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.onsetDate, onsetDate) ||
                other.onsetDate == onsetDate) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isResolved, isResolved) ||
                other.isResolved == isResolved) &&
            (identical(other.resolvedDate, resolvedDate) ||
                other.resolvedDate == resolvedDate) &&
            (identical(other.reportedToDoctor, reportedToDoctor) ||
                other.reportedToDoctor == reportedToDoctor) &&
            (identical(other.doctorNotes, doctorNotes) ||
                other.doctorNotes == doctorNotes) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      patientId,
      patientMedicationId,
      name,
      description,
      severity,
      category,
      onsetDate,
      duration,
      isResolved,
      resolvedDate,
      reportedToDoctor,
      doctorNotes,
      doctorId,
      createdAt,
      updatedAt);

  /// Create a copy of PatientSymptom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientSymptomImplCopyWith<_$PatientSymptomImpl> get copyWith =>
      __$$PatientSymptomImplCopyWithImpl<_$PatientSymptomImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientSymptomImplToJson(
      this,
    );
  }
}

abstract class _PatientSymptom implements PatientSymptom {
  const factory _PatientSymptom(
      {@JsonKey(name: '_id') required final String id,
      required final String patientId,
      @JsonKey(fromJson: _patientMedicationIdFromJson)
      final String? patientMedicationId,
      required final String name,
      final String? description,
      required final String severity,
      final String? category,
      required final DateTime onsetDate,
      final String? duration,
      final bool isResolved,
      final DateTime? resolvedDate,
      final bool reportedToDoctor,
      final String? doctorNotes,
      final String? doctorId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$PatientSymptomImpl;

  factory _PatientSymptom.fromJson(Map<String, dynamic> json) =
      _$PatientSymptomImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get patientId;
  @override
  @JsonKey(fromJson: _patientMedicationIdFromJson)
  String? get patientMedicationId;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get severity;
  @override
  String? get category;
  @override
  DateTime get onsetDate;
  @override
  String? get duration;
  @override
  bool get isResolved;
  @override
  DateTime? get resolvedDate;
  @override
  bool get reportedToDoctor;
  @override
  String? get doctorNotes;
  @override
  String? get doctorId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of PatientSymptom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientSymptomImplCopyWith<_$PatientSymptomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportSymptomRequest _$ReportSymptomRequestFromJson(Map<String, dynamic> json) {
  return _ReportSymptomRequest.fromJson(json);
}

/// @nodoc
mixin _$ReportSymptomRequest {
  String? get patientMedicationId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;

  /// Serializes this ReportSymptomRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportSymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportSymptomRequestCopyWith<ReportSymptomRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportSymptomRequestCopyWith<$Res> {
  factory $ReportSymptomRequestCopyWith(ReportSymptomRequest value,
          $Res Function(ReportSymptomRequest) then) =
      _$ReportSymptomRequestCopyWithImpl<$Res, ReportSymptomRequest>;
  @useResult
  $Res call(
      {String? patientMedicationId,
      String name,
      String? description,
      String severity,
      String? category,
      String? duration});
}

/// @nodoc
class _$ReportSymptomRequestCopyWithImpl<$Res,
        $Val extends ReportSymptomRequest>
    implements $ReportSymptomRequestCopyWith<$Res> {
  _$ReportSymptomRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportSymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientMedicationId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? severity = null,
    Object? category = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      patientMedicationId: freezed == patientMedicationId
          ? _value.patientMedicationId
          : patientMedicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportSymptomRequestImplCopyWith<$Res>
    implements $ReportSymptomRequestCopyWith<$Res> {
  factory _$$ReportSymptomRequestImplCopyWith(_$ReportSymptomRequestImpl value,
          $Res Function(_$ReportSymptomRequestImpl) then) =
      __$$ReportSymptomRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? patientMedicationId,
      String name,
      String? description,
      String severity,
      String? category,
      String? duration});
}

/// @nodoc
class __$$ReportSymptomRequestImplCopyWithImpl<$Res>
    extends _$ReportSymptomRequestCopyWithImpl<$Res, _$ReportSymptomRequestImpl>
    implements _$$ReportSymptomRequestImplCopyWith<$Res> {
  __$$ReportSymptomRequestImplCopyWithImpl(_$ReportSymptomRequestImpl _value,
      $Res Function(_$ReportSymptomRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportSymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientMedicationId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? severity = null,
    Object? category = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$ReportSymptomRequestImpl(
      patientMedicationId: freezed == patientMedicationId
          ? _value.patientMedicationId
          : patientMedicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportSymptomRequestImpl implements _ReportSymptomRequest {
  const _$ReportSymptomRequestImpl(
      {this.patientMedicationId,
      required this.name,
      this.description,
      required this.severity,
      this.category,
      this.duration});

  factory _$ReportSymptomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportSymptomRequestImplFromJson(json);

  @override
  final String? patientMedicationId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String severity;
  @override
  final String? category;
  @override
  final String? duration;

  @override
  String toString() {
    return 'ReportSymptomRequest(patientMedicationId: $patientMedicationId, name: $name, description: $description, severity: $severity, category: $category, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportSymptomRequestImpl &&
            (identical(other.patientMedicationId, patientMedicationId) ||
                other.patientMedicationId == patientMedicationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, patientMedicationId, name,
      description, severity, category, duration);

  /// Create a copy of ReportSymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportSymptomRequestImplCopyWith<_$ReportSymptomRequestImpl>
      get copyWith =>
          __$$ReportSymptomRequestImplCopyWithImpl<_$ReportSymptomRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportSymptomRequestImplToJson(
      this,
    );
  }
}

abstract class _ReportSymptomRequest implements ReportSymptomRequest {
  const factory _ReportSymptomRequest(
      {final String? patientMedicationId,
      required final String name,
      final String? description,
      required final String severity,
      final String? category,
      final String? duration}) = _$ReportSymptomRequestImpl;

  factory _ReportSymptomRequest.fromJson(Map<String, dynamic> json) =
      _$ReportSymptomRequestImpl.fromJson;

  @override
  String? get patientMedicationId;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get severity;
  @override
  String? get category;
  @override
  String? get duration;

  /// Create a copy of ReportSymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportSymptomRequestImplCopyWith<_$ReportSymptomRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PatientSymptomResponse _$PatientSymptomResponseFromJson(
    Map<String, dynamic> json) {
  return _PatientSymptomResponse.fromJson(json);
}

/// @nodoc
mixin _$PatientSymptomResponse {
  String get message => throw _privateConstructorUsedError;
  PatientSymptom get symptom => throw _privateConstructorUsedError;

  /// Serializes this PatientSymptomResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientSymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientSymptomResponseCopyWith<PatientSymptomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientSymptomResponseCopyWith<$Res> {
  factory $PatientSymptomResponseCopyWith(PatientSymptomResponse value,
          $Res Function(PatientSymptomResponse) then) =
      _$PatientSymptomResponseCopyWithImpl<$Res, PatientSymptomResponse>;
  @useResult
  $Res call({String message, PatientSymptom symptom});

  $PatientSymptomCopyWith<$Res> get symptom;
}

/// @nodoc
class _$PatientSymptomResponseCopyWithImpl<$Res,
        $Val extends PatientSymptomResponse>
    implements $PatientSymptomResponseCopyWith<$Res> {
  _$PatientSymptomResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientSymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? symptom = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      symptom: null == symptom
          ? _value.symptom
          : symptom // ignore: cast_nullable_to_non_nullable
              as PatientSymptom,
    ) as $Val);
  }

  /// Create a copy of PatientSymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatientSymptomCopyWith<$Res> get symptom {
    return $PatientSymptomCopyWith<$Res>(_value.symptom, (value) {
      return _then(_value.copyWith(symptom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientSymptomResponseImplCopyWith<$Res>
    implements $PatientSymptomResponseCopyWith<$Res> {
  factory _$$PatientSymptomResponseImplCopyWith(
          _$PatientSymptomResponseImpl value,
          $Res Function(_$PatientSymptomResponseImpl) then) =
      __$$PatientSymptomResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, PatientSymptom symptom});

  @override
  $PatientSymptomCopyWith<$Res> get symptom;
}

/// @nodoc
class __$$PatientSymptomResponseImplCopyWithImpl<$Res>
    extends _$PatientSymptomResponseCopyWithImpl<$Res,
        _$PatientSymptomResponseImpl>
    implements _$$PatientSymptomResponseImplCopyWith<$Res> {
  __$$PatientSymptomResponseImplCopyWithImpl(
      _$PatientSymptomResponseImpl _value,
      $Res Function(_$PatientSymptomResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientSymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? symptom = null,
  }) {
    return _then(_$PatientSymptomResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      symptom: null == symptom
          ? _value.symptom
          : symptom // ignore: cast_nullable_to_non_nullable
              as PatientSymptom,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientSymptomResponseImpl implements _PatientSymptomResponse {
  const _$PatientSymptomResponseImpl(
      {required this.message, required this.symptom});

  factory _$PatientSymptomResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientSymptomResponseImplFromJson(json);

  @override
  final String message;
  @override
  final PatientSymptom symptom;

  @override
  String toString() {
    return 'PatientSymptomResponse(message: $message, symptom: $symptom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientSymptomResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.symptom, symptom) || other.symptom == symptom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, symptom);

  /// Create a copy of PatientSymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientSymptomResponseImplCopyWith<_$PatientSymptomResponseImpl>
      get copyWith => __$$PatientSymptomResponseImplCopyWithImpl<
          _$PatientSymptomResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientSymptomResponseImplToJson(
      this,
    );
  }
}

abstract class _PatientSymptomResponse implements PatientSymptomResponse {
  const factory _PatientSymptomResponse(
      {required final String message,
      required final PatientSymptom symptom}) = _$PatientSymptomResponseImpl;

  factory _PatientSymptomResponse.fromJson(Map<String, dynamic> json) =
      _$PatientSymptomResponseImpl.fromJson;

  @override
  String get message;
  @override
  PatientSymptom get symptom;

  /// Create a copy of PatientSymptomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientSymptomResponseImplCopyWith<_$PatientSymptomResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PatientSymptomsResponse _$PatientSymptomsResponseFromJson(
    Map<String, dynamic> json) {
  return _PatientSymptomsResponse.fromJson(json);
}

/// @nodoc
mixin _$PatientSymptomsResponse {
  List<PatientSymptom> get symptoms => throw _privateConstructorUsedError;

  /// Serializes this PatientSymptomsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientSymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientSymptomsResponseCopyWith<PatientSymptomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientSymptomsResponseCopyWith<$Res> {
  factory $PatientSymptomsResponseCopyWith(PatientSymptomsResponse value,
          $Res Function(PatientSymptomsResponse) then) =
      _$PatientSymptomsResponseCopyWithImpl<$Res, PatientSymptomsResponse>;
  @useResult
  $Res call({List<PatientSymptom> symptoms});
}

/// @nodoc
class _$PatientSymptomsResponseCopyWithImpl<$Res,
        $Val extends PatientSymptomsResponse>
    implements $PatientSymptomsResponseCopyWith<$Res> {
  _$PatientSymptomsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientSymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
  }) {
    return _then(_value.copyWith(
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<PatientSymptom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientSymptomsResponseImplCopyWith<$Res>
    implements $PatientSymptomsResponseCopyWith<$Res> {
  factory _$$PatientSymptomsResponseImplCopyWith(
          _$PatientSymptomsResponseImpl value,
          $Res Function(_$PatientSymptomsResponseImpl) then) =
      __$$PatientSymptomsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PatientSymptom> symptoms});
}

/// @nodoc
class __$$PatientSymptomsResponseImplCopyWithImpl<$Res>
    extends _$PatientSymptomsResponseCopyWithImpl<$Res,
        _$PatientSymptomsResponseImpl>
    implements _$$PatientSymptomsResponseImplCopyWith<$Res> {
  __$$PatientSymptomsResponseImplCopyWithImpl(
      _$PatientSymptomsResponseImpl _value,
      $Res Function(_$PatientSymptomsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientSymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
  }) {
    return _then(_$PatientSymptomsResponseImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<PatientSymptom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientSymptomsResponseImpl implements _PatientSymptomsResponse {
  const _$PatientSymptomsResponseImpl(
      {required final List<PatientSymptom> symptoms})
      : _symptoms = symptoms;

  factory _$PatientSymptomsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientSymptomsResponseImplFromJson(json);

  final List<PatientSymptom> _symptoms;
  @override
  List<PatientSymptom> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  String toString() {
    return 'PatientSymptomsResponse(symptoms: $symptoms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientSymptomsResponseImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_symptoms));

  /// Create a copy of PatientSymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientSymptomsResponseImplCopyWith<_$PatientSymptomsResponseImpl>
      get copyWith => __$$PatientSymptomsResponseImplCopyWithImpl<
          _$PatientSymptomsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientSymptomsResponseImplToJson(
      this,
    );
  }
}

abstract class _PatientSymptomsResponse implements PatientSymptomsResponse {
  const factory _PatientSymptomsResponse(
          {required final List<PatientSymptom> symptoms}) =
      _$PatientSymptomsResponseImpl;

  factory _PatientSymptomsResponse.fromJson(Map<String, dynamic> json) =
      _$PatientSymptomsResponseImpl.fromJson;

  @override
  List<PatientSymptom> get symptoms;

  /// Create a copy of PatientSymptomsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientSymptomsResponseImplCopyWith<_$PatientSymptomsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
