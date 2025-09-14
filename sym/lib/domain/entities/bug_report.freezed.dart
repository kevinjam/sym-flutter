// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bug_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BugReport _$BugReportFromJson(Map<String, dynamic> json) {
  return _BugReport.fromJson(json);
}

/// @nodoc
mixin _$BugReport {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  DeviceInfo get deviceInfo => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  String get userFullName => throw _privateConstructorUsedError;
  String? get adminResponse => throw _privateConstructorUsedError;
  DateTime? get adminRespondedAt => throw _privateConstructorUsedError;
  String? get adminRespondedBy => throw _privateConstructorUsedError;
  String? get stepsToReproduce => throw _privateConstructorUsedError;
  String? get expectedBehavior => throw _privateConstructorUsedError;
  String? get actualBehavior => throw _privateConstructorUsedError;
  List<Attachment> get attachments => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BugReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportCopyWith<BugReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportCopyWith<$Res> {
  factory $BugReportCopyWith(BugReport value, $Res Function(BugReport) then) =
      _$BugReportCopyWithImpl<$Res, BugReport>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String userId,
      String category,
      String severity,
      String title,
      String description,
      String status,
      String priority,
      DeviceInfo deviceInfo,
      String userEmail,
      String userFullName,
      String? adminResponse,
      DateTime? adminRespondedAt,
      String? adminRespondedBy,
      String? stepsToReproduce,
      String? expectedBehavior,
      String? actualBehavior,
      List<Attachment> attachments,
      DateTime createdAt,
      DateTime updatedAt});

  $DeviceInfoCopyWith<$Res> get deviceInfo;
}

/// @nodoc
class _$BugReportCopyWithImpl<$Res, $Val extends BugReport>
    implements $BugReportCopyWith<$Res> {
  _$BugReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? category = null,
    Object? severity = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? priority = null,
    Object? deviceInfo = null,
    Object? userEmail = null,
    Object? userFullName = null,
    Object? adminResponse = freezed,
    Object? adminRespondedAt = freezed,
    Object? adminRespondedBy = freezed,
    Object? stepsToReproduce = freezed,
    Object? expectedBehavior = freezed,
    Object? actualBehavior = freezed,
    Object? attachments = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userFullName: null == userFullName
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String,
      adminResponse: freezed == adminResponse
          ? _value.adminResponse
          : adminResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      adminRespondedAt: freezed == adminRespondedAt
          ? _value.adminRespondedAt
          : adminRespondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adminRespondedBy: freezed == adminRespondedBy
          ? _value.adminRespondedBy
          : adminRespondedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      stepsToReproduce: freezed == stepsToReproduce
          ? _value.stepsToReproduce
          : stepsToReproduce // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedBehavior: freezed == expectedBehavior
          ? _value.expectedBehavior
          : expectedBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      actualBehavior: freezed == actualBehavior
          ? _value.actualBehavior
          : actualBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
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

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res> get deviceInfo {
    return $DeviceInfoCopyWith<$Res>(_value.deviceInfo, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BugReportImplCopyWith<$Res>
    implements $BugReportCopyWith<$Res> {
  factory _$$BugReportImplCopyWith(
          _$BugReportImpl value, $Res Function(_$BugReportImpl) then) =
      __$$BugReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String userId,
      String category,
      String severity,
      String title,
      String description,
      String status,
      String priority,
      DeviceInfo deviceInfo,
      String userEmail,
      String userFullName,
      String? adminResponse,
      DateTime? adminRespondedAt,
      String? adminRespondedBy,
      String? stepsToReproduce,
      String? expectedBehavior,
      String? actualBehavior,
      List<Attachment> attachments,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $DeviceInfoCopyWith<$Res> get deviceInfo;
}

/// @nodoc
class __$$BugReportImplCopyWithImpl<$Res>
    extends _$BugReportCopyWithImpl<$Res, _$BugReportImpl>
    implements _$$BugReportImplCopyWith<$Res> {
  __$$BugReportImplCopyWithImpl(
      _$BugReportImpl _value, $Res Function(_$BugReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? category = null,
    Object? severity = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? priority = null,
    Object? deviceInfo = null,
    Object? userEmail = null,
    Object? userFullName = null,
    Object? adminResponse = freezed,
    Object? adminRespondedAt = freezed,
    Object? adminRespondedBy = freezed,
    Object? stepsToReproduce = freezed,
    Object? expectedBehavior = freezed,
    Object? actualBehavior = freezed,
    Object? attachments = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$BugReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userFullName: null == userFullName
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String,
      adminResponse: freezed == adminResponse
          ? _value.adminResponse
          : adminResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      adminRespondedAt: freezed == adminRespondedAt
          ? _value.adminRespondedAt
          : adminRespondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adminRespondedBy: freezed == adminRespondedBy
          ? _value.adminRespondedBy
          : adminRespondedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      stepsToReproduce: freezed == stepsToReproduce
          ? _value.stepsToReproduce
          : stepsToReproduce // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedBehavior: freezed == expectedBehavior
          ? _value.expectedBehavior
          : expectedBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      actualBehavior: freezed == actualBehavior
          ? _value.actualBehavior
          : actualBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
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
class _$BugReportImpl implements _BugReport {
  const _$BugReportImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.userId,
      required this.category,
      required this.severity,
      required this.title,
      required this.description,
      required this.status,
      required this.priority,
      required this.deviceInfo,
      required this.userEmail,
      required this.userFullName,
      this.adminResponse,
      this.adminRespondedAt,
      this.adminRespondedBy,
      this.stepsToReproduce,
      this.expectedBehavior,
      this.actualBehavior,
      final List<Attachment> attachments = const [],
      required this.createdAt,
      required this.updatedAt})
      : _attachments = attachments;

  factory _$BugReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String userId;
  @override
  final String category;
  @override
  final String severity;
  @override
  final String title;
  @override
  final String description;
  @override
  final String status;
  @override
  final String priority;
  @override
  final DeviceInfo deviceInfo;
  @override
  final String userEmail;
  @override
  final String userFullName;
  @override
  final String? adminResponse;
  @override
  final DateTime? adminRespondedAt;
  @override
  final String? adminRespondedBy;
  @override
  final String? stepsToReproduce;
  @override
  final String? expectedBehavior;
  @override
  final String? actualBehavior;
  final List<Attachment> _attachments;
  @override
  @JsonKey()
  List<Attachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'BugReport(id: $id, userId: $userId, category: $category, severity: $severity, title: $title, description: $description, status: $status, priority: $priority, deviceInfo: $deviceInfo, userEmail: $userEmail, userFullName: $userFullName, adminResponse: $adminResponse, adminRespondedAt: $adminRespondedAt, adminRespondedBy: $adminRespondedBy, stepsToReproduce: $stepsToReproduce, expectedBehavior: $expectedBehavior, actualBehavior: $actualBehavior, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userFullName, userFullName) ||
                other.userFullName == userFullName) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse) &&
            (identical(other.adminRespondedAt, adminRespondedAt) ||
                other.adminRespondedAt == adminRespondedAt) &&
            (identical(other.adminRespondedBy, adminRespondedBy) ||
                other.adminRespondedBy == adminRespondedBy) &&
            (identical(other.stepsToReproduce, stepsToReproduce) ||
                other.stepsToReproduce == stepsToReproduce) &&
            (identical(other.expectedBehavior, expectedBehavior) ||
                other.expectedBehavior == expectedBehavior) &&
            (identical(other.actualBehavior, actualBehavior) ||
                other.actualBehavior == actualBehavior) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
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
        userId,
        category,
        severity,
        title,
        description,
        status,
        priority,
        deviceInfo,
        userEmail,
        userFullName,
        adminResponse,
        adminRespondedAt,
        adminRespondedBy,
        stepsToReproduce,
        expectedBehavior,
        actualBehavior,
        const DeepCollectionEquality().hash(_attachments),
        createdAt,
        updatedAt
      ]);

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportImplCopyWith<_$BugReportImpl> get copyWith =>
      __$$BugReportImplCopyWithImpl<_$BugReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportImplToJson(
      this,
    );
  }
}

abstract class _BugReport implements BugReport {
  const factory _BugReport(
      {@JsonKey(name: '_id') required final String id,
      required final String userId,
      required final String category,
      required final String severity,
      required final String title,
      required final String description,
      required final String status,
      required final String priority,
      required final DeviceInfo deviceInfo,
      required final String userEmail,
      required final String userFullName,
      final String? adminResponse,
      final DateTime? adminRespondedAt,
      final String? adminRespondedBy,
      final String? stepsToReproduce,
      final String? expectedBehavior,
      final String? actualBehavior,
      final List<Attachment> attachments,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$BugReportImpl;

  factory _BugReport.fromJson(Map<String, dynamic> json) =
      _$BugReportImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get userId;
  @override
  String get category;
  @override
  String get severity;
  @override
  String get title;
  @override
  String get description;
  @override
  String get status;
  @override
  String get priority;
  @override
  DeviceInfo get deviceInfo;
  @override
  String get userEmail;
  @override
  String get userFullName;
  @override
  String? get adminResponse;
  @override
  DateTime? get adminRespondedAt;
  @override
  String? get adminRespondedBy;
  @override
  String? get stepsToReproduce;
  @override
  String? get expectedBehavior;
  @override
  String? get actualBehavior;
  @override
  List<Attachment> get attachments;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportImplCopyWith<_$BugReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) {
  return _DeviceInfo.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfo {
  String get platform => throw _privateConstructorUsedError;
  String get deviceModel => throw _privateConstructorUsedError;
  String get osVersion => throw _privateConstructorUsedError;
  String get appVersion => throw _privateConstructorUsedError;
  String? get screenResolution => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  /// Serializes this DeviceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceInfoCopyWith<DeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res, DeviceInfo>;
  @useResult
  $Res call(
      {String platform,
      String deviceModel,
      String osVersion,
      String appVersion,
      String? screenResolution,
      String? deviceId});
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res, $Val extends DeviceInfo>
    implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? deviceModel = null,
    Object? osVersion = null,
    Object? appVersion = null,
    Object? screenResolution = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_value.copyWith(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      deviceModel: null == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      screenResolution: freezed == screenResolution
          ? _value.screenResolution
          : screenResolution // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoImplCopyWith<$Res>
    implements $DeviceInfoCopyWith<$Res> {
  factory _$$DeviceInfoImplCopyWith(
          _$DeviceInfoImpl value, $Res Function(_$DeviceInfoImpl) then) =
      __$$DeviceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String platform,
      String deviceModel,
      String osVersion,
      String appVersion,
      String? screenResolution,
      String? deviceId});
}

/// @nodoc
class __$$DeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoImpl>
    implements _$$DeviceInfoImplCopyWith<$Res> {
  __$$DeviceInfoImplCopyWithImpl(
      _$DeviceInfoImpl _value, $Res Function(_$DeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? deviceModel = null,
    Object? osVersion = null,
    Object? appVersion = null,
    Object? screenResolution = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_$DeviceInfoImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      deviceModel: null == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      screenResolution: freezed == screenResolution
          ? _value.screenResolution
          : screenResolution // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoImpl implements _DeviceInfo {
  const _$DeviceInfoImpl(
      {required this.platform,
      required this.deviceModel,
      required this.osVersion,
      required this.appVersion,
      this.screenResolution,
      this.deviceId});

  factory _$DeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoImplFromJson(json);

  @override
  final String platform;
  @override
  final String deviceModel;
  @override
  final String osVersion;
  @override
  final String appVersion;
  @override
  final String? screenResolution;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'DeviceInfo(platform: $platform, deviceModel: $deviceModel, osVersion: $osVersion, appVersion: $appVersion, screenResolution: $screenResolution, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.screenResolution, screenResolution) ||
                other.screenResolution == screenResolution) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, platform, deviceModel, osVersion,
      appVersion, screenResolution, deviceId);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      __$$DeviceInfoImplCopyWithImpl<_$DeviceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfo implements DeviceInfo {
  const factory _DeviceInfo(
      {required final String platform,
      required final String deviceModel,
      required final String osVersion,
      required final String appVersion,
      final String? screenResolution,
      final String? deviceId}) = _$DeviceInfoImpl;

  factory _DeviceInfo.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoImpl.fromJson;

  @override
  String get platform;
  @override
  String get deviceModel;
  @override
  String get osVersion;
  @override
  String get appVersion;
  @override
  String? get screenResolution;
  @override
  String? get deviceId;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
mixin _$Attachment {
  String get url => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;

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
  $Res call({String url, String filename, int fileSize, String mimeType});
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
    Object? url = null,
    Object? filename = null,
    Object? fileSize = null,
    Object? mimeType = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String url, String filename, int fileSize, String mimeType});
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
    Object? url = null,
    Object? filename = null,
    Object? fileSize = null,
    Object? mimeType = null,
  }) {
    return _then(_$AttachmentImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentImpl implements _Attachment {
  const _$AttachmentImpl(
      {required this.url,
      required this.filename,
      required this.fileSize,
      required this.mimeType});

  factory _$AttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentImplFromJson(json);

  @override
  final String url;
  @override
  final String filename;
  @override
  final int fileSize;
  @override
  final String mimeType;

  @override
  String toString() {
    return 'Attachment(url: $url, filename: $filename, fileSize: $fileSize, mimeType: $mimeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, filename, fileSize, mimeType);

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
      {required final String url,
      required final String filename,
      required final int fileSize,
      required final String mimeType}) = _$AttachmentImpl;

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$AttachmentImpl.fromJson;

  @override
  String get url;
  @override
  String get filename;
  @override
  int get fileSize;
  @override
  String get mimeType;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BugReportCategory _$BugReportCategoryFromJson(Map<String, dynamic> json) {
  return _BugReportCategory.fromJson(json);
}

/// @nodoc
mixin _$BugReportCategory {
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this BugReportCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportCategoryCopyWith<BugReportCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportCategoryCopyWith<$Res> {
  factory $BugReportCategoryCopyWith(
          BugReportCategory value, $Res Function(BugReportCategory) then) =
      _$BugReportCategoryCopyWithImpl<$Res, BugReportCategory>;
  @useResult
  $Res call({String value, String label, String description, String icon});
}

/// @nodoc
class _$BugReportCategoryCopyWithImpl<$Res, $Val extends BugReportCategory>
    implements $BugReportCategoryCopyWith<$Res> {
  _$BugReportCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = null,
    Object? icon = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BugReportCategoryImplCopyWith<$Res>
    implements $BugReportCategoryCopyWith<$Res> {
  factory _$$BugReportCategoryImplCopyWith(_$BugReportCategoryImpl value,
          $Res Function(_$BugReportCategoryImpl) then) =
      __$$BugReportCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String label, String description, String icon});
}

/// @nodoc
class __$$BugReportCategoryImplCopyWithImpl<$Res>
    extends _$BugReportCategoryCopyWithImpl<$Res, _$BugReportCategoryImpl>
    implements _$$BugReportCategoryImplCopyWith<$Res> {
  __$$BugReportCategoryImplCopyWithImpl(_$BugReportCategoryImpl _value,
      $Res Function(_$BugReportCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReportCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$BugReportCategoryImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportCategoryImpl implements _BugReportCategory {
  const _$BugReportCategoryImpl(
      {required this.value,
      required this.label,
      required this.description,
      required this.icon});

  factory _$BugReportCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportCategoryImplFromJson(json);

  @override
  final String value;
  @override
  final String label;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'BugReportCategory(value: $value, label: $label, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportCategoryImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label, description, icon);

  /// Create a copy of BugReportCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportCategoryImplCopyWith<_$BugReportCategoryImpl> get copyWith =>
      __$$BugReportCategoryImplCopyWithImpl<_$BugReportCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportCategoryImplToJson(
      this,
    );
  }
}

abstract class _BugReportCategory implements BugReportCategory {
  const factory _BugReportCategory(
      {required final String value,
      required final String label,
      required final String description,
      required final String icon}) = _$BugReportCategoryImpl;

  factory _BugReportCategory.fromJson(Map<String, dynamic> json) =
      _$BugReportCategoryImpl.fromJson;

  @override
  String get value;
  @override
  String get label;
  @override
  String get description;
  @override
  String get icon;

  /// Create a copy of BugReportCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportCategoryImplCopyWith<_$BugReportCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeverityLevel _$SeverityLevelFromJson(Map<String, dynamic> json) {
  return _SeverityLevel.fromJson(json);
}

/// @nodoc
mixin _$SeverityLevel {
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  /// Serializes this SeverityLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeverityLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeverityLevelCopyWith<SeverityLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeverityLevelCopyWith<$Res> {
  factory $SeverityLevelCopyWith(
          SeverityLevel value, $Res Function(SeverityLevel) then) =
      _$SeverityLevelCopyWithImpl<$Res, SeverityLevel>;
  @useResult
  $Res call({String value, String label, String description, String color});
}

/// @nodoc
class _$SeverityLevelCopyWithImpl<$Res, $Val extends SeverityLevel>
    implements $SeverityLevelCopyWith<$Res> {
  _$SeverityLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeverityLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = null,
    Object? color = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeverityLevelImplCopyWith<$Res>
    implements $SeverityLevelCopyWith<$Res> {
  factory _$$SeverityLevelImplCopyWith(
          _$SeverityLevelImpl value, $Res Function(_$SeverityLevelImpl) then) =
      __$$SeverityLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String label, String description, String color});
}

/// @nodoc
class __$$SeverityLevelImplCopyWithImpl<$Res>
    extends _$SeverityLevelCopyWithImpl<$Res, _$SeverityLevelImpl>
    implements _$$SeverityLevelImplCopyWith<$Res> {
  __$$SeverityLevelImplCopyWithImpl(
      _$SeverityLevelImpl _value, $Res Function(_$SeverityLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeverityLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = null,
    Object? color = null,
  }) {
    return _then(_$SeverityLevelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeverityLevelImpl implements _SeverityLevel {
  const _$SeverityLevelImpl(
      {required this.value,
      required this.label,
      required this.description,
      required this.color});

  factory _$SeverityLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeverityLevelImplFromJson(json);

  @override
  final String value;
  @override
  final String label;
  @override
  final String description;
  @override
  final String color;

  @override
  String toString() {
    return 'SeverityLevel(value: $value, label: $label, description: $description, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeverityLevelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, value, label, description, color);

  /// Create a copy of SeverityLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeverityLevelImplCopyWith<_$SeverityLevelImpl> get copyWith =>
      __$$SeverityLevelImplCopyWithImpl<_$SeverityLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeverityLevelImplToJson(
      this,
    );
  }
}

abstract class _SeverityLevel implements SeverityLevel {
  const factory _SeverityLevel(
      {required final String value,
      required final String label,
      required final String description,
      required final String color}) = _$SeverityLevelImpl;

  factory _SeverityLevel.fromJson(Map<String, dynamic> json) =
      _$SeverityLevelImpl.fromJson;

  @override
  String get value;
  @override
  String get label;
  @override
  String get description;
  @override
  String get color;

  /// Create a copy of SeverityLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeverityLevelImplCopyWith<_$SeverityLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateBugReportRequest _$CreateBugReportRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateBugReportRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBugReportRequest {
  String get category => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get stepsToReproduce => throw _privateConstructorUsedError;
  String? get expectedBehavior => throw _privateConstructorUsedError;
  String? get actualBehavior => throw _privateConstructorUsedError;
  DeviceInfo get deviceInfo => throw _privateConstructorUsedError;

  /// Serializes this CreateBugReportRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateBugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateBugReportRequestCopyWith<CreateBugReportRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBugReportRequestCopyWith<$Res> {
  factory $CreateBugReportRequestCopyWith(CreateBugReportRequest value,
          $Res Function(CreateBugReportRequest) then) =
      _$CreateBugReportRequestCopyWithImpl<$Res, CreateBugReportRequest>;
  @useResult
  $Res call(
      {String category,
      String severity,
      String title,
      String description,
      String? stepsToReproduce,
      String? expectedBehavior,
      String? actualBehavior,
      DeviceInfo deviceInfo});

  $DeviceInfoCopyWith<$Res> get deviceInfo;
}

/// @nodoc
class _$CreateBugReportRequestCopyWithImpl<$Res,
        $Val extends CreateBugReportRequest>
    implements $CreateBugReportRequestCopyWith<$Res> {
  _$CreateBugReportRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateBugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? severity = null,
    Object? title = null,
    Object? description = null,
    Object? stepsToReproduce = freezed,
    Object? expectedBehavior = freezed,
    Object? actualBehavior = freezed,
    Object? deviceInfo = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stepsToReproduce: freezed == stepsToReproduce
          ? _value.stepsToReproduce
          : stepsToReproduce // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedBehavior: freezed == expectedBehavior
          ? _value.expectedBehavior
          : expectedBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      actualBehavior: freezed == actualBehavior
          ? _value.actualBehavior
          : actualBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
    ) as $Val);
  }

  /// Create a copy of CreateBugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res> get deviceInfo {
    return $DeviceInfoCopyWith<$Res>(_value.deviceInfo, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateBugReportRequestImplCopyWith<$Res>
    implements $CreateBugReportRequestCopyWith<$Res> {
  factory _$$CreateBugReportRequestImplCopyWith(
          _$CreateBugReportRequestImpl value,
          $Res Function(_$CreateBugReportRequestImpl) then) =
      __$$CreateBugReportRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      String severity,
      String title,
      String description,
      String? stepsToReproduce,
      String? expectedBehavior,
      String? actualBehavior,
      DeviceInfo deviceInfo});

  @override
  $DeviceInfoCopyWith<$Res> get deviceInfo;
}

/// @nodoc
class __$$CreateBugReportRequestImplCopyWithImpl<$Res>
    extends _$CreateBugReportRequestCopyWithImpl<$Res,
        _$CreateBugReportRequestImpl>
    implements _$$CreateBugReportRequestImplCopyWith<$Res> {
  __$$CreateBugReportRequestImplCopyWithImpl(
      _$CreateBugReportRequestImpl _value,
      $Res Function(_$CreateBugReportRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateBugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? severity = null,
    Object? title = null,
    Object? description = null,
    Object? stepsToReproduce = freezed,
    Object? expectedBehavior = freezed,
    Object? actualBehavior = freezed,
    Object? deviceInfo = null,
  }) {
    return _then(_$CreateBugReportRequestImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stepsToReproduce: freezed == stepsToReproduce
          ? _value.stepsToReproduce
          : stepsToReproduce // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedBehavior: freezed == expectedBehavior
          ? _value.expectedBehavior
          : expectedBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      actualBehavior: freezed == actualBehavior
          ? _value.actualBehavior
          : actualBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBugReportRequestImpl implements _CreateBugReportRequest {
  const _$CreateBugReportRequestImpl(
      {required this.category,
      required this.severity,
      required this.title,
      required this.description,
      this.stepsToReproduce,
      this.expectedBehavior,
      this.actualBehavior,
      required this.deviceInfo});

  factory _$CreateBugReportRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBugReportRequestImplFromJson(json);

  @override
  final String category;
  @override
  final String severity;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? stepsToReproduce;
  @override
  final String? expectedBehavior;
  @override
  final String? actualBehavior;
  @override
  final DeviceInfo deviceInfo;

  @override
  String toString() {
    return 'CreateBugReportRequest(category: $category, severity: $severity, title: $title, description: $description, stepsToReproduce: $stepsToReproduce, expectedBehavior: $expectedBehavior, actualBehavior: $actualBehavior, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBugReportRequestImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stepsToReproduce, stepsToReproduce) ||
                other.stepsToReproduce == stepsToReproduce) &&
            (identical(other.expectedBehavior, expectedBehavior) ||
                other.expectedBehavior == expectedBehavior) &&
            (identical(other.actualBehavior, actualBehavior) ||
                other.actualBehavior == actualBehavior) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      category,
      severity,
      title,
      description,
      stepsToReproduce,
      expectedBehavior,
      actualBehavior,
      deviceInfo);

  /// Create a copy of CreateBugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBugReportRequestImplCopyWith<_$CreateBugReportRequestImpl>
      get copyWith => __$$CreateBugReportRequestImplCopyWithImpl<
          _$CreateBugReportRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBugReportRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBugReportRequest implements CreateBugReportRequest {
  const factory _CreateBugReportRequest(
      {required final String category,
      required final String severity,
      required final String title,
      required final String description,
      final String? stepsToReproduce,
      final String? expectedBehavior,
      final String? actualBehavior,
      required final DeviceInfo deviceInfo}) = _$CreateBugReportRequestImpl;

  factory _CreateBugReportRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBugReportRequestImpl.fromJson;

  @override
  String get category;
  @override
  String get severity;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get stepsToReproduce;
  @override
  String? get expectedBehavior;
  @override
  String? get actualBehavior;
  @override
  DeviceInfo get deviceInfo;

  /// Create a copy of CreateBugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBugReportRequestImplCopyWith<_$CreateBugReportRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BugReportResponse _$BugReportResponseFromJson(Map<String, dynamic> json) {
  return _BugReportResponse.fromJson(json);
}

/// @nodoc
mixin _$BugReportResponse {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this BugReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportResponseCopyWith<BugReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportResponseCopyWith<$Res> {
  factory $BugReportResponseCopyWith(
          BugReportResponse value, $Res Function(BugReportResponse) then) =
      _$BugReportResponseCopyWithImpl<$Res, BugReportResponse>;
  @useResult
  $Res call(
      {String id,
      String category,
      String title,
      String status,
      String priority,
      DateTime createdAt});
}

/// @nodoc
class _$BugReportResponseCopyWithImpl<$Res, $Val extends BugReportResponse>
    implements $BugReportResponseCopyWith<$Res> {
  _$BugReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? title = null,
    Object? status = null,
    Object? priority = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BugReportResponseImplCopyWith<$Res>
    implements $BugReportResponseCopyWith<$Res> {
  factory _$$BugReportResponseImplCopyWith(_$BugReportResponseImpl value,
          $Res Function(_$BugReportResponseImpl) then) =
      __$$BugReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String title,
      String status,
      String priority,
      DateTime createdAt});
}

/// @nodoc
class __$$BugReportResponseImplCopyWithImpl<$Res>
    extends _$BugReportResponseCopyWithImpl<$Res, _$BugReportResponseImpl>
    implements _$$BugReportResponseImplCopyWith<$Res> {
  __$$BugReportResponseImplCopyWithImpl(_$BugReportResponseImpl _value,
      $Res Function(_$BugReportResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? title = null,
    Object? status = null,
    Object? priority = null,
    Object? createdAt = null,
  }) {
    return _then(_$BugReportResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportResponseImpl implements _BugReportResponse {
  const _$BugReportResponseImpl(
      {required this.id,
      required this.category,
      required this.title,
      required this.status,
      required this.priority,
      required this.createdAt});

  factory _$BugReportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String category;
  @override
  final String title;
  @override
  final String status;
  @override
  final String priority;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'BugReportResponse(id: $id, category: $category, title: $title, status: $status, priority: $priority, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, category, title, status, priority, createdAt);

  /// Create a copy of BugReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportResponseImplCopyWith<_$BugReportResponseImpl> get copyWith =>
      __$$BugReportResponseImplCopyWithImpl<_$BugReportResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportResponseImplToJson(
      this,
    );
  }
}

abstract class _BugReportResponse implements BugReportResponse {
  const factory _BugReportResponse(
      {required final String id,
      required final String category,
      required final String title,
      required final String status,
      required final String priority,
      required final DateTime createdAt}) = _$BugReportResponseImpl;

  factory _BugReportResponse.fromJson(Map<String, dynamic> json) =
      _$BugReportResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get title;
  @override
  String get status;
  @override
  String get priority;
  @override
  DateTime get createdAt;

  /// Create a copy of BugReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportResponseImplCopyWith<_$BugReportResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BugReportCategoriesResponse _$BugReportCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _BugReportCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$BugReportCategoriesResponse {
  List<BugReportCategory> get categories => throw _privateConstructorUsedError;

  /// Serializes this BugReportCategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportCategoriesResponseCopyWith<BugReportCategoriesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportCategoriesResponseCopyWith<$Res> {
  factory $BugReportCategoriesResponseCopyWith(
          BugReportCategoriesResponse value,
          $Res Function(BugReportCategoriesResponse) then) =
      _$BugReportCategoriesResponseCopyWithImpl<$Res,
          BugReportCategoriesResponse>;
  @useResult
  $Res call({List<BugReportCategory> categories});
}

/// @nodoc
class _$BugReportCategoriesResponseCopyWithImpl<$Res,
        $Val extends BugReportCategoriesResponse>
    implements $BugReportCategoriesResponseCopyWith<$Res> {
  _$BugReportCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportCategoriesResponse
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
              as List<BugReportCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BugReportCategoriesResponseImplCopyWith<$Res>
    implements $BugReportCategoriesResponseCopyWith<$Res> {
  factory _$$BugReportCategoriesResponseImplCopyWith(
          _$BugReportCategoriesResponseImpl value,
          $Res Function(_$BugReportCategoriesResponseImpl) then) =
      __$$BugReportCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BugReportCategory> categories});
}

/// @nodoc
class __$$BugReportCategoriesResponseImplCopyWithImpl<$Res>
    extends _$BugReportCategoriesResponseCopyWithImpl<$Res,
        _$BugReportCategoriesResponseImpl>
    implements _$$BugReportCategoriesResponseImplCopyWith<$Res> {
  __$$BugReportCategoriesResponseImplCopyWithImpl(
      _$BugReportCategoriesResponseImpl _value,
      $Res Function(_$BugReportCategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReportCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$BugReportCategoriesResponseImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BugReportCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportCategoriesResponseImpl
    implements _BugReportCategoriesResponse {
  const _$BugReportCategoriesResponseImpl(
      {required final List<BugReportCategory> categories})
      : _categories = categories;

  factory _$BugReportCategoriesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BugReportCategoriesResponseImplFromJson(json);

  final List<BugReportCategory> _categories;
  @override
  List<BugReportCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'BugReportCategoriesResponse(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportCategoriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of BugReportCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportCategoriesResponseImplCopyWith<_$BugReportCategoriesResponseImpl>
      get copyWith => __$$BugReportCategoriesResponseImplCopyWithImpl<
          _$BugReportCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _BugReportCategoriesResponse
    implements BugReportCategoriesResponse {
  const factory _BugReportCategoriesResponse(
          {required final List<BugReportCategory> categories}) =
      _$BugReportCategoriesResponseImpl;

  factory _BugReportCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$BugReportCategoriesResponseImpl.fromJson;

  @override
  List<BugReportCategory> get categories;

  /// Create a copy of BugReportCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportCategoriesResponseImplCopyWith<_$BugReportCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SeverityLevelsResponse _$SeverityLevelsResponseFromJson(
    Map<String, dynamic> json) {
  return _SeverityLevelsResponse.fromJson(json);
}

/// @nodoc
mixin _$SeverityLevelsResponse {
  List<SeverityLevel> get severityLevels => throw _privateConstructorUsedError;

  /// Serializes this SeverityLevelsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeverityLevelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeverityLevelsResponseCopyWith<SeverityLevelsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeverityLevelsResponseCopyWith<$Res> {
  factory $SeverityLevelsResponseCopyWith(SeverityLevelsResponse value,
          $Res Function(SeverityLevelsResponse) then) =
      _$SeverityLevelsResponseCopyWithImpl<$Res, SeverityLevelsResponse>;
  @useResult
  $Res call({List<SeverityLevel> severityLevels});
}

/// @nodoc
class _$SeverityLevelsResponseCopyWithImpl<$Res,
        $Val extends SeverityLevelsResponse>
    implements $SeverityLevelsResponseCopyWith<$Res> {
  _$SeverityLevelsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeverityLevelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severityLevels = null,
  }) {
    return _then(_value.copyWith(
      severityLevels: null == severityLevels
          ? _value.severityLevels
          : severityLevels // ignore: cast_nullable_to_non_nullable
              as List<SeverityLevel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeverityLevelsResponseImplCopyWith<$Res>
    implements $SeverityLevelsResponseCopyWith<$Res> {
  factory _$$SeverityLevelsResponseImplCopyWith(
          _$SeverityLevelsResponseImpl value,
          $Res Function(_$SeverityLevelsResponseImpl) then) =
      __$$SeverityLevelsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SeverityLevel> severityLevels});
}

/// @nodoc
class __$$SeverityLevelsResponseImplCopyWithImpl<$Res>
    extends _$SeverityLevelsResponseCopyWithImpl<$Res,
        _$SeverityLevelsResponseImpl>
    implements _$$SeverityLevelsResponseImplCopyWith<$Res> {
  __$$SeverityLevelsResponseImplCopyWithImpl(
      _$SeverityLevelsResponseImpl _value,
      $Res Function(_$SeverityLevelsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeverityLevelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severityLevels = null,
  }) {
    return _then(_$SeverityLevelsResponseImpl(
      severityLevels: null == severityLevels
          ? _value._severityLevels
          : severityLevels // ignore: cast_nullable_to_non_nullable
              as List<SeverityLevel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeverityLevelsResponseImpl implements _SeverityLevelsResponse {
  const _$SeverityLevelsResponseImpl(
      {required final List<SeverityLevel> severityLevels})
      : _severityLevels = severityLevels;

  factory _$SeverityLevelsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeverityLevelsResponseImplFromJson(json);

  final List<SeverityLevel> _severityLevels;
  @override
  List<SeverityLevel> get severityLevels {
    if (_severityLevels is EqualUnmodifiableListView) return _severityLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_severityLevels);
  }

  @override
  String toString() {
    return 'SeverityLevelsResponse(severityLevels: $severityLevels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeverityLevelsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._severityLevels, _severityLevels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_severityLevels));

  /// Create a copy of SeverityLevelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeverityLevelsResponseImplCopyWith<_$SeverityLevelsResponseImpl>
      get copyWith => __$$SeverityLevelsResponseImplCopyWithImpl<
          _$SeverityLevelsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeverityLevelsResponseImplToJson(
      this,
    );
  }
}

abstract class _SeverityLevelsResponse implements SeverityLevelsResponse {
  const factory _SeverityLevelsResponse(
          {required final List<SeverityLevel> severityLevels}) =
      _$SeverityLevelsResponseImpl;

  factory _SeverityLevelsResponse.fromJson(Map<String, dynamic> json) =
      _$SeverityLevelsResponseImpl.fromJson;

  @override
  List<SeverityLevel> get severityLevels;

  /// Create a copy of SeverityLevelsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeverityLevelsResponseImplCopyWith<_$SeverityLevelsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BugReportApiResponse _$BugReportApiResponseFromJson(Map<String, dynamic> json) {
  return _BugReportApiResponse.fromJson(json);
}

/// @nodoc
mixin _$BugReportApiResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  BugReportResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BugReportApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportApiResponseCopyWith<BugReportApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportApiResponseCopyWith<$Res> {
  factory $BugReportApiResponseCopyWith(BugReportApiResponse value,
          $Res Function(BugReportApiResponse) then) =
      _$BugReportApiResponseCopyWithImpl<$Res, BugReportApiResponse>;
  @useResult
  $Res call({bool success, String message, BugReportResponse data});

  $BugReportResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BugReportApiResponseCopyWithImpl<$Res,
        $Val extends BugReportApiResponse>
    implements $BugReportApiResponseCopyWith<$Res> {
  _$BugReportApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportApiResponse
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
              as BugReportResponse,
    ) as $Val);
  }

  /// Create a copy of BugReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BugReportResponseCopyWith<$Res> get data {
    return $BugReportResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BugReportApiResponseImplCopyWith<$Res>
    implements $BugReportApiResponseCopyWith<$Res> {
  factory _$$BugReportApiResponseImplCopyWith(_$BugReportApiResponseImpl value,
          $Res Function(_$BugReportApiResponseImpl) then) =
      __$$BugReportApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, BugReportResponse data});

  @override
  $BugReportResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BugReportApiResponseImplCopyWithImpl<$Res>
    extends _$BugReportApiResponseCopyWithImpl<$Res, _$BugReportApiResponseImpl>
    implements _$$BugReportApiResponseImplCopyWith<$Res> {
  __$$BugReportApiResponseImplCopyWithImpl(_$BugReportApiResponseImpl _value,
      $Res Function(_$BugReportApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$BugReportApiResponseImpl(
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
              as BugReportResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportApiResponseImpl implements _BugReportApiResponse {
  const _$BugReportApiResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$BugReportApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final BugReportResponse data;

  @override
  String toString() {
    return 'BugReportApiResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of BugReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportApiResponseImplCopyWith<_$BugReportApiResponseImpl>
      get copyWith =>
          __$$BugReportApiResponseImplCopyWithImpl<_$BugReportApiResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportApiResponseImplToJson(
      this,
    );
  }
}

abstract class _BugReportApiResponse implements BugReportApiResponse {
  const factory _BugReportApiResponse(
      {required final bool success,
      required final String message,
      required final BugReportResponse data}) = _$BugReportApiResponseImpl;

  factory _BugReportApiResponse.fromJson(Map<String, dynamic> json) =
      _$BugReportApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  BugReportResponse get data;

  /// Create a copy of BugReportApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportApiResponseImplCopyWith<_$BugReportApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BugReportCategoriesApiResponse _$BugReportCategoriesApiResponseFromJson(
    Map<String, dynamic> json) {
  return _BugReportCategoriesApiResponse.fromJson(json);
}

/// @nodoc
mixin _$BugReportCategoriesApiResponse {
  bool get success => throw _privateConstructorUsedError;
  List<BugReportCategory> get data => throw _privateConstructorUsedError;

  /// Serializes this BugReportCategoriesApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportCategoriesApiResponseCopyWith<BugReportCategoriesApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportCategoriesApiResponseCopyWith<$Res> {
  factory $BugReportCategoriesApiResponseCopyWith(
          BugReportCategoriesApiResponse value,
          $Res Function(BugReportCategoriesApiResponse) then) =
      _$BugReportCategoriesApiResponseCopyWithImpl<$Res,
          BugReportCategoriesApiResponse>;
  @useResult
  $Res call({bool success, List<BugReportCategory> data});
}

/// @nodoc
class _$BugReportCategoriesApiResponseCopyWithImpl<$Res,
        $Val extends BugReportCategoriesApiResponse>
    implements $BugReportCategoriesApiResponseCopyWith<$Res> {
  _$BugReportCategoriesApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportCategoriesApiResponse
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
              as List<BugReportCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BugReportCategoriesApiResponseImplCopyWith<$Res>
    implements $BugReportCategoriesApiResponseCopyWith<$Res> {
  factory _$$BugReportCategoriesApiResponseImplCopyWith(
          _$BugReportCategoriesApiResponseImpl value,
          $Res Function(_$BugReportCategoriesApiResponseImpl) then) =
      __$$BugReportCategoriesApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<BugReportCategory> data});
}

/// @nodoc
class __$$BugReportCategoriesApiResponseImplCopyWithImpl<$Res>
    extends _$BugReportCategoriesApiResponseCopyWithImpl<$Res,
        _$BugReportCategoriesApiResponseImpl>
    implements _$$BugReportCategoriesApiResponseImplCopyWith<$Res> {
  __$$BugReportCategoriesApiResponseImplCopyWithImpl(
      _$BugReportCategoriesApiResponseImpl _value,
      $Res Function(_$BugReportCategoriesApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReportCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$BugReportCategoriesApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BugReportCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportCategoriesApiResponseImpl
    implements _BugReportCategoriesApiResponse {
  const _$BugReportCategoriesApiResponseImpl(
      {required this.success, required final List<BugReportCategory> data})
      : _data = data;

  factory _$BugReportCategoriesApiResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BugReportCategoriesApiResponseImplFromJson(json);

  @override
  final bool success;
  final List<BugReportCategory> _data;
  @override
  List<BugReportCategory> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BugReportCategoriesApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportCategoriesApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BugReportCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportCategoriesApiResponseImplCopyWith<
          _$BugReportCategoriesApiResponseImpl>
      get copyWith => __$$BugReportCategoriesApiResponseImplCopyWithImpl<
          _$BugReportCategoriesApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportCategoriesApiResponseImplToJson(
      this,
    );
  }
}

abstract class _BugReportCategoriesApiResponse
    implements BugReportCategoriesApiResponse {
  const factory _BugReportCategoriesApiResponse(
          {required final bool success,
          required final List<BugReportCategory> data}) =
      _$BugReportCategoriesApiResponseImpl;

  factory _BugReportCategoriesApiResponse.fromJson(Map<String, dynamic> json) =
      _$BugReportCategoriesApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<BugReportCategory> get data;

  /// Create a copy of BugReportCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportCategoriesApiResponseImplCopyWith<
          _$BugReportCategoriesApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SeverityLevelsApiResponse _$SeverityLevelsApiResponseFromJson(
    Map<String, dynamic> json) {
  return _SeverityLevelsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$SeverityLevelsApiResponse {
  bool get success => throw _privateConstructorUsedError;
  List<SeverityLevel> get data => throw _privateConstructorUsedError;

  /// Serializes this SeverityLevelsApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeverityLevelsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeverityLevelsApiResponseCopyWith<SeverityLevelsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeverityLevelsApiResponseCopyWith<$Res> {
  factory $SeverityLevelsApiResponseCopyWith(SeverityLevelsApiResponse value,
          $Res Function(SeverityLevelsApiResponse) then) =
      _$SeverityLevelsApiResponseCopyWithImpl<$Res, SeverityLevelsApiResponse>;
  @useResult
  $Res call({bool success, List<SeverityLevel> data});
}

/// @nodoc
class _$SeverityLevelsApiResponseCopyWithImpl<$Res,
        $Val extends SeverityLevelsApiResponse>
    implements $SeverityLevelsApiResponseCopyWith<$Res> {
  _$SeverityLevelsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeverityLevelsApiResponse
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
              as List<SeverityLevel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeverityLevelsApiResponseImplCopyWith<$Res>
    implements $SeverityLevelsApiResponseCopyWith<$Res> {
  factory _$$SeverityLevelsApiResponseImplCopyWith(
          _$SeverityLevelsApiResponseImpl value,
          $Res Function(_$SeverityLevelsApiResponseImpl) then) =
      __$$SeverityLevelsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<SeverityLevel> data});
}

/// @nodoc
class __$$SeverityLevelsApiResponseImplCopyWithImpl<$Res>
    extends _$SeverityLevelsApiResponseCopyWithImpl<$Res,
        _$SeverityLevelsApiResponseImpl>
    implements _$$SeverityLevelsApiResponseImplCopyWith<$Res> {
  __$$SeverityLevelsApiResponseImplCopyWithImpl(
      _$SeverityLevelsApiResponseImpl _value,
      $Res Function(_$SeverityLevelsApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeverityLevelsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$SeverityLevelsApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SeverityLevel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeverityLevelsApiResponseImpl implements _SeverityLevelsApiResponse {
  const _$SeverityLevelsApiResponseImpl(
      {required this.success, required final List<SeverityLevel> data})
      : _data = data;

  factory _$SeverityLevelsApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeverityLevelsApiResponseImplFromJson(json);

  @override
  final bool success;
  final List<SeverityLevel> _data;
  @override
  List<SeverityLevel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SeverityLevelsApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeverityLevelsApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SeverityLevelsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeverityLevelsApiResponseImplCopyWith<_$SeverityLevelsApiResponseImpl>
      get copyWith => __$$SeverityLevelsApiResponseImplCopyWithImpl<
          _$SeverityLevelsApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeverityLevelsApiResponseImplToJson(
      this,
    );
  }
}

abstract class _SeverityLevelsApiResponse implements SeverityLevelsApiResponse {
  const factory _SeverityLevelsApiResponse(
          {required final bool success,
          required final List<SeverityLevel> data}) =
      _$SeverityLevelsApiResponseImpl;

  factory _SeverityLevelsApiResponse.fromJson(Map<String, dynamic> json) =
      _$SeverityLevelsApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<SeverityLevel> get data;

  /// Create a copy of SeverityLevelsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeverityLevelsApiResponseImplCopyWith<_$SeverityLevelsApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BugReportsListResponse _$BugReportsListResponseFromJson(
    Map<String, dynamic> json) {
  return _BugReportsListResponse.fromJson(json);
}

/// @nodoc
mixin _$BugReportsListResponse {
  List<BugReport> get reports => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  /// Serializes this BugReportsListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportsListResponseCopyWith<BugReportsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportsListResponseCopyWith<$Res> {
  factory $BugReportsListResponseCopyWith(BugReportsListResponse value,
          $Res Function(BugReportsListResponse) then) =
      _$BugReportsListResponseCopyWithImpl<$Res, BugReportsListResponse>;
  @useResult
  $Res call({List<BugReport> reports, int total, int page, int pages});
}

/// @nodoc
class _$BugReportsListResponseCopyWithImpl<$Res,
        $Val extends BugReportsListResponse>
    implements $BugReportsListResponseCopyWith<$Res> {
  _$BugReportsListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<BugReport>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BugReportsListResponseImplCopyWith<$Res>
    implements $BugReportsListResponseCopyWith<$Res> {
  factory _$$BugReportsListResponseImplCopyWith(
          _$BugReportsListResponseImpl value,
          $Res Function(_$BugReportsListResponseImpl) then) =
      __$$BugReportsListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BugReport> reports, int total, int page, int pages});
}

/// @nodoc
class __$$BugReportsListResponseImplCopyWithImpl<$Res>
    extends _$BugReportsListResponseCopyWithImpl<$Res,
        _$BugReportsListResponseImpl>
    implements _$$BugReportsListResponseImplCopyWith<$Res> {
  __$$BugReportsListResponseImplCopyWithImpl(
      _$BugReportsListResponseImpl _value,
      $Res Function(_$BugReportsListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_$BugReportsListResponseImpl(
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<BugReport>,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportsListResponseImpl implements _BugReportsListResponse {
  const _$BugReportsListResponseImpl(
      {required final List<BugReport> reports,
      required this.total,
      required this.page,
      required this.pages})
      : _reports = reports;

  factory _$BugReportsListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportsListResponseImplFromJson(json);

  final List<BugReport> _reports;
  @override
  List<BugReport> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;

  @override
  String toString() {
    return 'BugReportsListResponse(reports: $reports, total: $total, page: $page, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportsListResponseImpl &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_reports), total, page, pages);

  /// Create a copy of BugReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportsListResponseImplCopyWith<_$BugReportsListResponseImpl>
      get copyWith => __$$BugReportsListResponseImplCopyWithImpl<
          _$BugReportsListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportsListResponseImplToJson(
      this,
    );
  }
}

abstract class _BugReportsListResponse implements BugReportsListResponse {
  const factory _BugReportsListResponse(
      {required final List<BugReport> reports,
      required final int total,
      required final int page,
      required final int pages}) = _$BugReportsListResponseImpl;

  factory _BugReportsListResponse.fromJson(Map<String, dynamic> json) =
      _$BugReportsListResponseImpl.fromJson;

  @override
  List<BugReport> get reports;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;

  /// Create a copy of BugReportsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportsListResponseImplCopyWith<_$BugReportsListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BugReportsApiResponse _$BugReportsApiResponseFromJson(
    Map<String, dynamic> json) {
  return _BugReportsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$BugReportsApiResponse {
  bool get success => throw _privateConstructorUsedError;
  BugReportsListResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BugReportsApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportsApiResponseCopyWith<BugReportsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportsApiResponseCopyWith<$Res> {
  factory $BugReportsApiResponseCopyWith(BugReportsApiResponse value,
          $Res Function(BugReportsApiResponse) then) =
      _$BugReportsApiResponseCopyWithImpl<$Res, BugReportsApiResponse>;
  @useResult
  $Res call({bool success, BugReportsListResponse data});

  $BugReportsListResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BugReportsApiResponseCopyWithImpl<$Res,
        $Val extends BugReportsApiResponse>
    implements $BugReportsApiResponseCopyWith<$Res> {
  _$BugReportsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportsApiResponse
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
              as BugReportsListResponse,
    ) as $Val);
  }

  /// Create a copy of BugReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BugReportsListResponseCopyWith<$Res> get data {
    return $BugReportsListResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BugReportsApiResponseImplCopyWith<$Res>
    implements $BugReportsApiResponseCopyWith<$Res> {
  factory _$$BugReportsApiResponseImplCopyWith(
          _$BugReportsApiResponseImpl value,
          $Res Function(_$BugReportsApiResponseImpl) then) =
      __$$BugReportsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, BugReportsListResponse data});

  @override
  $BugReportsListResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BugReportsApiResponseImplCopyWithImpl<$Res>
    extends _$BugReportsApiResponseCopyWithImpl<$Res,
        _$BugReportsApiResponseImpl>
    implements _$$BugReportsApiResponseImplCopyWith<$Res> {
  __$$BugReportsApiResponseImplCopyWithImpl(_$BugReportsApiResponseImpl _value,
      $Res Function(_$BugReportsApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$BugReportsApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BugReportsListResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportsApiResponseImpl implements _BugReportsApiResponse {
  const _$BugReportsApiResponseImpl(
      {required this.success, required this.data});

  factory _$BugReportsApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportsApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final BugReportsListResponse data;

  @override
  String toString() {
    return 'BugReportsApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportsApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of BugReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportsApiResponseImplCopyWith<_$BugReportsApiResponseImpl>
      get copyWith => __$$BugReportsApiResponseImplCopyWithImpl<
          _$BugReportsApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportsApiResponseImplToJson(
      this,
    );
  }
}

abstract class _BugReportsApiResponse implements BugReportsApiResponse {
  const factory _BugReportsApiResponse(
          {required final bool success,
          required final BugReportsListResponse data}) =
      _$BugReportsApiResponseImpl;

  factory _BugReportsApiResponse.fromJson(Map<String, dynamic> json) =
      _$BugReportsApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  BugReportsListResponse get data;

  /// Create a copy of BugReportsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportsApiResponseImplCopyWith<_$BugReportsApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BugReportDetailApiResponse _$BugReportDetailApiResponseFromJson(
    Map<String, dynamic> json) {
  return _BugReportDetailApiResponse.fromJson(json);
}

/// @nodoc
mixin _$BugReportDetailApiResponse {
  bool get success => throw _privateConstructorUsedError;
  BugReport get data => throw _privateConstructorUsedError;

  /// Serializes this BugReportDetailApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportDetailApiResponseCopyWith<BugReportDetailApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportDetailApiResponseCopyWith<$Res> {
  factory $BugReportDetailApiResponseCopyWith(BugReportDetailApiResponse value,
          $Res Function(BugReportDetailApiResponse) then) =
      _$BugReportDetailApiResponseCopyWithImpl<$Res,
          BugReportDetailApiResponse>;
  @useResult
  $Res call({bool success, BugReport data});

  $BugReportCopyWith<$Res> get data;
}

/// @nodoc
class _$BugReportDetailApiResponseCopyWithImpl<$Res,
        $Val extends BugReportDetailApiResponse>
    implements $BugReportDetailApiResponseCopyWith<$Res> {
  _$BugReportDetailApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportDetailApiResponse
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
              as BugReport,
    ) as $Val);
  }

  /// Create a copy of BugReportDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BugReportCopyWith<$Res> get data {
    return $BugReportCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BugReportDetailApiResponseImplCopyWith<$Res>
    implements $BugReportDetailApiResponseCopyWith<$Res> {
  factory _$$BugReportDetailApiResponseImplCopyWith(
          _$BugReportDetailApiResponseImpl value,
          $Res Function(_$BugReportDetailApiResponseImpl) then) =
      __$$BugReportDetailApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, BugReport data});

  @override
  $BugReportCopyWith<$Res> get data;
}

/// @nodoc
class __$$BugReportDetailApiResponseImplCopyWithImpl<$Res>
    extends _$BugReportDetailApiResponseCopyWithImpl<$Res,
        _$BugReportDetailApiResponseImpl>
    implements _$$BugReportDetailApiResponseImplCopyWith<$Res> {
  __$$BugReportDetailApiResponseImplCopyWithImpl(
      _$BugReportDetailApiResponseImpl _value,
      $Res Function(_$BugReportDetailApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BugReportDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$BugReportDetailApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BugReport,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportDetailApiResponseImpl implements _BugReportDetailApiResponse {
  const _$BugReportDetailApiResponseImpl(
      {required this.success, required this.data});

  factory _$BugReportDetailApiResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BugReportDetailApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final BugReport data;

  @override
  String toString() {
    return 'BugReportDetailApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportDetailApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of BugReportDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportDetailApiResponseImplCopyWith<_$BugReportDetailApiResponseImpl>
      get copyWith => __$$BugReportDetailApiResponseImplCopyWithImpl<
          _$BugReportDetailApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportDetailApiResponseImplToJson(
      this,
    );
  }
}

abstract class _BugReportDetailApiResponse
    implements BugReportDetailApiResponse {
  const factory _BugReportDetailApiResponse(
      {required final bool success,
      required final BugReport data}) = _$BugReportDetailApiResponseImpl;

  factory _BugReportDetailApiResponse.fromJson(Map<String, dynamic> json) =
      _$BugReportDetailApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  BugReport get data;

  /// Create a copy of BugReportDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportDetailApiResponseImplCopyWith<_$BugReportDetailApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
