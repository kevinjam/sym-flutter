// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_medication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientMedication _$PatientMedicationFromJson(Map<String, dynamic> json) {
  return _PatientMedication.fromJson(json);
}

/// @nodoc
mixin _$PatientMedication {
  String get id => throw _privateConstructorUsedError;
  String get patientId => throw _privateConstructorUsedError;
  String get medicationId => throw _privateConstructorUsedError;
  String? get prescribedBy => throw _privateConstructorUsedError;
  MedicationDosage get dosage => throw _privateConstructorUsedError;
  List<MedicationSchedule> get schedule => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get reasonForStopping => throw _privateConstructorUsedError;
  String? get stoppedBy => throw _privateConstructorUsedError;
  DateTime? get stoppedAt => throw _privateConstructorUsedError;
  int get adherenceScore => throw _privateConstructorUsedError;
  int get totalDoses => throw _privateConstructorUsedError;
  int get takenDoses => throw _privateConstructorUsedError;
  int get missedDoses => throw _privateConstructorUsedError;
  DateTime? get lastTaken => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt =>
      throw _privateConstructorUsedError; // Populated fields
  Medication? get medication => throw _privateConstructorUsedError;
  User? get prescribedByUser => throw _privateConstructorUsedError;

  /// Serializes this PatientMedication to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientMedication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientMedicationCopyWith<PatientMedication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientMedicationCopyWith<$Res> {
  factory $PatientMedicationCopyWith(
          PatientMedication value, $Res Function(PatientMedication) then) =
      _$PatientMedicationCopyWithImpl<$Res, PatientMedication>;
  @useResult
  $Res call(
      {String id,
      String patientId,
      String medicationId,
      String? prescribedBy,
      MedicationDosage dosage,
      List<MedicationSchedule> schedule,
      String priority,
      DateTime startDate,
      DateTime? endDate,
      bool isActive,
      String status,
      String? reasonForStopping,
      String? stoppedBy,
      DateTime? stoppedAt,
      int adherenceScore,
      int totalDoses,
      int takenDoses,
      int missedDoses,
      DateTime? lastTaken,
      String? notes,
      DateTime? createdAt,
      DateTime? updatedAt,
      Medication? medication,
      User? prescribedByUser});

  $MedicationDosageCopyWith<$Res> get dosage;
  $MedicationCopyWith<$Res>? get medication;
  $UserCopyWith<$Res>? get prescribedByUser;
}

/// @nodoc
class _$PatientMedicationCopyWithImpl<$Res, $Val extends PatientMedication>
    implements $PatientMedicationCopyWith<$Res> {
  _$PatientMedicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientMedication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? medicationId = null,
    Object? prescribedBy = freezed,
    Object? dosage = null,
    Object? schedule = null,
    Object? priority = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? status = null,
    Object? reasonForStopping = freezed,
    Object? stoppedBy = freezed,
    Object? stoppedAt = freezed,
    Object? adherenceScore = null,
    Object? totalDoses = null,
    Object? takenDoses = null,
    Object? missedDoses = null,
    Object? lastTaken = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? medication = freezed,
    Object? prescribedByUser = freezed,
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
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      prescribedBy: freezed == prescribedBy
          ? _value.prescribedBy
          : prescribedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as MedicationDosage,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<MedicationSchedule>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reasonForStopping: freezed == reasonForStopping
          ? _value.reasonForStopping
          : reasonForStopping // ignore: cast_nullable_to_non_nullable
              as String?,
      stoppedBy: freezed == stoppedBy
          ? _value.stoppedBy
          : stoppedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      stoppedAt: freezed == stoppedAt
          ? _value.stoppedAt
          : stoppedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adherenceScore: null == adherenceScore
          ? _value.adherenceScore
          : adherenceScore // ignore: cast_nullable_to_non_nullable
              as int,
      totalDoses: null == totalDoses
          ? _value.totalDoses
          : totalDoses // ignore: cast_nullable_to_non_nullable
              as int,
      takenDoses: null == takenDoses
          ? _value.takenDoses
          : takenDoses // ignore: cast_nullable_to_non_nullable
              as int,
      missedDoses: null == missedDoses
          ? _value.missedDoses
          : missedDoses // ignore: cast_nullable_to_non_nullable
              as int,
      lastTaken: freezed == lastTaken
          ? _value.lastTaken
          : lastTaken // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      medication: freezed == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as Medication?,
      prescribedByUser: freezed == prescribedByUser
          ? _value.prescribedByUser
          : prescribedByUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of PatientMedication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationDosageCopyWith<$Res> get dosage {
    return $MedicationDosageCopyWith<$Res>(_value.dosage, (value) {
      return _then(_value.copyWith(dosage: value) as $Val);
    });
  }

  /// Create a copy of PatientMedication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationCopyWith<$Res>? get medication {
    if (_value.medication == null) {
      return null;
    }

    return $MedicationCopyWith<$Res>(_value.medication!, (value) {
      return _then(_value.copyWith(medication: value) as $Val);
    });
  }

  /// Create a copy of PatientMedication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get prescribedByUser {
    if (_value.prescribedByUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.prescribedByUser!, (value) {
      return _then(_value.copyWith(prescribedByUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientMedicationImplCopyWith<$Res>
    implements $PatientMedicationCopyWith<$Res> {
  factory _$$PatientMedicationImplCopyWith(_$PatientMedicationImpl value,
          $Res Function(_$PatientMedicationImpl) then) =
      __$$PatientMedicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String patientId,
      String medicationId,
      String? prescribedBy,
      MedicationDosage dosage,
      List<MedicationSchedule> schedule,
      String priority,
      DateTime startDate,
      DateTime? endDate,
      bool isActive,
      String status,
      String? reasonForStopping,
      String? stoppedBy,
      DateTime? stoppedAt,
      int adherenceScore,
      int totalDoses,
      int takenDoses,
      int missedDoses,
      DateTime? lastTaken,
      String? notes,
      DateTime? createdAt,
      DateTime? updatedAt,
      Medication? medication,
      User? prescribedByUser});

  @override
  $MedicationDosageCopyWith<$Res> get dosage;
  @override
  $MedicationCopyWith<$Res>? get medication;
  @override
  $UserCopyWith<$Res>? get prescribedByUser;
}

/// @nodoc
class __$$PatientMedicationImplCopyWithImpl<$Res>
    extends _$PatientMedicationCopyWithImpl<$Res, _$PatientMedicationImpl>
    implements _$$PatientMedicationImplCopyWith<$Res> {
  __$$PatientMedicationImplCopyWithImpl(_$PatientMedicationImpl _value,
      $Res Function(_$PatientMedicationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientMedication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? medicationId = null,
    Object? prescribedBy = freezed,
    Object? dosage = null,
    Object? schedule = null,
    Object? priority = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? status = null,
    Object? reasonForStopping = freezed,
    Object? stoppedBy = freezed,
    Object? stoppedAt = freezed,
    Object? adherenceScore = null,
    Object? totalDoses = null,
    Object? takenDoses = null,
    Object? missedDoses = null,
    Object? lastTaken = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? medication = freezed,
    Object? prescribedByUser = freezed,
  }) {
    return _then(_$PatientMedicationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      prescribedBy: freezed == prescribedBy
          ? _value.prescribedBy
          : prescribedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as MedicationDosage,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<MedicationSchedule>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reasonForStopping: freezed == reasonForStopping
          ? _value.reasonForStopping
          : reasonForStopping // ignore: cast_nullable_to_non_nullable
              as String?,
      stoppedBy: freezed == stoppedBy
          ? _value.stoppedBy
          : stoppedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      stoppedAt: freezed == stoppedAt
          ? _value.stoppedAt
          : stoppedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adherenceScore: null == adherenceScore
          ? _value.adherenceScore
          : adherenceScore // ignore: cast_nullable_to_non_nullable
              as int,
      totalDoses: null == totalDoses
          ? _value.totalDoses
          : totalDoses // ignore: cast_nullable_to_non_nullable
              as int,
      takenDoses: null == takenDoses
          ? _value.takenDoses
          : takenDoses // ignore: cast_nullable_to_non_nullable
              as int,
      missedDoses: null == missedDoses
          ? _value.missedDoses
          : missedDoses // ignore: cast_nullable_to_non_nullable
              as int,
      lastTaken: freezed == lastTaken
          ? _value.lastTaken
          : lastTaken // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      medication: freezed == medication
          ? _value.medication
          : medication // ignore: cast_nullable_to_non_nullable
              as Medication?,
      prescribedByUser: freezed == prescribedByUser
          ? _value.prescribedByUser
          : prescribedByUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientMedicationImpl implements _PatientMedication {
  const _$PatientMedicationImpl(
      {required this.id,
      required this.patientId,
      required this.medicationId,
      this.prescribedBy,
      required this.dosage,
      final List<MedicationSchedule> schedule = const [],
      this.priority = 'medium',
      required this.startDate,
      this.endDate,
      this.isActive = true,
      this.status = 'active',
      this.reasonForStopping,
      this.stoppedBy,
      this.stoppedAt,
      this.adherenceScore = 0,
      this.totalDoses = 0,
      this.takenDoses = 0,
      this.missedDoses = 0,
      this.lastTaken,
      this.notes,
      this.createdAt,
      this.updatedAt,
      this.medication,
      this.prescribedByUser})
      : _schedule = schedule;

  factory _$PatientMedicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientMedicationImplFromJson(json);

  @override
  final String id;
  @override
  final String patientId;
  @override
  final String medicationId;
  @override
  final String? prescribedBy;
  @override
  final MedicationDosage dosage;
  final List<MedicationSchedule> _schedule;
  @override
  @JsonKey()
  List<MedicationSchedule> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  @JsonKey()
  final String priority;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final String status;
  @override
  final String? reasonForStopping;
  @override
  final String? stoppedBy;
  @override
  final DateTime? stoppedAt;
  @override
  @JsonKey()
  final int adherenceScore;
  @override
  @JsonKey()
  final int totalDoses;
  @override
  @JsonKey()
  final int takenDoses;
  @override
  @JsonKey()
  final int missedDoses;
  @override
  final DateTime? lastTaken;
  @override
  final String? notes;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
// Populated fields
  @override
  final Medication? medication;
  @override
  final User? prescribedByUser;

  @override
  String toString() {
    return 'PatientMedication(id: $id, patientId: $patientId, medicationId: $medicationId, prescribedBy: $prescribedBy, dosage: $dosage, schedule: $schedule, priority: $priority, startDate: $startDate, endDate: $endDate, isActive: $isActive, status: $status, reasonForStopping: $reasonForStopping, stoppedBy: $stoppedBy, stoppedAt: $stoppedAt, adherenceScore: $adherenceScore, totalDoses: $totalDoses, takenDoses: $takenDoses, missedDoses: $missedDoses, lastTaken: $lastTaken, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, medication: $medication, prescribedByUser: $prescribedByUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientMedicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.medicationId, medicationId) ||
                other.medicationId == medicationId) &&
            (identical(other.prescribedBy, prescribedBy) ||
                other.prescribedBy == prescribedBy) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reasonForStopping, reasonForStopping) ||
                other.reasonForStopping == reasonForStopping) &&
            (identical(other.stoppedBy, stoppedBy) ||
                other.stoppedBy == stoppedBy) &&
            (identical(other.stoppedAt, stoppedAt) ||
                other.stoppedAt == stoppedAt) &&
            (identical(other.adherenceScore, adherenceScore) ||
                other.adherenceScore == adherenceScore) &&
            (identical(other.totalDoses, totalDoses) ||
                other.totalDoses == totalDoses) &&
            (identical(other.takenDoses, takenDoses) ||
                other.takenDoses == takenDoses) &&
            (identical(other.missedDoses, missedDoses) ||
                other.missedDoses == missedDoses) &&
            (identical(other.lastTaken, lastTaken) ||
                other.lastTaken == lastTaken) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.medication, medication) ||
                other.medication == medication) &&
            (identical(other.prescribedByUser, prescribedByUser) ||
                other.prescribedByUser == prescribedByUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        patientId,
        medicationId,
        prescribedBy,
        dosage,
        const DeepCollectionEquality().hash(_schedule),
        priority,
        startDate,
        endDate,
        isActive,
        status,
        reasonForStopping,
        stoppedBy,
        stoppedAt,
        adherenceScore,
        totalDoses,
        takenDoses,
        missedDoses,
        lastTaken,
        notes,
        createdAt,
        updatedAt,
        medication,
        prescribedByUser
      ]);

  /// Create a copy of PatientMedication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientMedicationImplCopyWith<_$PatientMedicationImpl> get copyWith =>
      __$$PatientMedicationImplCopyWithImpl<_$PatientMedicationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientMedicationImplToJson(
      this,
    );
  }
}

abstract class _PatientMedication implements PatientMedication {
  const factory _PatientMedication(
      {required final String id,
      required final String patientId,
      required final String medicationId,
      final String? prescribedBy,
      required final MedicationDosage dosage,
      final List<MedicationSchedule> schedule,
      final String priority,
      required final DateTime startDate,
      final DateTime? endDate,
      final bool isActive,
      final String status,
      final String? reasonForStopping,
      final String? stoppedBy,
      final DateTime? stoppedAt,
      final int adherenceScore,
      final int totalDoses,
      final int takenDoses,
      final int missedDoses,
      final DateTime? lastTaken,
      final String? notes,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final Medication? medication,
      final User? prescribedByUser}) = _$PatientMedicationImpl;

  factory _PatientMedication.fromJson(Map<String, dynamic> json) =
      _$PatientMedicationImpl.fromJson;

  @override
  String get id;
  @override
  String get patientId;
  @override
  String get medicationId;
  @override
  String? get prescribedBy;
  @override
  MedicationDosage get dosage;
  @override
  List<MedicationSchedule> get schedule;
  @override
  String get priority;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  bool get isActive;
  @override
  String get status;
  @override
  String? get reasonForStopping;
  @override
  String? get stoppedBy;
  @override
  DateTime? get stoppedAt;
  @override
  int get adherenceScore;
  @override
  int get totalDoses;
  @override
  int get takenDoses;
  @override
  int get missedDoses;
  @override
  DateTime? get lastTaken;
  @override
  String? get notes;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt; // Populated fields
  @override
  Medication? get medication;
  @override
  User? get prescribedByUser;

  /// Create a copy of PatientMedication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientMedicationImplCopyWith<_$PatientMedicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationDosage _$MedicationDosageFromJson(Map<String, dynamic> json) {
  return _MedicationDosage.fromJson(json);
}

/// @nodoc
mixin _$MedicationDosage {
  double get amount => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;

  /// Serializes this MedicationDosage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationDosage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationDosageCopyWith<MedicationDosage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationDosageCopyWith<$Res> {
  factory $MedicationDosageCopyWith(
          MedicationDosage value, $Res Function(MedicationDosage) then) =
      _$MedicationDosageCopyWithImpl<$Res, MedicationDosage>;
  @useResult
  $Res call(
      {double amount, String unit, String frequency, String? instructions});
}

/// @nodoc
class _$MedicationDosageCopyWithImpl<$Res, $Val extends MedicationDosage>
    implements $MedicationDosageCopyWith<$Res> {
  _$MedicationDosageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationDosage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
    Object? frequency = null,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationDosageImplCopyWith<$Res>
    implements $MedicationDosageCopyWith<$Res> {
  factory _$$MedicationDosageImplCopyWith(_$MedicationDosageImpl value,
          $Res Function(_$MedicationDosageImpl) then) =
      __$$MedicationDosageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount, String unit, String frequency, String? instructions});
}

/// @nodoc
class __$$MedicationDosageImplCopyWithImpl<$Res>
    extends _$MedicationDosageCopyWithImpl<$Res, _$MedicationDosageImpl>
    implements _$$MedicationDosageImplCopyWith<$Res> {
  __$$MedicationDosageImplCopyWithImpl(_$MedicationDosageImpl _value,
      $Res Function(_$MedicationDosageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationDosage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
    Object? frequency = null,
    Object? instructions = freezed,
  }) {
    return _then(_$MedicationDosageImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationDosageImpl implements _MedicationDosage {
  const _$MedicationDosageImpl(
      {required this.amount,
      required this.unit,
      required this.frequency,
      this.instructions});

  factory _$MedicationDosageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationDosageImplFromJson(json);

  @override
  final double amount;
  @override
  final String unit;
  @override
  final String frequency;
  @override
  final String? instructions;

  @override
  String toString() {
    return 'MedicationDosage(amount: $amount, unit: $unit, frequency: $frequency, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationDosageImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, unit, frequency, instructions);

  /// Create a copy of MedicationDosage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationDosageImplCopyWith<_$MedicationDosageImpl> get copyWith =>
      __$$MedicationDosageImplCopyWithImpl<_$MedicationDosageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationDosageImplToJson(
      this,
    );
  }
}

abstract class _MedicationDosage implements MedicationDosage {
  const factory _MedicationDosage(
      {required final double amount,
      required final String unit,
      required final String frequency,
      final String? instructions}) = _$MedicationDosageImpl;

  factory _MedicationDosage.fromJson(Map<String, dynamic> json) =
      _$MedicationDosageImpl.fromJson;

  @override
  double get amount;
  @override
  String get unit;
  @override
  String get frequency;
  @override
  String? get instructions;

  /// Create a copy of MedicationDosage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationDosageImplCopyWith<_$MedicationDosageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationSchedule _$MedicationScheduleFromJson(Map<String, dynamic> json) {
  return _MedicationSchedule.fromJson(json);
}

/// @nodoc
mixin _$MedicationSchedule {
  String get time => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

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
  $Res call({String time, bool isActive});
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
    Object? time = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({String time, bool isActive});
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
    Object? time = null,
    Object? isActive = null,
  }) {
    return _then(_$MedicationScheduleImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationScheduleImpl implements _MedicationSchedule {
  const _$MedicationScheduleImpl({required this.time, required this.isActive});

  factory _$MedicationScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationScheduleImplFromJson(json);

  @override
  final String time;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'MedicationSchedule(time: $time, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationScheduleImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, isActive);

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
      {required final String time,
      required final bool isActive}) = _$MedicationScheduleImpl;

  factory _MedicationSchedule.fromJson(Map<String, dynamic> json) =
      _$MedicationScheduleImpl.fromJson;

  @override
  String get time;
  @override
  bool get isActive;

  /// Create a copy of MedicationSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationScheduleImplCopyWith<_$MedicationScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Medication _$MedicationFromJson(Map<String, dynamic> json) {
  return _Medication.fromJson(json);
}

/// @nodoc
mixin _$Medication {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get genericName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get dosageForm => throw _privateConstructorUsedError;
  String get strength => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  bool? get isApproved => throw _privateConstructorUsedError;
  List<SideEffect>? get sideEffects => throw _privateConstructorUsedError;
  List<Interaction>? get interactions => throw _privateConstructorUsedError;

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
      String? genericName,
      String category,
      String? description,
      String dosageForm,
      String strength,
      String? manufacturer,
      bool? isApproved,
      List<SideEffect>? sideEffects,
      List<Interaction>? interactions});
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
    Object? genericName = freezed,
    Object? category = null,
    Object? description = freezed,
    Object? dosageForm = null,
    Object? strength = null,
    Object? manufacturer = freezed,
    Object? isApproved = freezed,
    Object? sideEffects = freezed,
    Object? interactions = freezed,
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
      genericName: freezed == genericName
          ? _value.genericName
          : genericName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageForm: null == dosageForm
          ? _value.dosageForm
          : dosageForm // ignore: cast_nullable_to_non_nullable
              as String,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      sideEffects: freezed == sideEffects
          ? _value.sideEffects
          : sideEffects // ignore: cast_nullable_to_non_nullable
              as List<SideEffect>?,
      interactions: freezed == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as List<Interaction>?,
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
      String? genericName,
      String category,
      String? description,
      String dosageForm,
      String strength,
      String? manufacturer,
      bool? isApproved,
      List<SideEffect>? sideEffects,
      List<Interaction>? interactions});
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
    Object? genericName = freezed,
    Object? category = null,
    Object? description = freezed,
    Object? dosageForm = null,
    Object? strength = null,
    Object? manufacturer = freezed,
    Object? isApproved = freezed,
    Object? sideEffects = freezed,
    Object? interactions = freezed,
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
      genericName: freezed == genericName
          ? _value.genericName
          : genericName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dosageForm: null == dosageForm
          ? _value.dosageForm
          : dosageForm // ignore: cast_nullable_to_non_nullable
              as String,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      sideEffects: freezed == sideEffects
          ? _value._sideEffects
          : sideEffects // ignore: cast_nullable_to_non_nullable
              as List<SideEffect>?,
      interactions: freezed == interactions
          ? _value._interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as List<Interaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationImpl implements _Medication {
  const _$MedicationImpl(
      {required this.id,
      required this.name,
      this.genericName,
      required this.category,
      this.description,
      required this.dosageForm,
      required this.strength,
      this.manufacturer,
      this.isApproved,
      final List<SideEffect>? sideEffects,
      final List<Interaction>? interactions})
      : _sideEffects = sideEffects,
        _interactions = interactions;

  factory _$MedicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? genericName;
  @override
  final String category;
  @override
  final String? description;
  @override
  final String dosageForm;
  @override
  final String strength;
  @override
  final String? manufacturer;
  @override
  final bool? isApproved;
  final List<SideEffect>? _sideEffects;
  @override
  List<SideEffect>? get sideEffects {
    final value = _sideEffects;
    if (value == null) return null;
    if (_sideEffects is EqualUnmodifiableListView) return _sideEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Interaction>? _interactions;
  @override
  List<Interaction>? get interactions {
    final value = _interactions;
    if (value == null) return null;
    if (_interactions is EqualUnmodifiableListView) return _interactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Medication(id: $id, name: $name, genericName: $genericName, category: $category, description: $description, dosageForm: $dosageForm, strength: $strength, manufacturer: $manufacturer, isApproved: $isApproved, sideEffects: $sideEffects, interactions: $interactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genericName, genericName) ||
                other.genericName == genericName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dosageForm, dosageForm) ||
                other.dosageForm == dosageForm) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            const DeepCollectionEquality()
                .equals(other._sideEffects, _sideEffects) &&
            const DeepCollectionEquality()
                .equals(other._interactions, _interactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      genericName,
      category,
      description,
      dosageForm,
      strength,
      manufacturer,
      isApproved,
      const DeepCollectionEquality().hash(_sideEffects),
      const DeepCollectionEquality().hash(_interactions));

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
      final String? genericName,
      required final String category,
      final String? description,
      required final String dosageForm,
      required final String strength,
      final String? manufacturer,
      final bool? isApproved,
      final List<SideEffect>? sideEffects,
      final List<Interaction>? interactions}) = _$MedicationImpl;

  factory _Medication.fromJson(Map<String, dynamic> json) =
      _$MedicationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get genericName;
  @override
  String get category;
  @override
  String? get description;
  @override
  String get dosageForm;
  @override
  String get strength;
  @override
  String? get manufacturer;
  @override
  bool? get isApproved;
  @override
  List<SideEffect>? get sideEffects;
  @override
  List<Interaction>? get interactions;

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationImplCopyWith<_$MedicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SideEffect _$SideEffectFromJson(Map<String, dynamic> json) {
  return _SideEffect.fromJson(json);
}

/// @nodoc
mixin _$SideEffect {
  String get name => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this SideEffect to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SideEffectCopyWith<SideEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideEffectCopyWith<$Res> {
  factory $SideEffectCopyWith(
          SideEffect value, $Res Function(SideEffect) then) =
      _$SideEffectCopyWithImpl<$Res, SideEffect>;
  @useResult
  $Res call({String name, String severity, String? description});
}

/// @nodoc
class _$SideEffectCopyWithImpl<$Res, $Val extends SideEffect>
    implements $SideEffectCopyWith<$Res> {
  _$SideEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SideEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? severity = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SideEffectImplCopyWith<$Res>
    implements $SideEffectCopyWith<$Res> {
  factory _$$SideEffectImplCopyWith(
          _$SideEffectImpl value, $Res Function(_$SideEffectImpl) then) =
      __$$SideEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String severity, String? description});
}

/// @nodoc
class __$$SideEffectImplCopyWithImpl<$Res>
    extends _$SideEffectCopyWithImpl<$Res, _$SideEffectImpl>
    implements _$$SideEffectImplCopyWith<$Res> {
  __$$SideEffectImplCopyWithImpl(
      _$SideEffectImpl _value, $Res Function(_$SideEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SideEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? severity = null,
    Object? description = freezed,
  }) {
    return _then(_$SideEffectImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SideEffectImpl implements _SideEffect {
  const _$SideEffectImpl(
      {required this.name, required this.severity, this.description});

  factory _$SideEffectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SideEffectImplFromJson(json);

  @override
  final String name;
  @override
  final String severity;
  @override
  final String? description;

  @override
  String toString() {
    return 'SideEffect(name: $name, severity: $severity, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SideEffectImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, severity, description);

  /// Create a copy of SideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SideEffectImplCopyWith<_$SideEffectImpl> get copyWith =>
      __$$SideEffectImplCopyWithImpl<_$SideEffectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SideEffectImplToJson(
      this,
    );
  }
}

abstract class _SideEffect implements SideEffect {
  const factory _SideEffect(
      {required final String name,
      required final String severity,
      final String? description}) = _$SideEffectImpl;

  factory _SideEffect.fromJson(Map<String, dynamic> json) =
      _$SideEffectImpl.fromJson;

  @override
  String get name;
  @override
  String get severity;
  @override
  String? get description;

  /// Create a copy of SideEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SideEffectImplCopyWith<_$SideEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Interaction _$InteractionFromJson(Map<String, dynamic> json) {
  return _Interaction.fromJson(json);
}

/// @nodoc
mixin _$Interaction {
  String get medicationName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;

  /// Serializes this Interaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionCopyWith<Interaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionCopyWith<$Res> {
  factory $InteractionCopyWith(
          Interaction value, $Res Function(Interaction) then) =
      _$InteractionCopyWithImpl<$Res, Interaction>;
  @useResult
  $Res call({String medicationName, String description, String severity});
}

/// @nodoc
class _$InteractionCopyWithImpl<$Res, $Val extends Interaction>
    implements $InteractionCopyWith<$Res> {
  _$InteractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationName = null,
    Object? description = null,
    Object? severity = null,
  }) {
    return _then(_value.copyWith(
      medicationName: null == medicationName
          ? _value.medicationName
          : medicationName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractionImplCopyWith<$Res>
    implements $InteractionCopyWith<$Res> {
  factory _$$InteractionImplCopyWith(
          _$InteractionImpl value, $Res Function(_$InteractionImpl) then) =
      __$$InteractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String medicationName, String description, String severity});
}

/// @nodoc
class __$$InteractionImplCopyWithImpl<$Res>
    extends _$InteractionCopyWithImpl<$Res, _$InteractionImpl>
    implements _$$InteractionImplCopyWith<$Res> {
  __$$InteractionImplCopyWithImpl(
      _$InteractionImpl _value, $Res Function(_$InteractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationName = null,
    Object? description = null,
    Object? severity = null,
  }) {
    return _then(_$InteractionImpl(
      medicationName: null == medicationName
          ? _value.medicationName
          : medicationName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractionImpl implements _Interaction {
  const _$InteractionImpl(
      {required this.medicationName,
      required this.description,
      required this.severity});

  factory _$InteractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionImplFromJson(json);

  @override
  final String medicationName;
  @override
  final String description;
  @override
  final String severity;

  @override
  String toString() {
    return 'Interaction(medicationName: $medicationName, description: $description, severity: $severity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionImpl &&
            (identical(other.medicationName, medicationName) ||
                other.medicationName == medicationName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.severity, severity) ||
                other.severity == severity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, medicationName, description, severity);

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionImplCopyWith<_$InteractionImpl> get copyWith =>
      __$$InteractionImplCopyWithImpl<_$InteractionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionImplToJson(
      this,
    );
  }
}

abstract class _Interaction implements Interaction {
  const factory _Interaction(
      {required final String medicationName,
      required final String description,
      required final String severity}) = _$InteractionImpl;

  factory _Interaction.fromJson(Map<String, dynamic> json) =
      _$InteractionImpl.fromJson;

  @override
  String get medicationName;
  @override
  String get description;
  @override
  String get severity;

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionImplCopyWith<_$InteractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

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
      {String id,
      String firstName,
      String lastName,
      String email,
      String role});
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
    Object? role = null,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String id,
      String firstName,
      String lastName,
      String email,
      String role});
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
    Object? role = null,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.role});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String role;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, email: $email, role: $role)';
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
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, email, role);

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
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String role}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get role;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddPatientMedicationRequest _$AddPatientMedicationRequestFromJson(
    Map<String, dynamic> json) {
  return _AddPatientMedicationRequest.fromJson(json);
}

/// @nodoc
mixin _$AddPatientMedicationRequest {
  String get medicationId => throw _privateConstructorUsedError;
  MedicationDosage get dosage => throw _privateConstructorUsedError;
  List<MedicationSchedule> get schedule => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this AddPatientMedicationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddPatientMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPatientMedicationRequestCopyWith<AddPatientMedicationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPatientMedicationRequestCopyWith<$Res> {
  factory $AddPatientMedicationRequestCopyWith(
          AddPatientMedicationRequest value,
          $Res Function(AddPatientMedicationRequest) then) =
      _$AddPatientMedicationRequestCopyWithImpl<$Res,
          AddPatientMedicationRequest>;
  @useResult
  $Res call(
      {String medicationId,
      MedicationDosage dosage,
      List<MedicationSchedule> schedule,
      String? priority,
      DateTime? startDate,
      DateTime? endDate,
      String? notes});

  $MedicationDosageCopyWith<$Res> get dosage;
}

/// @nodoc
class _$AddPatientMedicationRequestCopyWithImpl<$Res,
        $Val extends AddPatientMedicationRequest>
    implements $AddPatientMedicationRequestCopyWith<$Res> {
  _$AddPatientMedicationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPatientMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationId = null,
    Object? dosage = null,
    Object? schedule = null,
    Object? priority = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as MedicationDosage,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<MedicationSchedule>,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AddPatientMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationDosageCopyWith<$Res> get dosage {
    return $MedicationDosageCopyWith<$Res>(_value.dosage, (value) {
      return _then(_value.copyWith(dosage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddPatientMedicationRequestImplCopyWith<$Res>
    implements $AddPatientMedicationRequestCopyWith<$Res> {
  factory _$$AddPatientMedicationRequestImplCopyWith(
          _$AddPatientMedicationRequestImpl value,
          $Res Function(_$AddPatientMedicationRequestImpl) then) =
      __$$AddPatientMedicationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String medicationId,
      MedicationDosage dosage,
      List<MedicationSchedule> schedule,
      String? priority,
      DateTime? startDate,
      DateTime? endDate,
      String? notes});

  @override
  $MedicationDosageCopyWith<$Res> get dosage;
}

/// @nodoc
class __$$AddPatientMedicationRequestImplCopyWithImpl<$Res>
    extends _$AddPatientMedicationRequestCopyWithImpl<$Res,
        _$AddPatientMedicationRequestImpl>
    implements _$$AddPatientMedicationRequestImplCopyWith<$Res> {
  __$$AddPatientMedicationRequestImplCopyWithImpl(
      _$AddPatientMedicationRequestImpl _value,
      $Res Function(_$AddPatientMedicationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPatientMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationId = null,
    Object? dosage = null,
    Object? schedule = null,
    Object? priority = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$AddPatientMedicationRequestImpl(
      medicationId: null == medicationId
          ? _value.medicationId
          : medicationId // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as MedicationDosage,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<MedicationSchedule>,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddPatientMedicationRequestImpl
    implements _AddPatientMedicationRequest {
  const _$AddPatientMedicationRequestImpl(
      {required this.medicationId,
      required this.dosage,
      required final List<MedicationSchedule> schedule,
      this.priority,
      this.startDate,
      this.endDate,
      this.notes})
      : _schedule = schedule;

  factory _$AddPatientMedicationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddPatientMedicationRequestImplFromJson(json);

  @override
  final String medicationId;
  @override
  final MedicationDosage dosage;
  final List<MedicationSchedule> _schedule;
  @override
  List<MedicationSchedule> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  final String? priority;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? notes;

  @override
  String toString() {
    return 'AddPatientMedicationRequest(medicationId: $medicationId, dosage: $dosage, schedule: $schedule, priority: $priority, startDate: $startDate, endDate: $endDate, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPatientMedicationRequestImpl &&
            (identical(other.medicationId, medicationId) ||
                other.medicationId == medicationId) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      medicationId,
      dosage,
      const DeepCollectionEquality().hash(_schedule),
      priority,
      startDate,
      endDate,
      notes);

  /// Create a copy of AddPatientMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPatientMedicationRequestImplCopyWith<_$AddPatientMedicationRequestImpl>
      get copyWith => __$$AddPatientMedicationRequestImplCopyWithImpl<
          _$AddPatientMedicationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPatientMedicationRequestImplToJson(
      this,
    );
  }
}

abstract class _AddPatientMedicationRequest
    implements AddPatientMedicationRequest {
  const factory _AddPatientMedicationRequest(
      {required final String medicationId,
      required final MedicationDosage dosage,
      required final List<MedicationSchedule> schedule,
      final String? priority,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? notes}) = _$AddPatientMedicationRequestImpl;

  factory _AddPatientMedicationRequest.fromJson(Map<String, dynamic> json) =
      _$AddPatientMedicationRequestImpl.fromJson;

  @override
  String get medicationId;
  @override
  MedicationDosage get dosage;
  @override
  List<MedicationSchedule> get schedule;
  @override
  String? get priority;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get notes;

  /// Create a copy of AddPatientMedicationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPatientMedicationRequestImplCopyWith<_$AddPatientMedicationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PatientMedicationResponse _$PatientMedicationResponseFromJson(
    Map<String, dynamic> json) {
  return _PatientMedicationResponse.fromJson(json);
}

/// @nodoc
mixin _$PatientMedicationResponse {
  String get message => throw _privateConstructorUsedError;
  PatientMedication get patientMedication => throw _privateConstructorUsedError;

  /// Serializes this PatientMedicationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientMedicationResponseCopyWith<PatientMedicationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientMedicationResponseCopyWith<$Res> {
  factory $PatientMedicationResponseCopyWith(PatientMedicationResponse value,
          $Res Function(PatientMedicationResponse) then) =
      _$PatientMedicationResponseCopyWithImpl<$Res, PatientMedicationResponse>;
  @useResult
  $Res call({String message, PatientMedication patientMedication});

  $PatientMedicationCopyWith<$Res> get patientMedication;
}

/// @nodoc
class _$PatientMedicationResponseCopyWithImpl<$Res,
        $Val extends PatientMedicationResponse>
    implements $PatientMedicationResponseCopyWith<$Res> {
  _$PatientMedicationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? patientMedication = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      patientMedication: null == patientMedication
          ? _value.patientMedication
          : patientMedication // ignore: cast_nullable_to_non_nullable
              as PatientMedication,
    ) as $Val);
  }

  /// Create a copy of PatientMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatientMedicationCopyWith<$Res> get patientMedication {
    return $PatientMedicationCopyWith<$Res>(_value.patientMedication, (value) {
      return _then(_value.copyWith(patientMedication: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientMedicationResponseImplCopyWith<$Res>
    implements $PatientMedicationResponseCopyWith<$Res> {
  factory _$$PatientMedicationResponseImplCopyWith(
          _$PatientMedicationResponseImpl value,
          $Res Function(_$PatientMedicationResponseImpl) then) =
      __$$PatientMedicationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, PatientMedication patientMedication});

  @override
  $PatientMedicationCopyWith<$Res> get patientMedication;
}

/// @nodoc
class __$$PatientMedicationResponseImplCopyWithImpl<$Res>
    extends _$PatientMedicationResponseCopyWithImpl<$Res,
        _$PatientMedicationResponseImpl>
    implements _$$PatientMedicationResponseImplCopyWith<$Res> {
  __$$PatientMedicationResponseImplCopyWithImpl(
      _$PatientMedicationResponseImpl _value,
      $Res Function(_$PatientMedicationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? patientMedication = null,
  }) {
    return _then(_$PatientMedicationResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      patientMedication: null == patientMedication
          ? _value.patientMedication
          : patientMedication // ignore: cast_nullable_to_non_nullable
              as PatientMedication,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientMedicationResponseImpl implements _PatientMedicationResponse {
  const _$PatientMedicationResponseImpl(
      {required this.message, required this.patientMedication});

  factory _$PatientMedicationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientMedicationResponseImplFromJson(json);

  @override
  final String message;
  @override
  final PatientMedication patientMedication;

  @override
  String toString() {
    return 'PatientMedicationResponse(message: $message, patientMedication: $patientMedication)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientMedicationResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.patientMedication, patientMedication) ||
                other.patientMedication == patientMedication));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, patientMedication);

  /// Create a copy of PatientMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientMedicationResponseImplCopyWith<_$PatientMedicationResponseImpl>
      get copyWith => __$$PatientMedicationResponseImplCopyWithImpl<
          _$PatientMedicationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientMedicationResponseImplToJson(
      this,
    );
  }
}

abstract class _PatientMedicationResponse implements PatientMedicationResponse {
  const factory _PatientMedicationResponse(
          {required final String message,
          required final PatientMedication patientMedication}) =
      _$PatientMedicationResponseImpl;

  factory _PatientMedicationResponse.fromJson(Map<String, dynamic> json) =
      _$PatientMedicationResponseImpl.fromJson;

  @override
  String get message;
  @override
  PatientMedication get patientMedication;

  /// Create a copy of PatientMedicationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientMedicationResponseImplCopyWith<_$PatientMedicationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PatientMedicationsResponse _$PatientMedicationsResponseFromJson(
    Map<String, dynamic> json) {
  return _PatientMedicationsResponse.fromJson(json);
}

/// @nodoc
mixin _$PatientMedicationsResponse {
  List<PatientMedication> get medications => throw _privateConstructorUsedError;

  /// Serializes this PatientMedicationsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientMedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientMedicationsResponseCopyWith<PatientMedicationsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientMedicationsResponseCopyWith<$Res> {
  factory $PatientMedicationsResponseCopyWith(PatientMedicationsResponse value,
          $Res Function(PatientMedicationsResponse) then) =
      _$PatientMedicationsResponseCopyWithImpl<$Res,
          PatientMedicationsResponse>;
  @useResult
  $Res call({List<PatientMedication> medications});
}

/// @nodoc
class _$PatientMedicationsResponseCopyWithImpl<$Res,
        $Val extends PatientMedicationsResponse>
    implements $PatientMedicationsResponseCopyWith<$Res> {
  _$PatientMedicationsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientMedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medications = null,
  }) {
    return _then(_value.copyWith(
      medications: null == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<PatientMedication>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientMedicationsResponseImplCopyWith<$Res>
    implements $PatientMedicationsResponseCopyWith<$Res> {
  factory _$$PatientMedicationsResponseImplCopyWith(
          _$PatientMedicationsResponseImpl value,
          $Res Function(_$PatientMedicationsResponseImpl) then) =
      __$$PatientMedicationsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PatientMedication> medications});
}

/// @nodoc
class __$$PatientMedicationsResponseImplCopyWithImpl<$Res>
    extends _$PatientMedicationsResponseCopyWithImpl<$Res,
        _$PatientMedicationsResponseImpl>
    implements _$$PatientMedicationsResponseImplCopyWith<$Res> {
  __$$PatientMedicationsResponseImplCopyWithImpl(
      _$PatientMedicationsResponseImpl _value,
      $Res Function(_$PatientMedicationsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientMedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medications = null,
  }) {
    return _then(_$PatientMedicationsResponseImpl(
      medications: null == medications
          ? _value._medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<PatientMedication>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientMedicationsResponseImpl implements _PatientMedicationsResponse {
  const _$PatientMedicationsResponseImpl(
      {required final List<PatientMedication> medications})
      : _medications = medications;

  factory _$PatientMedicationsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PatientMedicationsResponseImplFromJson(json);

  final List<PatientMedication> _medications;
  @override
  List<PatientMedication> get medications {
    if (_medications is EqualUnmodifiableListView) return _medications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medications);
  }

  @override
  String toString() {
    return 'PatientMedicationsResponse(medications: $medications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientMedicationsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._medications, _medications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_medications));

  /// Create a copy of PatientMedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientMedicationsResponseImplCopyWith<_$PatientMedicationsResponseImpl>
      get copyWith => __$$PatientMedicationsResponseImplCopyWithImpl<
          _$PatientMedicationsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientMedicationsResponseImplToJson(
      this,
    );
  }
}

abstract class _PatientMedicationsResponse
    implements PatientMedicationsResponse {
  const factory _PatientMedicationsResponse(
          {required final List<PatientMedication> medications}) =
      _$PatientMedicationsResponseImpl;

  factory _PatientMedicationsResponse.fromJson(Map<String, dynamic> json) =
      _$PatientMedicationsResponseImpl.fromJson;

  @override
  List<PatientMedication> get medications;

  /// Create a copy of PatientMedicationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientMedicationsResponseImplCopyWith<_$PatientMedicationsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
