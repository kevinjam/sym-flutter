// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) {
  return _AppNotification.fromJson(json);
}

/// @nodoc
mixin _$AppNotification {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get recipientId => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;
  bool get isSent => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;
  DateTime? get scheduledFor => throw _privateConstructorUsedError;
  int get retryCount => throw _privateConstructorUsedError;
  int get maxRetries => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AppNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String recipientId,
      String? senderId,
      String type,
      String title,
      String message,
      Map<String, dynamic> data,
      String priority,
      bool isRead,
      DateTime? readAt,
      bool isSent,
      DateTime? sentAt,
      DateTime? scheduledFor,
      int retryCount,
      int maxRetries,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipientId = null,
    Object? senderId = freezed,
    Object? type = null,
    Object? title = null,
    Object? message = null,
    Object? data = null,
    Object? priority = null,
    Object? isRead = null,
    Object? readAt = freezed,
    Object? isSent = null,
    Object? sentAt = freezed,
    Object? scheduledFor = freezed,
    Object? retryCount = null,
    Object? maxRetries = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduledFor: freezed == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      retryCount: null == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxRetries: null == maxRetries
          ? _value.maxRetries
          : maxRetries // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$AppNotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppNotificationImplCopyWith(_$AppNotificationImpl value,
          $Res Function(_$AppNotificationImpl) then) =
      __$$AppNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String recipientId,
      String? senderId,
      String type,
      String title,
      String message,
      Map<String, dynamic> data,
      String priority,
      bool isRead,
      DateTime? readAt,
      bool isSent,
      DateTime? sentAt,
      DateTime? scheduledFor,
      int retryCount,
      int maxRetries,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$AppNotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppNotificationImpl>
    implements _$$AppNotificationImplCopyWith<$Res> {
  __$$AppNotificationImplCopyWithImpl(
      _$AppNotificationImpl _value, $Res Function(_$AppNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipientId = null,
    Object? senderId = freezed,
    Object? type = null,
    Object? title = null,
    Object? message = null,
    Object? data = null,
    Object? priority = null,
    Object? isRead = null,
    Object? readAt = freezed,
    Object? isSent = null,
    Object? sentAt = freezed,
    Object? scheduledFor = freezed,
    Object? retryCount = null,
    Object? maxRetries = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AppNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduledFor: freezed == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      retryCount: null == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxRetries: null == maxRetries
          ? _value.maxRetries
          : maxRetries // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$AppNotificationImpl implements _AppNotification {
  const _$AppNotificationImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.recipientId,
      this.senderId,
      required this.type,
      required this.title,
      required this.message,
      final Map<String, dynamic> data = const {},
      this.priority = 'normal',
      this.isRead = false,
      this.readAt,
      this.isSent = false,
      this.sentAt,
      this.scheduledFor,
      this.retryCount = 0,
      this.maxRetries = 3,
      required this.createdAt,
      required this.updatedAt})
      : _data = data;

  factory _$AppNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppNotificationImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String recipientId;
  @override
  final String? senderId;
  @override
  final String type;
  @override
  final String title;
  @override
  final String message;
  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey()
  final String priority;
  @override
  @JsonKey()
  final bool isRead;
  @override
  final DateTime? readAt;
  @override
  @JsonKey()
  final bool isSent;
  @override
  final DateTime? sentAt;
  @override
  final DateTime? scheduledFor;
  @override
  @JsonKey()
  final int retryCount;
  @override
  @JsonKey()
  final int maxRetries;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AppNotification(id: $id, recipientId: $recipientId, senderId: $senderId, type: $type, title: $title, message: $message, data: $data, priority: $priority, isRead: $isRead, readAt: $readAt, isSent: $isSent, sentAt: $sentAt, scheduledFor: $scheduledFor, retryCount: $retryCount, maxRetries: $maxRetries, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.isSent, isSent) || other.isSent == isSent) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.scheduledFor, scheduledFor) ||
                other.scheduledFor == scheduledFor) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.maxRetries, maxRetries) ||
                other.maxRetries == maxRetries) &&
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
      recipientId,
      senderId,
      type,
      title,
      message,
      const DeepCollectionEquality().hash(_data),
      priority,
      isRead,
      readAt,
      isSent,
      sentAt,
      scheduledFor,
      retryCount,
      maxRetries,
      createdAt,
      updatedAt);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      __$$AppNotificationImplCopyWithImpl<_$AppNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppNotificationImplToJson(
      this,
    );
  }
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification(
      {@JsonKey(name: '_id') required final String id,
      required final String recipientId,
      final String? senderId,
      required final String type,
      required final String title,
      required final String message,
      final Map<String, dynamic> data,
      final String priority,
      final bool isRead,
      final DateTime? readAt,
      final bool isSent,
      final DateTime? sentAt,
      final DateTime? scheduledFor,
      final int retryCount,
      final int maxRetries,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$AppNotificationImpl;

  factory _AppNotification.fromJson(Map<String, dynamic> json) =
      _$AppNotificationImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get recipientId;
  @override
  String? get senderId;
  @override
  String get type;
  @override
  String get title;
  @override
  String get message;
  @override
  Map<String, dynamic> get data;
  @override
  String get priority;
  @override
  bool get isRead;
  @override
  DateTime? get readAt;
  @override
  bool get isSent;
  @override
  DateTime? get sentAt;
  @override
  DateTime? get scheduledFor;
  @override
  int get retryCount;
  @override
  int get maxRetries;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppNotificationResponse _$AppNotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _AppNotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$AppNotificationResponse {
  List<AppNotification> get notifications => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Serializes this AppNotificationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationResponseCopyWith<AppNotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationResponseCopyWith<$Res> {
  factory $AppNotificationResponseCopyWith(AppNotificationResponse value,
          $Res Function(AppNotificationResponse) then) =
      _$AppNotificationResponseCopyWithImpl<$Res, AppNotificationResponse>;
  @useResult
  $Res call(
      {List<AppNotification> notifications,
      int totalCount,
      int currentPage,
      int totalPages,
      bool hasMore});
}

/// @nodoc
class _$AppNotificationResponseCopyWithImpl<$Res,
        $Val extends AppNotificationResponse>
    implements $AppNotificationResponseCopyWith<$Res> {
  _$AppNotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? totalCount = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<AppNotification>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppNotificationResponseImplCopyWith<$Res>
    implements $AppNotificationResponseCopyWith<$Res> {
  factory _$$AppNotificationResponseImplCopyWith(
          _$AppNotificationResponseImpl value,
          $Res Function(_$AppNotificationResponseImpl) then) =
      __$$AppNotificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AppNotification> notifications,
      int totalCount,
      int currentPage,
      int totalPages,
      bool hasMore});
}

/// @nodoc
class __$$AppNotificationResponseImplCopyWithImpl<$Res>
    extends _$AppNotificationResponseCopyWithImpl<$Res,
        _$AppNotificationResponseImpl>
    implements _$$AppNotificationResponseImplCopyWith<$Res> {
  __$$AppNotificationResponseImplCopyWithImpl(
      _$AppNotificationResponseImpl _value,
      $Res Function(_$AppNotificationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? totalCount = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? hasMore = null,
  }) {
    return _then(_$AppNotificationResponseImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<AppNotification>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppNotificationResponseImpl implements _AppNotificationResponse {
  const _$AppNotificationResponseImpl(
      {required final List<AppNotification> notifications,
      required this.totalCount,
      required this.currentPage,
      required this.totalPages,
      required this.hasMore})
      : _notifications = notifications;

  factory _$AppNotificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppNotificationResponseImplFromJson(json);

  final List<AppNotification> _notifications;
  @override
  List<AppNotification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final int totalCount;
  @override
  final int currentPage;
  @override
  final int totalPages;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'AppNotificationResponse(notifications: $notifications, totalCount: $totalCount, currentPage: $currentPage, totalPages: $totalPages, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      totalCount,
      currentPage,
      totalPages,
      hasMore);

  /// Create a copy of AppNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationResponseImplCopyWith<_$AppNotificationResponseImpl>
      get copyWith => __$$AppNotificationResponseImplCopyWithImpl<
          _$AppNotificationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppNotificationResponseImplToJson(
      this,
    );
  }
}

abstract class _AppNotificationResponse implements AppNotificationResponse {
  const factory _AppNotificationResponse(
      {required final List<AppNotification> notifications,
      required final int totalCount,
      required final int currentPage,
      required final int totalPages,
      required final bool hasMore}) = _$AppNotificationResponseImpl;

  factory _AppNotificationResponse.fromJson(Map<String, dynamic> json) =
      _$AppNotificationResponseImpl.fromJson;

  @override
  List<AppNotification> get notifications;
  @override
  int get totalCount;
  @override
  int get currentPage;
  @override
  int get totalPages;
  @override
  bool get hasMore;

  /// Create a copy of AppNotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationResponseImplCopyWith<_$AppNotificationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnreadCountResponse _$UnreadCountResponseFromJson(Map<String, dynamic> json) {
  return _UnreadCountResponse.fromJson(json);
}

/// @nodoc
mixin _$UnreadCountResponse {
  int get unreadCount => throw _privateConstructorUsedError;

  /// Serializes this UnreadCountResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnreadCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnreadCountResponseCopyWith<UnreadCountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnreadCountResponseCopyWith<$Res> {
  factory $UnreadCountResponseCopyWith(
          UnreadCountResponse value, $Res Function(UnreadCountResponse) then) =
      _$UnreadCountResponseCopyWithImpl<$Res, UnreadCountResponse>;
  @useResult
  $Res call({int unreadCount});
}

/// @nodoc
class _$UnreadCountResponseCopyWithImpl<$Res, $Val extends UnreadCountResponse>
    implements $UnreadCountResponseCopyWith<$Res> {
  _$UnreadCountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnreadCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreadCount = null,
  }) {
    return _then(_value.copyWith(
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnreadCountResponseImplCopyWith<$Res>
    implements $UnreadCountResponseCopyWith<$Res> {
  factory _$$UnreadCountResponseImplCopyWith(_$UnreadCountResponseImpl value,
          $Res Function(_$UnreadCountResponseImpl) then) =
      __$$UnreadCountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int unreadCount});
}

/// @nodoc
class __$$UnreadCountResponseImplCopyWithImpl<$Res>
    extends _$UnreadCountResponseCopyWithImpl<$Res, _$UnreadCountResponseImpl>
    implements _$$UnreadCountResponseImplCopyWith<$Res> {
  __$$UnreadCountResponseImplCopyWithImpl(_$UnreadCountResponseImpl _value,
      $Res Function(_$UnreadCountResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnreadCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreadCount = null,
  }) {
    return _then(_$UnreadCountResponseImpl(
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnreadCountResponseImpl implements _UnreadCountResponse {
  const _$UnreadCountResponseImpl({required this.unreadCount});

  factory _$UnreadCountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnreadCountResponseImplFromJson(json);

  @override
  final int unreadCount;

  @override
  String toString() {
    return 'UnreadCountResponse(unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnreadCountResponseImpl &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unreadCount);

  /// Create a copy of UnreadCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnreadCountResponseImplCopyWith<_$UnreadCountResponseImpl> get copyWith =>
      __$$UnreadCountResponseImplCopyWithImpl<_$UnreadCountResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnreadCountResponseImplToJson(
      this,
    );
  }
}

abstract class _UnreadCountResponse implements UnreadCountResponse {
  const factory _UnreadCountResponse({required final int unreadCount}) =
      _$UnreadCountResponseImpl;

  factory _UnreadCountResponse.fromJson(Map<String, dynamic> json) =
      _$UnreadCountResponseImpl.fromJson;

  @override
  int get unreadCount;

  /// Create a copy of UnreadCountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnreadCountResponseImplCopyWith<_$UnreadCountResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
