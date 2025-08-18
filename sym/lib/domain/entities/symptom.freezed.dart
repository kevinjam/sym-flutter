// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Symptom _$SymptomFromJson(Map<String, dynamic> json) {
  return _Symptom.fromJson(json);
}

/// @nodoc
mixin _$Symptom {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get linkedMedications => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get severity =>
      throw _privateConstructorUsedError; // mild, moderate, severe
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Symptom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Symptom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomCopyWith<Symptom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomCopyWith<$Res> {
  factory $SymptomCopyWith(Symptom value, $Res Function(Symptom) then) =
      _$SymptomCopyWithImpl<$Res, Symptom>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> linkedMedications,
      String? description,
      String? category,
      String? severity,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$SymptomCopyWithImpl<$Res, $Val extends Symptom>
    implements $SymptomCopyWith<$Res> {
  _$SymptomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Symptom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? linkedMedications = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? severity = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      linkedMedications: null == linkedMedications
          ? _value.linkedMedications
          : linkedMedications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomImplCopyWith<$Res> implements $SymptomCopyWith<$Res> {
  factory _$$SymptomImplCopyWith(
          _$SymptomImpl value, $Res Function(_$SymptomImpl) then) =
      __$$SymptomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> linkedMedications,
      String? description,
      String? category,
      String? severity,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$SymptomImplCopyWithImpl<$Res>
    extends _$SymptomCopyWithImpl<$Res, _$SymptomImpl>
    implements _$$SymptomImplCopyWith<$Res> {
  __$$SymptomImplCopyWithImpl(
      _$SymptomImpl _value, $Res Function(_$SymptomImpl) _then)
      : super(_value, _then);

  /// Create a copy of Symptom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? linkedMedications = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? severity = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SymptomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      linkedMedications: null == linkedMedications
          ? _value._linkedMedications
          : linkedMedications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomImpl implements _Symptom {
  const _$SymptomImpl(
      {required this.id,
      required this.name,
      required final List<String> linkedMedications,
      this.description,
      this.category,
      this.severity,
      this.createdAt,
      this.updatedAt})
      : _linkedMedications = linkedMedications;

  factory _$SymptomImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _linkedMedications;
  @override
  List<String> get linkedMedications {
    if (_linkedMedications is EqualUnmodifiableListView)
      return _linkedMedications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkedMedications);
  }

  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? severity;
// mild, moderate, severe
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Symptom(id: $id, name: $name, linkedMedications: $linkedMedications, description: $description, category: $category, severity: $severity, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._linkedMedications, _linkedMedications) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
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
      name,
      const DeepCollectionEquality().hash(_linkedMedications),
      description,
      category,
      severity,
      createdAt,
      updatedAt);

  /// Create a copy of Symptom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomImplCopyWith<_$SymptomImpl> get copyWith =>
      __$$SymptomImplCopyWithImpl<_$SymptomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomImplToJson(
      this,
    );
  }
}

abstract class _Symptom implements Symptom {
  const factory _Symptom(
      {required final String id,
      required final String name,
      required final List<String> linkedMedications,
      final String? description,
      final String? category,
      final String? severity,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$SymptomImpl;

  factory _Symptom.fromJson(Map<String, dynamic> json) = _$SymptomImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get linkedMedications;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get severity; // mild, moderate, severe
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Symptom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomImplCopyWith<_$SymptomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SymptomLog _$SymptomLogFromJson(Map<String, dynamic> json) {
  return _SymptomLog.fromJson(json);
}

/// @nodoc
mixin _$SymptomLog {
  String get id => throw _privateConstructorUsedError;
  String get symptomId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get associatedMedications => throw _privateConstructorUsedError;
  String? get severity =>
      throw _privateConstructorUsedError; // mild, moderate, severe
  String? get notes => throw _privateConstructorUsedError;
  int? get intensityLevel => throw _privateConstructorUsedError; // 1-10 scale
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SymptomLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomLogCopyWith<SymptomLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomLogCopyWith<$Res> {
  factory $SymptomLogCopyWith(
          SymptomLog value, $Res Function(SymptomLog) then) =
      _$SymptomLogCopyWithImpl<$Res, SymptomLog>;
  @useResult
  $Res call(
      {String id,
      String symptomId,
      DateTime timestamp,
      List<String> associatedMedications,
      String? severity,
      String? notes,
      int? intensityLevel,
      DateTime? createdAt});
}

/// @nodoc
class _$SymptomLogCopyWithImpl<$Res, $Val extends SymptomLog>
    implements $SymptomLogCopyWith<$Res> {
  _$SymptomLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symptomId = null,
    Object? timestamp = null,
    Object? associatedMedications = null,
    Object? severity = freezed,
    Object? notes = freezed,
    Object? intensityLevel = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symptomId: null == symptomId
          ? _value.symptomId
          : symptomId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      associatedMedications: null == associatedMedications
          ? _value.associatedMedications
          : associatedMedications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      intensityLevel: freezed == intensityLevel
          ? _value.intensityLevel
          : intensityLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomLogImplCopyWith<$Res>
    implements $SymptomLogCopyWith<$Res> {
  factory _$$SymptomLogImplCopyWith(
          _$SymptomLogImpl value, $Res Function(_$SymptomLogImpl) then) =
      __$$SymptomLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symptomId,
      DateTime timestamp,
      List<String> associatedMedications,
      String? severity,
      String? notes,
      int? intensityLevel,
      DateTime? createdAt});
}

/// @nodoc
class __$$SymptomLogImplCopyWithImpl<$Res>
    extends _$SymptomLogCopyWithImpl<$Res, _$SymptomLogImpl>
    implements _$$SymptomLogImplCopyWith<$Res> {
  __$$SymptomLogImplCopyWithImpl(
      _$SymptomLogImpl _value, $Res Function(_$SymptomLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymptomLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symptomId = null,
    Object? timestamp = null,
    Object? associatedMedications = null,
    Object? severity = freezed,
    Object? notes = freezed,
    Object? intensityLevel = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$SymptomLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symptomId: null == symptomId
          ? _value.symptomId
          : symptomId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      associatedMedications: null == associatedMedications
          ? _value._associatedMedications
          : associatedMedications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      intensityLevel: freezed == intensityLevel
          ? _value.intensityLevel
          : intensityLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomLogImpl implements _SymptomLog {
  const _$SymptomLogImpl(
      {required this.id,
      required this.symptomId,
      required this.timestamp,
      required final List<String> associatedMedications,
      this.severity,
      this.notes,
      this.intensityLevel,
      this.createdAt})
      : _associatedMedications = associatedMedications;

  factory _$SymptomLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomLogImplFromJson(json);

  @override
  final String id;
  @override
  final String symptomId;
  @override
  final DateTime timestamp;
  final List<String> _associatedMedications;
  @override
  List<String> get associatedMedications {
    if (_associatedMedications is EqualUnmodifiableListView)
      return _associatedMedications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_associatedMedications);
  }

  @override
  final String? severity;
// mild, moderate, severe
  @override
  final String? notes;
  @override
  final int? intensityLevel;
// 1-10 scale
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'SymptomLog(id: $id, symptomId: $symptomId, timestamp: $timestamp, associatedMedications: $associatedMedications, severity: $severity, notes: $notes, intensityLevel: $intensityLevel, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symptomId, symptomId) ||
                other.symptomId == symptomId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._associatedMedications, _associatedMedications) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.intensityLevel, intensityLevel) ||
                other.intensityLevel == intensityLevel) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      symptomId,
      timestamp,
      const DeepCollectionEquality().hash(_associatedMedications),
      severity,
      notes,
      intensityLevel,
      createdAt);

  /// Create a copy of SymptomLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomLogImplCopyWith<_$SymptomLogImpl> get copyWith =>
      __$$SymptomLogImplCopyWithImpl<_$SymptomLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomLogImplToJson(
      this,
    );
  }
}

abstract class _SymptomLog implements SymptomLog {
  const factory _SymptomLog(
      {required final String id,
      required final String symptomId,
      required final DateTime timestamp,
      required final List<String> associatedMedications,
      final String? severity,
      final String? notes,
      final int? intensityLevel,
      final DateTime? createdAt}) = _$SymptomLogImpl;

  factory _SymptomLog.fromJson(Map<String, dynamic> json) =
      _$SymptomLogImpl.fromJson;

  @override
  String get id;
  @override
  String get symptomId;
  @override
  DateTime get timestamp;
  @override
  List<String> get associatedMedications;
  @override
  String? get severity; // mild, moderate, severe
  @override
  String? get notes;
  @override
  int? get intensityLevel; // 1-10 scale
  @override
  DateTime? get createdAt;

  /// Create a copy of SymptomLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomLogImplCopyWith<_$SymptomLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSymptomLogRequest _$CreateSymptomLogRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateSymptomLogRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSymptomLogRequest {
  String get symptomId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get associatedMedications => throw _privateConstructorUsedError;
  String? get severity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get intensityLevel => throw _privateConstructorUsedError;

  /// Serializes this CreateSymptomLogRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSymptomLogRequestCopyWith<CreateSymptomLogRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSymptomLogRequestCopyWith<$Res> {
  factory $CreateSymptomLogRequestCopyWith(CreateSymptomLogRequest value,
          $Res Function(CreateSymptomLogRequest) then) =
      _$CreateSymptomLogRequestCopyWithImpl<$Res, CreateSymptomLogRequest>;
  @useResult
  $Res call(
      {String symptomId,
      DateTime timestamp,
      List<String> associatedMedications,
      String? severity,
      String? notes,
      int? intensityLevel});
}

/// @nodoc
class _$CreateSymptomLogRequestCopyWithImpl<$Res,
        $Val extends CreateSymptomLogRequest>
    implements $CreateSymptomLogRequestCopyWith<$Res> {
  _$CreateSymptomLogRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptomId = null,
    Object? timestamp = null,
    Object? associatedMedications = null,
    Object? severity = freezed,
    Object? notes = freezed,
    Object? intensityLevel = freezed,
  }) {
    return _then(_value.copyWith(
      symptomId: null == symptomId
          ? _value.symptomId
          : symptomId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      associatedMedications: null == associatedMedications
          ? _value.associatedMedications
          : associatedMedications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      intensityLevel: freezed == intensityLevel
          ? _value.intensityLevel
          : intensityLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSymptomLogRequestImplCopyWith<$Res>
    implements $CreateSymptomLogRequestCopyWith<$Res> {
  factory _$$CreateSymptomLogRequestImplCopyWith(
          _$CreateSymptomLogRequestImpl value,
          $Res Function(_$CreateSymptomLogRequestImpl) then) =
      __$$CreateSymptomLogRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symptomId,
      DateTime timestamp,
      List<String> associatedMedications,
      String? severity,
      String? notes,
      int? intensityLevel});
}

/// @nodoc
class __$$CreateSymptomLogRequestImplCopyWithImpl<$Res>
    extends _$CreateSymptomLogRequestCopyWithImpl<$Res,
        _$CreateSymptomLogRequestImpl>
    implements _$$CreateSymptomLogRequestImplCopyWith<$Res> {
  __$$CreateSymptomLogRequestImplCopyWithImpl(
      _$CreateSymptomLogRequestImpl _value,
      $Res Function(_$CreateSymptomLogRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptomId = null,
    Object? timestamp = null,
    Object? associatedMedications = null,
    Object? severity = freezed,
    Object? notes = freezed,
    Object? intensityLevel = freezed,
  }) {
    return _then(_$CreateSymptomLogRequestImpl(
      symptomId: null == symptomId
          ? _value.symptomId
          : symptomId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      associatedMedications: null == associatedMedications
          ? _value._associatedMedications
          : associatedMedications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      intensityLevel: freezed == intensityLevel
          ? _value.intensityLevel
          : intensityLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSymptomLogRequestImpl implements _CreateSymptomLogRequest {
  const _$CreateSymptomLogRequestImpl(
      {required this.symptomId,
      required this.timestamp,
      required final List<String> associatedMedications,
      this.severity,
      this.notes,
      this.intensityLevel})
      : _associatedMedications = associatedMedications;

  factory _$CreateSymptomLogRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSymptomLogRequestImplFromJson(json);

  @override
  final String symptomId;
  @override
  final DateTime timestamp;
  final List<String> _associatedMedications;
  @override
  List<String> get associatedMedications {
    if (_associatedMedications is EqualUnmodifiableListView)
      return _associatedMedications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_associatedMedications);
  }

  @override
  final String? severity;
  @override
  final String? notes;
  @override
  final int? intensityLevel;

  @override
  String toString() {
    return 'CreateSymptomLogRequest(symptomId: $symptomId, timestamp: $timestamp, associatedMedications: $associatedMedications, severity: $severity, notes: $notes, intensityLevel: $intensityLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSymptomLogRequestImpl &&
            (identical(other.symptomId, symptomId) ||
                other.symptomId == symptomId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._associatedMedications, _associatedMedications) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.intensityLevel, intensityLevel) ||
                other.intensityLevel == intensityLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symptomId,
      timestamp,
      const DeepCollectionEquality().hash(_associatedMedications),
      severity,
      notes,
      intensityLevel);

  /// Create a copy of CreateSymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSymptomLogRequestImplCopyWith<_$CreateSymptomLogRequestImpl>
      get copyWith => __$$CreateSymptomLogRequestImplCopyWithImpl<
          _$CreateSymptomLogRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSymptomLogRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateSymptomLogRequest implements CreateSymptomLogRequest {
  const factory _CreateSymptomLogRequest(
      {required final String symptomId,
      required final DateTime timestamp,
      required final List<String> associatedMedications,
      final String? severity,
      final String? notes,
      final int? intensityLevel}) = _$CreateSymptomLogRequestImpl;

  factory _CreateSymptomLogRequest.fromJson(Map<String, dynamic> json) =
      _$CreateSymptomLogRequestImpl.fromJson;

  @override
  String get symptomId;
  @override
  DateTime get timestamp;
  @override
  List<String> get associatedMedications;
  @override
  String? get severity;
  @override
  String? get notes;
  @override
  int? get intensityLevel;

  /// Create a copy of CreateSymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSymptomLogRequestImplCopyWith<_$CreateSymptomLogRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SymptomSearchResult _$SymptomSearchResultFromJson(Map<String, dynamic> json) {
  return _SymptomSearchResult.fromJson(json);
}

/// @nodoc
mixin _$SymptomSearchResult {
  List<Symptom> get symptoms => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this SymptomSearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomSearchResultCopyWith<SymptomSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomSearchResultCopyWith<$Res> {
  factory $SymptomSearchResultCopyWith(
          SymptomSearchResult value, $Res Function(SymptomSearchResult) then) =
      _$SymptomSearchResultCopyWithImpl<$Res, SymptomSearchResult>;
  @useResult
  $Res call({List<Symptom> symptoms, int total, int page, int limit});
}

/// @nodoc
class _$SymptomSearchResultCopyWithImpl<$Res, $Val extends SymptomSearchResult>
    implements $SymptomSearchResultCopyWith<$Res> {
  _$SymptomSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymptomSearchResultImplCopyWith<$Res>
    implements $SymptomSearchResultCopyWith<$Res> {
  factory _$$SymptomSearchResultImplCopyWith(_$SymptomSearchResultImpl value,
          $Res Function(_$SymptomSearchResultImpl) then) =
      __$$SymptomSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Symptom> symptoms, int total, int page, int limit});
}

/// @nodoc
class __$$SymptomSearchResultImplCopyWithImpl<$Res>
    extends _$SymptomSearchResultCopyWithImpl<$Res, _$SymptomSearchResultImpl>
    implements _$$SymptomSearchResultImplCopyWith<$Res> {
  __$$SymptomSearchResultImplCopyWithImpl(_$SymptomSearchResultImpl _value,
      $Res Function(_$SymptomSearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$SymptomSearchResultImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomSearchResultImpl implements _SymptomSearchResult {
  const _$SymptomSearchResultImpl(
      {required final List<Symptom> symptoms,
      required this.total,
      required this.page,
      required this.limit})
      : _symptoms = symptoms;

  factory _$SymptomSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomSearchResultImplFromJson(json);

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
  String toString() {
    return 'SymptomSearchResult(symptoms: $symptoms, total: $total, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomSearchResultImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_symptoms), total, page, limit);

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomSearchResultImplCopyWith<_$SymptomSearchResultImpl> get copyWith =>
      __$$SymptomSearchResultImplCopyWithImpl<_$SymptomSearchResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomSearchResultImplToJson(
      this,
    );
  }
}

abstract class _SymptomSearchResult implements SymptomSearchResult {
  const factory _SymptomSearchResult(
      {required final List<Symptom> symptoms,
      required final int total,
      required final int page,
      required final int limit}) = _$SymptomSearchResultImpl;

  factory _SymptomSearchResult.fromJson(Map<String, dynamic> json) =
      _$SymptomSearchResultImpl.fromJson;

  @override
  List<Symptom> get symptoms;
  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomSearchResultImplCopyWith<_$SymptomSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
