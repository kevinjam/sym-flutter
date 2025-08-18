// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Medication _$MedicationFromJson(Map<String, dynamic> json) {
  return _Medication.fromJson(json);
}

/// @nodoc
mixin _$Medication {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get dosage => throw _privateConstructorUsedError;
  List<String> get scheduleTimes =>
      throw _privateConstructorUsedError; // HH:MM format
  List<String> get linkedSymptoms => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get dosageForm => throw _privateConstructorUsedError;
  String? get status =>
      throw _privateConstructorUsedError; // active, paused, stopped, completed
  String? get priority =>
      throw _privateConstructorUsedError; // low, medium, high, critical
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get lastTaken => throw _privateConstructorUsedError;
  int? get totalDoses => throw _privateConstructorUsedError;
  int? get takenDoses => throw _privateConstructorUsedError;

  /// Serializes this Medication to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationCopyWith<Medication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationCopyWith<$Res> {
  factory $MedicationCopyWith(
          Medication value, $Res Function(Medication) then) =
      _$MedicationCopyWithImpl<$Res, Medication>;
  @useResult
  $Res call(
      {String id,
      String name,
      String dosage,
      List<String> scheduleTimes,
      List<String> linkedSymptoms,
      String? description,
      String? category,
      String? dosageForm,
      String? status,
      String? priority,
      DateTime? startDate,
      DateTime? endDate,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? lastTaken,
      int? totalDoses,
      int? takenDoses});
}

/// @nodoc
class _$MedicationCopyWithImpl<$Res, $Val extends Medication>
    implements $MedicationCopyWith<$Res> {
  _$MedicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dosage = null,
    Object? scheduleTimes = null,
    Object? linkedSymptoms = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? dosageForm = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastTaken = freezed,
    Object? totalDoses = freezed,
    Object? takenDoses = freezed,
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
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleTimes: null == scheduleTimes
          ? _value.scheduleTimes
          : scheduleTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      linkedSymptoms: null == linkedSymptoms
          ? _value.linkedSymptoms
          : linkedSymptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageForm: freezed == dosageForm
          ? _value.dosageForm
          : dosageForm // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTaken: freezed == lastTaken
          ? _value.lastTaken
          : lastTaken // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalDoses: freezed == totalDoses
          ? _value.totalDoses
          : totalDoses // ignore: cast_nullable_to_non_nullable
              as int?,
      takenDoses: freezed == takenDoses
          ? _value.takenDoses
          : takenDoses // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationImplCopyWith<$Res>
    implements $MedicationCopyWith<$Res> {
  factory _$$MedicationImplCopyWith(
          _$MedicationImpl value, $Res Function(_$MedicationImpl) then) =
      __$$MedicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String dosage,
      List<String> scheduleTimes,
      List<String> linkedSymptoms,
      String? description,
      String? category,
      String? dosageForm,
      String? status,
      String? priority,
      DateTime? startDate,
      DateTime? endDate,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? lastTaken,
      int? totalDoses,
      int? takenDoses});
}

/// @nodoc
class __$$MedicationImplCopyWithImpl<$Res>
    extends _$MedicationCopyWithImpl<$Res, _$MedicationImpl>
    implements _$$MedicationImplCopyWith<$Res> {
  __$$MedicationImplCopyWithImpl(
      _$MedicationImpl _value, $Res Function(_$MedicationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dosage = null,
    Object? scheduleTimes = null,
    Object? linkedSymptoms = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? dosageForm = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastTaken = freezed,
    Object? totalDoses = freezed,
    Object? takenDoses = freezed,
  }) {
    return _then(_$MedicationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleTimes: null == scheduleTimes
          ? _value._scheduleTimes
          : scheduleTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      linkedSymptoms: null == linkedSymptoms
          ? _value._linkedSymptoms
          : linkedSymptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageForm: freezed == dosageForm
          ? _value.dosageForm
          : dosageForm // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTaken: freezed == lastTaken
          ? _value.lastTaken
          : lastTaken // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalDoses: freezed == totalDoses
          ? _value.totalDoses
          : totalDoses // ignore: cast_nullable_to_non_nullable
              as int?,
      takenDoses: freezed == takenDoses
          ? _value.takenDoses
          : takenDoses // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationImpl implements _Medication {
  const _$MedicationImpl(
      {required this.id,
      required this.name,
      required this.dosage,
      required final List<String> scheduleTimes,
      required final List<String> linkedSymptoms,
      this.description,
      this.category,
      this.dosageForm,
      this.status,
      this.priority,
      this.startDate,
      this.endDate,
      this.createdAt,
      this.updatedAt,
      this.lastTaken,
      this.totalDoses,
      this.takenDoses})
      : _scheduleTimes = scheduleTimes,
        _linkedSymptoms = linkedSymptoms;

  factory _$MedicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String dosage;
  final List<String> _scheduleTimes;
  @override
  List<String> get scheduleTimes {
    if (_scheduleTimes is EqualUnmodifiableListView) return _scheduleTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleTimes);
  }

// HH:MM format
  final List<String> _linkedSymptoms;
// HH:MM format
  @override
  List<String> get linkedSymptoms {
    if (_linkedSymptoms is EqualUnmodifiableListView) return _linkedSymptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkedSymptoms);
  }

  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? dosageForm;
  @override
  final String? status;
// active, paused, stopped, completed
  @override
  final String? priority;
// low, medium, high, critical
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? lastTaken;
  @override
  final int? totalDoses;
  @override
  final int? takenDoses;

  @override
  String toString() {
    return 'Medication(id: $id, name: $name, dosage: $dosage, scheduleTimes: $scheduleTimes, linkedSymptoms: $linkedSymptoms, description: $description, category: $category, dosageForm: $dosageForm, status: $status, priority: $priority, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt, lastTaken: $lastTaken, totalDoses: $totalDoses, takenDoses: $takenDoses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            const DeepCollectionEquality()
                .equals(other._scheduleTimes, _scheduleTimes) &&
            const DeepCollectionEquality()
                .equals(other._linkedSymptoms, _linkedSymptoms) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dosageForm, dosageForm) ||
                other.dosageForm == dosageForm) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastTaken, lastTaken) ||
                other.lastTaken == lastTaken) &&
            (identical(other.totalDoses, totalDoses) ||
                other.totalDoses == totalDoses) &&
            (identical(other.takenDoses, takenDoses) ||
                other.takenDoses == takenDoses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      dosage,
      const DeepCollectionEquality().hash(_scheduleTimes),
      const DeepCollectionEquality().hash(_linkedSymptoms),
      description,
      category,
      dosageForm,
      status,
      priority,
      startDate,
      endDate,
      createdAt,
      updatedAt,
      lastTaken,
      totalDoses,
      takenDoses);

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationImplCopyWith<_$MedicationImpl> get copyWith =>
      __$$MedicationImplCopyWithImpl<_$MedicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationImplToJson(
      this,
    );
  }
}

abstract class _Medication implements Medication {
  const factory _Medication(
      {required final String id,
      required final String name,
      required final String dosage,
      required final List<String> scheduleTimes,
      required final List<String> linkedSymptoms,
      final String? description,
      final String? category,
      final String? dosageForm,
      final String? status,
      final String? priority,
      final DateTime? startDate,
      final DateTime? endDate,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? lastTaken,
      final int? totalDoses,
      final int? takenDoses}) = _$MedicationImpl;

  factory _Medication.fromJson(Map<String, dynamic> json) =
      _$MedicationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get dosage;
  @override
  List<String> get scheduleTimes; // HH:MM format
  @override
  List<String> get linkedSymptoms;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get dosageForm;
  @override
  String? get status; // active, paused, stopped, completed
  @override
  String? get priority; // low, medium, high, critical
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get lastTaken;
  @override
  int? get totalDoses;
  @override
  int? get takenDoses;

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationImplCopyWith<_$MedicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationSchedule _$MedicationScheduleFromJson(Map<String, dynamic> json) {
  return _MedicationSchedule.fromJson(json);
}

/// @nodoc
mixin _$MedicationSchedule {
  String get id => throw _privateConstructorUsedError;
  String get medicationId => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError; // HH:MM format
  List<int> get daysOfWeek =>
      throw _privateConstructorUsedError; // 1-7, Monday-Sunday
  bool? get isActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MedicationSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationScheduleCopyWith<MedicationSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationScheduleCopyWith<$Res> {
  factory $MedicationScheduleCopyWith(
          MedicationSchedule value, $Res Function(MedicationSchedule) then) =
      _$MedicationScheduleCopyWithImpl<$Res, MedicationSchedule>;
  @useResult
  $Res call(
      {String id,
      String medicationId,
      String time,
      List<int> daysOfWeek,
      bool? isActive,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$MedicationScheduleCopyWithImpl<$Res, $Val extends MedicationSchedule>
    implements $MedicationScheduleCopyWith<$Res> {
  _$MedicationScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicationId = null,
    Object? time = null,
    Object? daysOfWeek = null,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      daysOfWeek: null == daysOfWeek
          ? _value.daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$MedicationScheduleImplCopyWith<$Res>
    implements $MedicationScheduleCopyWith<$Res> {
  factory _$$MedicationScheduleImplCopyWith(_$MedicationScheduleImpl value,
          $Res Function(_$MedicationScheduleImpl) then) =
      __$$MedicationScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String medicationId,
      String time,
      List<int> daysOfWeek,
      bool? isActive,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$MedicationScheduleImplCopyWithImpl<$Res>
    extends _$MedicationScheduleCopyWithImpl<$Res, _$MedicationScheduleImpl>
    implements _$$MedicationScheduleImplCopyWith<$Res> {
  __$$MedicationScheduleImplCopyWithImpl(_$MedicationScheduleImpl _value,
      $Res Function(_$MedicationScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicationId = null,
    Object? time = null,
    Object? daysOfWeek = null,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MedicationScheduleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      daysOfWeek: null == daysOfWeek
          ? _value._daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$MedicationScheduleImpl implements _MedicationSchedule {
  const _$MedicationScheduleImpl(
      {required this.id,
      required this.medicationId,
      required this.time,
      required final List<int> daysOfWeek,
      this.isActive,
      this.createdAt,
      this.updatedAt})
      : _daysOfWeek = daysOfWeek;

  factory _$MedicationScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationScheduleImplFromJson(json);

  @override
  final String id;
  @override
  final String medicationId;
  @override
  final String time;
// HH:MM format
  final List<int> _daysOfWeek;
// HH:MM format
  @override
  List<int> get daysOfWeek {
    if (_daysOfWeek is EqualUnmodifiableListView) return _daysOfWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daysOfWeek);
  }

// 1-7, Monday-Sunday
  @override
  final bool? isActive;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MedicationSchedule(id: $id, medicationId: $medicationId, time: $time, daysOfWeek: $daysOfWeek, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.medicationId, medicationId) ||
                other.medicationId == medicationId) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other._daysOfWeek, _daysOfWeek) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
      medicationId,
      time,
      const DeepCollectionEquality().hash(_daysOfWeek),
      isActive,
      createdAt,
      updatedAt);

  /// Create a copy of MedicationSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationScheduleImplCopyWith<_$MedicationScheduleImpl> get copyWith =>
      __$$MedicationScheduleImplCopyWithImpl<_$MedicationScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationScheduleImplToJson(
      this,
    );
  }
}

abstract class _MedicationSchedule implements MedicationSchedule {
  const factory _MedicationSchedule(
      {required final String id,
      required final String medicationId,
      required final String time,
      required final List<int> daysOfWeek,
      final bool? isActive,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$MedicationScheduleImpl;

  factory _MedicationSchedule.fromJson(Map<String, dynamic> json) =
      _$MedicationScheduleImpl.fromJson;

  @override
  String get id;
  @override
  String get medicationId;
  @override
  String get time; // HH:MM format
  @override
  List<int> get daysOfWeek; // 1-7, Monday-Sunday
  @override
  bool? get isActive;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of MedicationSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationScheduleImplCopyWith<_$MedicationScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationLog _$MedicationLogFromJson(Map<String, dynamic> json) {
  return _MedicationLog.fromJson(json);
}

/// @nodoc
mixin _$MedicationLog {
  String get id => throw _privateConstructorUsedError;
  String get medicationId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // taken, missed, skipped
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this MedicationLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationLogCopyWith<MedicationLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationLogCopyWith<$Res> {
  factory $MedicationLogCopyWith(
          MedicationLog value, $Res Function(MedicationLog) then) =
      _$MedicationLogCopyWithImpl<$Res, MedicationLog>;
  @useResult
  $Res call(
      {String id,
      String medicationId,
      DateTime timestamp,
      String status,
      String? notes,
      DateTime? createdAt});
}

/// @nodoc
class _$MedicationLogCopyWithImpl<$Res, $Val extends MedicationLog>
    implements $MedicationLogCopyWith<$Res> {
  _$MedicationLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicationId = null,
    Object? timestamp = null,
    Object? status = null,
    Object? notes = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationLogImplCopyWith<$Res>
    implements $MedicationLogCopyWith<$Res> {
  factory _$$MedicationLogImplCopyWith(
          _$MedicationLogImpl value, $Res Function(_$MedicationLogImpl) then) =
      __$$MedicationLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String medicationId,
      DateTime timestamp,
      String status,
      String? notes,
      DateTime? createdAt});
}

/// @nodoc
class __$$MedicationLogImplCopyWithImpl<$Res>
    extends _$MedicationLogCopyWithImpl<$Res, _$MedicationLogImpl>
    implements _$$MedicationLogImplCopyWith<$Res> {
  __$$MedicationLogImplCopyWithImpl(
      _$MedicationLogImpl _value, $Res Function(_$MedicationLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicationId = null,
    Object? timestamp = null,
    Object? status = null,
    Object? notes = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MedicationLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationLogImpl implements _MedicationLog {
  const _$MedicationLogImpl(
      {required this.id,
      required this.medicationId,
      required this.timestamp,
      required this.status,
      this.notes,
      this.createdAt});

  factory _$MedicationLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationLogImplFromJson(json);

  @override
  final String id;
  @override
  final String medicationId;
  @override
  final DateTime timestamp;
  @override
  final String status;
// taken, missed, skipped
  @override
  final String? notes;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MedicationLog(id: $id, medicationId: $medicationId, timestamp: $timestamp, status: $status, notes: $notes, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.medicationId, medicationId) ||
                other.medicationId == medicationId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, medicationId, timestamp, status, notes, createdAt);

  /// Create a copy of MedicationLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationLogImplCopyWith<_$MedicationLogImpl> get copyWith =>
      __$$MedicationLogImplCopyWithImpl<_$MedicationLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationLogImplToJson(
      this,
    );
  }
}

abstract class _MedicationLog implements MedicationLog {
  const factory _MedicationLog(
      {required final String id,
      required final String medicationId,
      required final DateTime timestamp,
      required final String status,
      final String? notes,
      final DateTime? createdAt}) = _$MedicationLogImpl;

  factory _MedicationLog.fromJson(Map<String, dynamic> json) =
      _$MedicationLogImpl.fromJson;

  @override
  String get id;
  @override
  String get medicationId;
  @override
  DateTime get timestamp;
  @override
  String get status; // taken, missed, skipped
  @override
  String? get notes;
  @override
  DateTime? get createdAt;

  /// Create a copy of MedicationLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationLogImplCopyWith<_$MedicationLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateMedicationRequest _$CreateMedicationRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateMedicationRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateMedicationRequest {
  String get name => throw _privateConstructorUsedError;
  String get dosage => throw _privateConstructorUsedError;
  List<String> get scheduleTimes => throw _privateConstructorUsedError;
  List<String> get linkedSymptoms => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get dosageForm => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this CreateMedicationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateMedicationRequestCopyWith<CreateMedicationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMedicationRequestCopyWith<$Res> {
  factory $CreateMedicationRequestCopyWith(CreateMedicationRequest value,
          $Res Function(CreateMedicationRequest) then) =
      _$CreateMedicationRequestCopyWithImpl<$Res, CreateMedicationRequest>;
  @useResult
  $Res call(
      {String name,
      String dosage,
      List<String> scheduleTimes,
      List<String> linkedSymptoms,
      String? description,
      String? category,
      String? dosageForm,
      String? priority,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$CreateMedicationRequestCopyWithImpl<$Res,
        $Val extends CreateMedicationRequest>
    implements $CreateMedicationRequestCopyWith<$Res> {
  _$CreateMedicationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dosage = null,
    Object? scheduleTimes = null,
    Object? linkedSymptoms = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? dosageForm = freezed,
    Object? priority = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleTimes: null == scheduleTimes
          ? _value.scheduleTimes
          : scheduleTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      linkedSymptoms: null == linkedSymptoms
          ? _value.linkedSymptoms
          : linkedSymptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageForm: freezed == dosageForm
          ? _value.dosageForm
          : dosageForm // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateMedicationRequestImplCopyWith<$Res>
    implements $CreateMedicationRequestCopyWith<$Res> {
  factory _$$CreateMedicationRequestImplCopyWith(
          _$CreateMedicationRequestImpl value,
          $Res Function(_$CreateMedicationRequestImpl) then) =
      __$$CreateMedicationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String dosage,
      List<String> scheduleTimes,
      List<String> linkedSymptoms,
      String? description,
      String? category,
      String? dosageForm,
      String? priority,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$CreateMedicationRequestImplCopyWithImpl<$Res>
    extends _$CreateMedicationRequestCopyWithImpl<$Res,
        _$CreateMedicationRequestImpl>
    implements _$$CreateMedicationRequestImplCopyWith<$Res> {
  __$$CreateMedicationRequestImplCopyWithImpl(
      _$CreateMedicationRequestImpl _value,
      $Res Function(_$CreateMedicationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dosage = null,
    Object? scheduleTimes = null,
    Object? linkedSymptoms = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? dosageForm = freezed,
    Object? priority = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$CreateMedicationRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleTimes: null == scheduleTimes
          ? _value._scheduleTimes
          : scheduleTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      linkedSymptoms: null == linkedSymptoms
          ? _value._linkedSymptoms
          : linkedSymptoms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageForm: freezed == dosageForm
          ? _value.dosageForm
          : dosageForm // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateMedicationRequestImpl implements _CreateMedicationRequest {
  const _$CreateMedicationRequestImpl(
      {required this.name,
      required this.dosage,
      required final List<String> scheduleTimes,
      required final List<String> linkedSymptoms,
      this.description,
      this.category,
      this.dosageForm,
      this.priority,
      this.startDate,
      this.endDate})
      : _scheduleTimes = scheduleTimes,
        _linkedSymptoms = linkedSymptoms;

  factory _$CreateMedicationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateMedicationRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String dosage;
  final List<String> _scheduleTimes;
  @override
  List<String> get scheduleTimes {
    if (_scheduleTimes is EqualUnmodifiableListView) return _scheduleTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleTimes);
  }

  final List<String> _linkedSymptoms;
  @override
  List<String> get linkedSymptoms {
    if (_linkedSymptoms is EqualUnmodifiableListView) return _linkedSymptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkedSymptoms);
  }

  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? dosageForm;
  @override
  final String? priority;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'CreateMedicationRequest(name: $name, dosage: $dosage, scheduleTimes: $scheduleTimes, linkedSymptoms: $linkedSymptoms, description: $description, category: $category, dosageForm: $dosageForm, priority: $priority, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMedicationRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            const DeepCollectionEquality()
                .equals(other._scheduleTimes, _scheduleTimes) &&
            const DeepCollectionEquality()
                .equals(other._linkedSymptoms, _linkedSymptoms) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dosageForm, dosageForm) ||
                other.dosageForm == dosageForm) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      dosage,
      const DeepCollectionEquality().hash(_scheduleTimes),
      const DeepCollectionEquality().hash(_linkedSymptoms),
      description,
      category,
      dosageForm,
      priority,
      startDate,
      endDate);

  /// Create a copy of CreateMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMedicationRequestImplCopyWith<_$CreateMedicationRequestImpl>
      get copyWith => __$$CreateMedicationRequestImplCopyWithImpl<
          _$CreateMedicationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateMedicationRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateMedicationRequest implements CreateMedicationRequest {
  const factory _CreateMedicationRequest(
      {required final String name,
      required final String dosage,
      required final List<String> scheduleTimes,
      required final List<String> linkedSymptoms,
      final String? description,
      final String? category,
      final String? dosageForm,
      final String? priority,
      final DateTime? startDate,
      final DateTime? endDate}) = _$CreateMedicationRequestImpl;

  factory _CreateMedicationRequest.fromJson(Map<String, dynamic> json) =
      _$CreateMedicationRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get dosage;
  @override
  List<String> get scheduleTimes;
  @override
  List<String> get linkedSymptoms;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get dosageForm;
  @override
  String? get priority;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;

  /// Create a copy of CreateMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMedicationRequestImplCopyWith<_$CreateMedicationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
