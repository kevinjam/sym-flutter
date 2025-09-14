// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportMessage _$SupportMessageFromJson(Map<String, dynamic> json) {
  return _SupportMessage.fromJson(json);
}

/// @nodoc
mixin _$SupportMessage {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  String get userFullName => throw _privateConstructorUsedError;
  String? get adminResponse => throw _privateConstructorUsedError;
  DateTime? get adminRespondedAt => throw _privateConstructorUsedError;
  String? get adminRespondedBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportMessageCopyWith<SupportMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportMessageCopyWith<$Res> {
  factory $SupportMessageCopyWith(
          SupportMessage value, $Res Function(SupportMessage) then) =
      _$SupportMessageCopyWithImpl<$Res, SupportMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String userId,
      String category,
      String subject,
      String message,
      String status,
      String priority,
      String userEmail,
      String userFullName,
      String? adminResponse,
      DateTime? adminRespondedAt,
      String? adminRespondedBy,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$SupportMessageCopyWithImpl<$Res, $Val extends SupportMessage>
    implements $SupportMessageCopyWith<$Res> {
  _$SupportMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? category = null,
    Object? subject = null,
    Object? message = null,
    Object? status = null,
    Object? priority = null,
    Object? userEmail = null,
    Object? userFullName = null,
    Object? adminResponse = freezed,
    Object? adminRespondedAt = freezed,
    Object? adminRespondedBy = freezed,
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
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$SupportMessageImplCopyWith<$Res>
    implements $SupportMessageCopyWith<$Res> {
  factory _$$SupportMessageImplCopyWith(_$SupportMessageImpl value,
          $Res Function(_$SupportMessageImpl) then) =
      __$$SupportMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String userId,
      String category,
      String subject,
      String message,
      String status,
      String priority,
      String userEmail,
      String userFullName,
      String? adminResponse,
      DateTime? adminRespondedAt,
      String? adminRespondedBy,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$SupportMessageImplCopyWithImpl<$Res>
    extends _$SupportMessageCopyWithImpl<$Res, _$SupportMessageImpl>
    implements _$$SupportMessageImplCopyWith<$Res> {
  __$$SupportMessageImplCopyWithImpl(
      _$SupportMessageImpl _value, $Res Function(_$SupportMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? category = null,
    Object? subject = null,
    Object? message = null,
    Object? status = null,
    Object? priority = null,
    Object? userEmail = null,
    Object? userFullName = null,
    Object? adminResponse = freezed,
    Object? adminRespondedAt = freezed,
    Object? adminRespondedBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SupportMessageImpl(
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
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$SupportMessageImpl implements _SupportMessage {
  const _$SupportMessageImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.userId,
      required this.category,
      required this.subject,
      required this.message,
      required this.status,
      required this.priority,
      required this.userEmail,
      required this.userFullName,
      this.adminResponse,
      this.adminRespondedAt,
      this.adminRespondedBy,
      required this.createdAt,
      required this.updatedAt});

  factory _$SupportMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportMessageImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String userId;
  @override
  final String category;
  @override
  final String subject;
  @override
  final String message;
  @override
  final String status;
  @override
  final String priority;
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
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SupportMessage(id: $id, userId: $userId, category: $category, subject: $subject, message: $message, status: $status, priority: $priority, userEmail: $userEmail, userFullName: $userFullName, adminResponse: $adminResponse, adminRespondedAt: $adminRespondedAt, adminRespondedBy: $adminRespondedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
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
      userId,
      category,
      subject,
      message,
      status,
      priority,
      userEmail,
      userFullName,
      adminResponse,
      adminRespondedAt,
      adminRespondedBy,
      createdAt,
      updatedAt);

  /// Create a copy of SupportMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportMessageImplCopyWith<_$SupportMessageImpl> get copyWith =>
      __$$SupportMessageImplCopyWithImpl<_$SupportMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportMessageImplToJson(
      this,
    );
  }
}

abstract class _SupportMessage implements SupportMessage {
  const factory _SupportMessage(
      {@JsonKey(name: '_id') required final String id,
      required final String userId,
      required final String category,
      required final String subject,
      required final String message,
      required final String status,
      required final String priority,
      required final String userEmail,
      required final String userFullName,
      final String? adminResponse,
      final DateTime? adminRespondedAt,
      final String? adminRespondedBy,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SupportMessageImpl;

  factory _SupportMessage.fromJson(Map<String, dynamic> json) =
      _$SupportMessageImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get userId;
  @override
  String get category;
  @override
  String get subject;
  @override
  String get message;
  @override
  String get status;
  @override
  String get priority;
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
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of SupportMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportMessageImplCopyWith<_$SupportMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupportCategory _$SupportCategoryFromJson(Map<String, dynamic> json) {
  return _SupportCategory.fromJson(json);
}

/// @nodoc
mixin _$SupportCategory {
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this SupportCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportCategoryCopyWith<SupportCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportCategoryCopyWith<$Res> {
  factory $SupportCategoryCopyWith(
          SupportCategory value, $Res Function(SupportCategory) then) =
      _$SupportCategoryCopyWithImpl<$Res, SupportCategory>;
  @useResult
  $Res call({String value, String label, String description});
}

/// @nodoc
class _$SupportCategoryCopyWithImpl<$Res, $Val extends SupportCategory>
    implements $SupportCategoryCopyWith<$Res> {
  _$SupportCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportCategoryImplCopyWith<$Res>
    implements $SupportCategoryCopyWith<$Res> {
  factory _$$SupportCategoryImplCopyWith(_$SupportCategoryImpl value,
          $Res Function(_$SupportCategoryImpl) then) =
      __$$SupportCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String label, String description});
}

/// @nodoc
class __$$SupportCategoryImplCopyWithImpl<$Res>
    extends _$SupportCategoryCopyWithImpl<$Res, _$SupportCategoryImpl>
    implements _$$SupportCategoryImplCopyWith<$Res> {
  __$$SupportCategoryImplCopyWithImpl(
      _$SupportCategoryImpl _value, $Res Function(_$SupportCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = null,
  }) {
    return _then(_$SupportCategoryImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportCategoryImpl implements _SupportCategory {
  const _$SupportCategoryImpl(
      {required this.value, required this.label, required this.description});

  factory _$SupportCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportCategoryImplFromJson(json);

  @override
  final String value;
  @override
  final String label;
  @override
  final String description;

  @override
  String toString() {
    return 'SupportCategory(value: $value, label: $label, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportCategoryImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label, description);

  /// Create a copy of SupportCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportCategoryImplCopyWith<_$SupportCategoryImpl> get copyWith =>
      __$$SupportCategoryImplCopyWithImpl<_$SupportCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportCategoryImplToJson(
      this,
    );
  }
}

abstract class _SupportCategory implements SupportCategory {
  const factory _SupportCategory(
      {required final String value,
      required final String label,
      required final String description}) = _$SupportCategoryImpl;

  factory _SupportCategory.fromJson(Map<String, dynamic> json) =
      _$SupportCategoryImpl.fromJson;

  @override
  String get value;
  @override
  String get label;
  @override
  String get description;

  /// Create a copy of SupportCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportCategoryImplCopyWith<_$SupportCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSupportMessageRequest _$CreateSupportMessageRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateSupportMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSupportMessageRequest {
  String get category => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this CreateSupportMessageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSupportMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSupportMessageRequestCopyWith<CreateSupportMessageRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupportMessageRequestCopyWith<$Res> {
  factory $CreateSupportMessageRequestCopyWith(
          CreateSupportMessageRequest value,
          $Res Function(CreateSupportMessageRequest) then) =
      _$CreateSupportMessageRequestCopyWithImpl<$Res,
          CreateSupportMessageRequest>;
  @useResult
  $Res call({String category, String subject, String message});
}

/// @nodoc
class _$CreateSupportMessageRequestCopyWithImpl<$Res,
        $Val extends CreateSupportMessageRequest>
    implements $CreateSupportMessageRequestCopyWith<$Res> {
  _$CreateSupportMessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSupportMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? subject = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSupportMessageRequestImplCopyWith<$Res>
    implements $CreateSupportMessageRequestCopyWith<$Res> {
  factory _$$CreateSupportMessageRequestImplCopyWith(
          _$CreateSupportMessageRequestImpl value,
          $Res Function(_$CreateSupportMessageRequestImpl) then) =
      __$$CreateSupportMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, String subject, String message});
}

/// @nodoc
class __$$CreateSupportMessageRequestImplCopyWithImpl<$Res>
    extends _$CreateSupportMessageRequestCopyWithImpl<$Res,
        _$CreateSupportMessageRequestImpl>
    implements _$$CreateSupportMessageRequestImplCopyWith<$Res> {
  __$$CreateSupportMessageRequestImplCopyWithImpl(
      _$CreateSupportMessageRequestImpl _value,
      $Res Function(_$CreateSupportMessageRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSupportMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? subject = null,
    Object? message = null,
  }) {
    return _then(_$CreateSupportMessageRequestImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSupportMessageRequestImpl
    implements _CreateSupportMessageRequest {
  const _$CreateSupportMessageRequestImpl(
      {required this.category, required this.subject, required this.message});

  factory _$CreateSupportMessageRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSupportMessageRequestImplFromJson(json);

  @override
  final String category;
  @override
  final String subject;
  @override
  final String message;

  @override
  String toString() {
    return 'CreateSupportMessageRequest(category: $category, subject: $subject, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSupportMessageRequestImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, subject, message);

  /// Create a copy of CreateSupportMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSupportMessageRequestImplCopyWith<_$CreateSupportMessageRequestImpl>
      get copyWith => __$$CreateSupportMessageRequestImplCopyWithImpl<
          _$CreateSupportMessageRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSupportMessageRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateSupportMessageRequest
    implements CreateSupportMessageRequest {
  const factory _CreateSupportMessageRequest(
      {required final String category,
      required final String subject,
      required final String message}) = _$CreateSupportMessageRequestImpl;

  factory _CreateSupportMessageRequest.fromJson(Map<String, dynamic> json) =
      _$CreateSupportMessageRequestImpl.fromJson;

  @override
  String get category;
  @override
  String get subject;
  @override
  String get message;

  /// Create a copy of CreateSupportMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSupportMessageRequestImplCopyWith<_$CreateSupportMessageRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportMessageResponse _$SupportMessageResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportMessageResponse {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SupportMessageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportMessageResponseCopyWith<SupportMessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportMessageResponseCopyWith<$Res> {
  factory $SupportMessageResponseCopyWith(SupportMessageResponse value,
          $Res Function(SupportMessageResponse) then) =
      _$SupportMessageResponseCopyWithImpl<$Res, SupportMessageResponse>;
  @useResult
  $Res call(
      {String id,
      String category,
      String subject,
      String status,
      DateTime createdAt});
}

/// @nodoc
class _$SupportMessageResponseCopyWithImpl<$Res,
        $Val extends SupportMessageResponse>
    implements $SupportMessageResponseCopyWith<$Res> {
  _$SupportMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subject = null,
    Object? status = null,
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
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportMessageResponseImplCopyWith<$Res>
    implements $SupportMessageResponseCopyWith<$Res> {
  factory _$$SupportMessageResponseImplCopyWith(
          _$SupportMessageResponseImpl value,
          $Res Function(_$SupportMessageResponseImpl) then) =
      __$$SupportMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String subject,
      String status,
      DateTime createdAt});
}

/// @nodoc
class __$$SupportMessageResponseImplCopyWithImpl<$Res>
    extends _$SupportMessageResponseCopyWithImpl<$Res,
        _$SupportMessageResponseImpl>
    implements _$$SupportMessageResponseImplCopyWith<$Res> {
  __$$SupportMessageResponseImplCopyWithImpl(
      _$SupportMessageResponseImpl _value,
      $Res Function(_$SupportMessageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subject = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$SupportMessageResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$SupportMessageResponseImpl implements _SupportMessageResponse {
  const _$SupportMessageResponseImpl(
      {required this.id,
      required this.category,
      required this.subject,
      required this.status,
      required this.createdAt});

  factory _$SupportMessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportMessageResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String category;
  @override
  final String subject;
  @override
  final String status;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'SupportMessageResponse(id: $id, category: $category, subject: $subject, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportMessageResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, subject, status, createdAt);

  /// Create a copy of SupportMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportMessageResponseImplCopyWith<_$SupportMessageResponseImpl>
      get copyWith => __$$SupportMessageResponseImplCopyWithImpl<
          _$SupportMessageResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportMessageResponseImplToJson(
      this,
    );
  }
}

abstract class _SupportMessageResponse implements SupportMessageResponse {
  const factory _SupportMessageResponse(
      {required final String id,
      required final String category,
      required final String subject,
      required final String status,
      required final DateTime createdAt}) = _$SupportMessageResponseImpl;

  factory _SupportMessageResponse.fromJson(Map<String, dynamic> json) =
      _$SupportMessageResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get subject;
  @override
  String get status;
  @override
  DateTime get createdAt;

  /// Create a copy of SupportMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportMessageResponseImplCopyWith<_$SupportMessageResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportCategoriesResponse _$SupportCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportCategoriesResponse {
  List<SupportCategory> get categories => throw _privateConstructorUsedError;

  /// Serializes this SupportCategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportCategoriesResponseCopyWith<SupportCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportCategoriesResponseCopyWith<$Res> {
  factory $SupportCategoriesResponseCopyWith(SupportCategoriesResponse value,
          $Res Function(SupportCategoriesResponse) then) =
      _$SupportCategoriesResponseCopyWithImpl<$Res, SupportCategoriesResponse>;
  @useResult
  $Res call({List<SupportCategory> categories});
}

/// @nodoc
class _$SupportCategoriesResponseCopyWithImpl<$Res,
        $Val extends SupportCategoriesResponse>
    implements $SupportCategoriesResponseCopyWith<$Res> {
  _$SupportCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportCategoriesResponse
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
              as List<SupportCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportCategoriesResponseImplCopyWith<$Res>
    implements $SupportCategoriesResponseCopyWith<$Res> {
  factory _$$SupportCategoriesResponseImplCopyWith(
          _$SupportCategoriesResponseImpl value,
          $Res Function(_$SupportCategoriesResponseImpl) then) =
      __$$SupportCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SupportCategory> categories});
}

/// @nodoc
class __$$SupportCategoriesResponseImplCopyWithImpl<$Res>
    extends _$SupportCategoriesResponseCopyWithImpl<$Res,
        _$SupportCategoriesResponseImpl>
    implements _$$SupportCategoriesResponseImplCopyWith<$Res> {
  __$$SupportCategoriesResponseImplCopyWithImpl(
      _$SupportCategoriesResponseImpl _value,
      $Res Function(_$SupportCategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$SupportCategoriesResponseImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SupportCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportCategoriesResponseImpl implements _SupportCategoriesResponse {
  const _$SupportCategoriesResponseImpl(
      {required final List<SupportCategory> categories})
      : _categories = categories;

  factory _$SupportCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportCategoriesResponseImplFromJson(json);

  final List<SupportCategory> _categories;
  @override
  List<SupportCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'SupportCategoriesResponse(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportCategoriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of SupportCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportCategoriesResponseImplCopyWith<_$SupportCategoriesResponseImpl>
      get copyWith => __$$SupportCategoriesResponseImplCopyWithImpl<
          _$SupportCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _SupportCategoriesResponse implements SupportCategoriesResponse {
  const factory _SupportCategoriesResponse(
          {required final List<SupportCategory> categories}) =
      _$SupportCategoriesResponseImpl;

  factory _SupportCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$SupportCategoriesResponseImpl.fromJson;

  @override
  List<SupportCategory> get categories;

  /// Create a copy of SupportCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportCategoriesResponseImplCopyWith<_$SupportCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportMessageApiResponse _$SupportMessageApiResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportMessageApiResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportMessageApiResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  SupportMessageResponse get data => throw _privateConstructorUsedError;

  /// Serializes this SupportMessageApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportMessageApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportMessageApiResponseCopyWith<SupportMessageApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportMessageApiResponseCopyWith<$Res> {
  factory $SupportMessageApiResponseCopyWith(SupportMessageApiResponse value,
          $Res Function(SupportMessageApiResponse) then) =
      _$SupportMessageApiResponseCopyWithImpl<$Res, SupportMessageApiResponse>;
  @useResult
  $Res call({bool success, String message, SupportMessageResponse data});

  $SupportMessageResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$SupportMessageApiResponseCopyWithImpl<$Res,
        $Val extends SupportMessageApiResponse>
    implements $SupportMessageApiResponseCopyWith<$Res> {
  _$SupportMessageApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportMessageApiResponse
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
              as SupportMessageResponse,
    ) as $Val);
  }

  /// Create a copy of SupportMessageApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportMessageResponseCopyWith<$Res> get data {
    return $SupportMessageResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportMessageApiResponseImplCopyWith<$Res>
    implements $SupportMessageApiResponseCopyWith<$Res> {
  factory _$$SupportMessageApiResponseImplCopyWith(
          _$SupportMessageApiResponseImpl value,
          $Res Function(_$SupportMessageApiResponseImpl) then) =
      __$$SupportMessageApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, SupportMessageResponse data});

  @override
  $SupportMessageResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$SupportMessageApiResponseImplCopyWithImpl<$Res>
    extends _$SupportMessageApiResponseCopyWithImpl<$Res,
        _$SupportMessageApiResponseImpl>
    implements _$$SupportMessageApiResponseImplCopyWith<$Res> {
  __$$SupportMessageApiResponseImplCopyWithImpl(
      _$SupportMessageApiResponseImpl _value,
      $Res Function(_$SupportMessageApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportMessageApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$SupportMessageApiResponseImpl(
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
              as SupportMessageResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportMessageApiResponseImpl implements _SupportMessageApiResponse {
  const _$SupportMessageApiResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$SupportMessageApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportMessageApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final SupportMessageResponse data;

  @override
  String toString() {
    return 'SupportMessageApiResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportMessageApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of SupportMessageApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportMessageApiResponseImplCopyWith<_$SupportMessageApiResponseImpl>
      get copyWith => __$$SupportMessageApiResponseImplCopyWithImpl<
          _$SupportMessageApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportMessageApiResponseImplToJson(
      this,
    );
  }
}

abstract class _SupportMessageApiResponse implements SupportMessageApiResponse {
  const factory _SupportMessageApiResponse(
          {required final bool success,
          required final String message,
          required final SupportMessageResponse data}) =
      _$SupportMessageApiResponseImpl;

  factory _SupportMessageApiResponse.fromJson(Map<String, dynamic> json) =
      _$SupportMessageApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  SupportMessageResponse get data;

  /// Create a copy of SupportMessageApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportMessageApiResponseImplCopyWith<_$SupportMessageApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportCategoriesApiResponse _$SupportCategoriesApiResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportCategoriesApiResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportCategoriesApiResponse {
  bool get success => throw _privateConstructorUsedError;
  List<SupportCategory> get data => throw _privateConstructorUsedError;

  /// Serializes this SupportCategoriesApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportCategoriesApiResponseCopyWith<SupportCategoriesApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportCategoriesApiResponseCopyWith<$Res> {
  factory $SupportCategoriesApiResponseCopyWith(
          SupportCategoriesApiResponse value,
          $Res Function(SupportCategoriesApiResponse) then) =
      _$SupportCategoriesApiResponseCopyWithImpl<$Res,
          SupportCategoriesApiResponse>;
  @useResult
  $Res call({bool success, List<SupportCategory> data});
}

/// @nodoc
class _$SupportCategoriesApiResponseCopyWithImpl<$Res,
        $Val extends SupportCategoriesApiResponse>
    implements $SupportCategoriesApiResponseCopyWith<$Res> {
  _$SupportCategoriesApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportCategoriesApiResponse
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
              as List<SupportCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportCategoriesApiResponseImplCopyWith<$Res>
    implements $SupportCategoriesApiResponseCopyWith<$Res> {
  factory _$$SupportCategoriesApiResponseImplCopyWith(
          _$SupportCategoriesApiResponseImpl value,
          $Res Function(_$SupportCategoriesApiResponseImpl) then) =
      __$$SupportCategoriesApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<SupportCategory> data});
}

/// @nodoc
class __$$SupportCategoriesApiResponseImplCopyWithImpl<$Res>
    extends _$SupportCategoriesApiResponseCopyWithImpl<$Res,
        _$SupportCategoriesApiResponseImpl>
    implements _$$SupportCategoriesApiResponseImplCopyWith<$Res> {
  __$$SupportCategoriesApiResponseImplCopyWithImpl(
      _$SupportCategoriesApiResponseImpl _value,
      $Res Function(_$SupportCategoriesApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$SupportCategoriesApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SupportCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportCategoriesApiResponseImpl
    implements _SupportCategoriesApiResponse {
  const _$SupportCategoriesApiResponseImpl(
      {required this.success, required final List<SupportCategory> data})
      : _data = data;

  factory _$SupportCategoriesApiResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportCategoriesApiResponseImplFromJson(json);

  @override
  final bool success;
  final List<SupportCategory> _data;
  @override
  List<SupportCategory> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SupportCategoriesApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportCategoriesApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SupportCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportCategoriesApiResponseImplCopyWith<
          _$SupportCategoriesApiResponseImpl>
      get copyWith => __$$SupportCategoriesApiResponseImplCopyWithImpl<
          _$SupportCategoriesApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportCategoriesApiResponseImplToJson(
      this,
    );
  }
}

abstract class _SupportCategoriesApiResponse
    implements SupportCategoriesApiResponse {
  const factory _SupportCategoriesApiResponse(
          {required final bool success,
          required final List<SupportCategory> data}) =
      _$SupportCategoriesApiResponseImpl;

  factory _SupportCategoriesApiResponse.fromJson(Map<String, dynamic> json) =
      _$SupportCategoriesApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<SupportCategory> get data;

  /// Create a copy of SupportCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportCategoriesApiResponseImplCopyWith<
          _$SupportCategoriesApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportMessagesListResponse _$SupportMessagesListResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportMessagesListResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportMessagesListResponse {
  List<SupportMessage> get messages => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  /// Serializes this SupportMessagesListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportMessagesListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportMessagesListResponseCopyWith<SupportMessagesListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportMessagesListResponseCopyWith<$Res> {
  factory $SupportMessagesListResponseCopyWith(
          SupportMessagesListResponse value,
          $Res Function(SupportMessagesListResponse) then) =
      _$SupportMessagesListResponseCopyWithImpl<$Res,
          SupportMessagesListResponse>;
  @useResult
  $Res call({List<SupportMessage> messages, int total, int page, int pages});
}

/// @nodoc
class _$SupportMessagesListResponseCopyWithImpl<$Res,
        $Val extends SupportMessagesListResponse>
    implements $SupportMessagesListResponseCopyWith<$Res> {
  _$SupportMessagesListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportMessagesListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<SupportMessage>,
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
abstract class _$$SupportMessagesListResponseImplCopyWith<$Res>
    implements $SupportMessagesListResponseCopyWith<$Res> {
  factory _$$SupportMessagesListResponseImplCopyWith(
          _$SupportMessagesListResponseImpl value,
          $Res Function(_$SupportMessagesListResponseImpl) then) =
      __$$SupportMessagesListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SupportMessage> messages, int total, int page, int pages});
}

/// @nodoc
class __$$SupportMessagesListResponseImplCopyWithImpl<$Res>
    extends _$SupportMessagesListResponseCopyWithImpl<$Res,
        _$SupportMessagesListResponseImpl>
    implements _$$SupportMessagesListResponseImplCopyWith<$Res> {
  __$$SupportMessagesListResponseImplCopyWithImpl(
      _$SupportMessagesListResponseImpl _value,
      $Res Function(_$SupportMessagesListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportMessagesListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_$SupportMessagesListResponseImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<SupportMessage>,
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
class _$SupportMessagesListResponseImpl
    implements _SupportMessagesListResponse {
  const _$SupportMessagesListResponseImpl(
      {required final List<SupportMessage> messages,
      required this.total,
      required this.page,
      required this.pages})
      : _messages = messages;

  factory _$SupportMessagesListResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportMessagesListResponseImplFromJson(json);

  final List<SupportMessage> _messages;
  @override
  List<SupportMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;

  @override
  String toString() {
    return 'SupportMessagesListResponse(messages: $messages, total: $total, page: $page, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportMessagesListResponseImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messages), total, page, pages);

  /// Create a copy of SupportMessagesListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportMessagesListResponseImplCopyWith<_$SupportMessagesListResponseImpl>
      get copyWith => __$$SupportMessagesListResponseImplCopyWithImpl<
          _$SupportMessagesListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportMessagesListResponseImplToJson(
      this,
    );
  }
}

abstract class _SupportMessagesListResponse
    implements SupportMessagesListResponse {
  const factory _SupportMessagesListResponse(
      {required final List<SupportMessage> messages,
      required final int total,
      required final int page,
      required final int pages}) = _$SupportMessagesListResponseImpl;

  factory _SupportMessagesListResponse.fromJson(Map<String, dynamic> json) =
      _$SupportMessagesListResponseImpl.fromJson;

  @override
  List<SupportMessage> get messages;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;

  /// Create a copy of SupportMessagesListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportMessagesListResponseImplCopyWith<_$SupportMessagesListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportMessagesApiResponse _$SupportMessagesApiResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportMessagesApiResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportMessagesApiResponse {
  bool get success => throw _privateConstructorUsedError;
  SupportMessagesListResponse get data => throw _privateConstructorUsedError;

  /// Serializes this SupportMessagesApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportMessagesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportMessagesApiResponseCopyWith<SupportMessagesApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportMessagesApiResponseCopyWith<$Res> {
  factory $SupportMessagesApiResponseCopyWith(SupportMessagesApiResponse value,
          $Res Function(SupportMessagesApiResponse) then) =
      _$SupportMessagesApiResponseCopyWithImpl<$Res,
          SupportMessagesApiResponse>;
  @useResult
  $Res call({bool success, SupportMessagesListResponse data});

  $SupportMessagesListResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$SupportMessagesApiResponseCopyWithImpl<$Res,
        $Val extends SupportMessagesApiResponse>
    implements $SupportMessagesApiResponseCopyWith<$Res> {
  _$SupportMessagesApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportMessagesApiResponse
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
              as SupportMessagesListResponse,
    ) as $Val);
  }

  /// Create a copy of SupportMessagesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportMessagesListResponseCopyWith<$Res> get data {
    return $SupportMessagesListResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportMessagesApiResponseImplCopyWith<$Res>
    implements $SupportMessagesApiResponseCopyWith<$Res> {
  factory _$$SupportMessagesApiResponseImplCopyWith(
          _$SupportMessagesApiResponseImpl value,
          $Res Function(_$SupportMessagesApiResponseImpl) then) =
      __$$SupportMessagesApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, SupportMessagesListResponse data});

  @override
  $SupportMessagesListResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$SupportMessagesApiResponseImplCopyWithImpl<$Res>
    extends _$SupportMessagesApiResponseCopyWithImpl<$Res,
        _$SupportMessagesApiResponseImpl>
    implements _$$SupportMessagesApiResponseImplCopyWith<$Res> {
  __$$SupportMessagesApiResponseImplCopyWithImpl(
      _$SupportMessagesApiResponseImpl _value,
      $Res Function(_$SupportMessagesApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportMessagesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$SupportMessagesApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SupportMessagesListResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportMessagesApiResponseImpl implements _SupportMessagesApiResponse {
  const _$SupportMessagesApiResponseImpl(
      {required this.success, required this.data});

  factory _$SupportMessagesApiResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportMessagesApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final SupportMessagesListResponse data;

  @override
  String toString() {
    return 'SupportMessagesApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportMessagesApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of SupportMessagesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportMessagesApiResponseImplCopyWith<_$SupportMessagesApiResponseImpl>
      get copyWith => __$$SupportMessagesApiResponseImplCopyWithImpl<
          _$SupportMessagesApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportMessagesApiResponseImplToJson(
      this,
    );
  }
}

abstract class _SupportMessagesApiResponse
    implements SupportMessagesApiResponse {
  const factory _SupportMessagesApiResponse(
          {required final bool success,
          required final SupportMessagesListResponse data}) =
      _$SupportMessagesApiResponseImpl;

  factory _SupportMessagesApiResponse.fromJson(Map<String, dynamic> json) =
      _$SupportMessagesApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  SupportMessagesListResponse get data;

  /// Create a copy of SupportMessagesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportMessagesApiResponseImplCopyWith<_$SupportMessagesApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportMessageDetailApiResponse _$SupportMessageDetailApiResponseFromJson(
    Map<String, dynamic> json) {
  return _SupportMessageDetailApiResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportMessageDetailApiResponse {
  bool get success => throw _privateConstructorUsedError;
  SupportMessage get data => throw _privateConstructorUsedError;

  /// Serializes this SupportMessageDetailApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportMessageDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportMessageDetailApiResponseCopyWith<SupportMessageDetailApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportMessageDetailApiResponseCopyWith<$Res> {
  factory $SupportMessageDetailApiResponseCopyWith(
          SupportMessageDetailApiResponse value,
          $Res Function(SupportMessageDetailApiResponse) then) =
      _$SupportMessageDetailApiResponseCopyWithImpl<$Res,
          SupportMessageDetailApiResponse>;
  @useResult
  $Res call({bool success, SupportMessage data});

  $SupportMessageCopyWith<$Res> get data;
}

/// @nodoc
class _$SupportMessageDetailApiResponseCopyWithImpl<$Res,
        $Val extends SupportMessageDetailApiResponse>
    implements $SupportMessageDetailApiResponseCopyWith<$Res> {
  _$SupportMessageDetailApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportMessageDetailApiResponse
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
              as SupportMessage,
    ) as $Val);
  }

  /// Create a copy of SupportMessageDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportMessageCopyWith<$Res> get data {
    return $SupportMessageCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportMessageDetailApiResponseImplCopyWith<$Res>
    implements $SupportMessageDetailApiResponseCopyWith<$Res> {
  factory _$$SupportMessageDetailApiResponseImplCopyWith(
          _$SupportMessageDetailApiResponseImpl value,
          $Res Function(_$SupportMessageDetailApiResponseImpl) then) =
      __$$SupportMessageDetailApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, SupportMessage data});

  @override
  $SupportMessageCopyWith<$Res> get data;
}

/// @nodoc
class __$$SupportMessageDetailApiResponseImplCopyWithImpl<$Res>
    extends _$SupportMessageDetailApiResponseCopyWithImpl<$Res,
        _$SupportMessageDetailApiResponseImpl>
    implements _$$SupportMessageDetailApiResponseImplCopyWith<$Res> {
  __$$SupportMessageDetailApiResponseImplCopyWithImpl(
      _$SupportMessageDetailApiResponseImpl _value,
      $Res Function(_$SupportMessageDetailApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportMessageDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$SupportMessageDetailApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SupportMessage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportMessageDetailApiResponseImpl
    implements _SupportMessageDetailApiResponse {
  const _$SupportMessageDetailApiResponseImpl(
      {required this.success, required this.data});

  factory _$SupportMessageDetailApiResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportMessageDetailApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final SupportMessage data;

  @override
  String toString() {
    return 'SupportMessageDetailApiResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportMessageDetailApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of SupportMessageDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportMessageDetailApiResponseImplCopyWith<
          _$SupportMessageDetailApiResponseImpl>
      get copyWith => __$$SupportMessageDetailApiResponseImplCopyWithImpl<
          _$SupportMessageDetailApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportMessageDetailApiResponseImplToJson(
      this,
    );
  }
}

abstract class _SupportMessageDetailApiResponse
    implements SupportMessageDetailApiResponse {
  const factory _SupportMessageDetailApiResponse(
          {required final bool success, required final SupportMessage data}) =
      _$SupportMessageDetailApiResponseImpl;

  factory _SupportMessageDetailApiResponse.fromJson(Map<String, dynamic> json) =
      _$SupportMessageDetailApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  SupportMessage get data;

  /// Create a copy of SupportMessageDetailApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportMessageDetailApiResponseImplCopyWith<
          _$SupportMessageDetailApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
