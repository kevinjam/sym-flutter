// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(final String message) = _$ServerFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NetworkFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.networkError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure(final String message) = _$NetworkFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CacheFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl implements CacheFailure {
  const _$CacheFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cacheError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) {
    return cacheError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) {
    return cacheError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return cacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure(final String message) = _$CacheFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ValidationFailureImplCopyWith(_$ValidationFailureImpl value,
          $Res Function(_$ValidationFailureImpl) then) =
      __$$ValidationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ValidationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationFailureImpl>
    implements _$$ValidationFailureImplCopyWith<$Res> {
  __$$ValidationFailureImplCopyWithImpl(_$ValidationFailureImpl _value,
      $Res Function(_$ValidationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ValidationFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidationFailureImpl implements ValidationFailure {
  const _$ValidationFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.validationError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      __$$ValidationFailureImplCopyWithImpl<_$ValidationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) {
    return validationError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) {
    return validationError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return validationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class ValidationFailure implements Failure {
  const factory ValidationFailure(final String message) =
      _$ValidationFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AuthenticationFailureImplCopyWith(
          _$AuthenticationFailureImpl value,
          $Res Function(_$AuthenticationFailureImpl) then) =
      __$$AuthenticationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthenticationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthenticationFailureImpl>
    implements _$$AuthenticationFailureImplCopyWith<$Res> {
  __$$AuthenticationFailureImplCopyWithImpl(_$AuthenticationFailureImpl _value,
      $Res Function(_$AuthenticationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthenticationFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationFailureImpl implements AuthenticationFailure {
  const _$AuthenticationFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.authenticationError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => __$$AuthenticationFailureImplCopyWithImpl<
          _$AuthenticationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) {
    return authenticationError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) {
    return authenticationError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (authenticationError != null) {
      return authenticationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return authenticationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return authenticationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (authenticationError != null) {
      return authenticationError(this);
    }
    return orElse();
  }
}

abstract class AuthenticationFailure implements Failure {
  const factory AuthenticationFailure(final String message) =
      _$AuthenticationFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotificationFailureImplCopyWith(_$NotificationFailureImpl value,
          $Res Function(_$NotificationFailureImpl) then) =
      __$$NotificationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotificationFailureImpl>
    implements _$$NotificationFailureImplCopyWith<$Res> {
  __$$NotificationFailureImplCopyWithImpl(_$NotificationFailureImpl _value,
      $Res Function(_$NotificationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationFailureImpl implements NotificationFailure {
  const _$NotificationFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notificationError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationFailureImplCopyWith<_$NotificationFailureImpl> get copyWith =>
      __$$NotificationFailureImplCopyWithImpl<_$NotificationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) {
    return notificationError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) {
    return notificationError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (notificationError != null) {
      return notificationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return notificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return notificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (notificationError != null) {
      return notificationError(this);
    }
    return orElse();
  }
}

abstract class NotificationFailure implements Failure {
  const factory NotificationFailure(final String message) =
      _$NotificationFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationFailureImplCopyWith<_$NotificationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SyncFailureImplCopyWith(
          _$SyncFailureImpl value, $Res Function(_$SyncFailureImpl) then) =
      __$$SyncFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SyncFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SyncFailureImpl>
    implements _$$SyncFailureImplCopyWith<$Res> {
  __$$SyncFailureImplCopyWithImpl(
      _$SyncFailureImpl _value, $Res Function(_$SyncFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SyncFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SyncFailureImpl implements SyncFailure {
  const _$SyncFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.syncError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncFailureImplCopyWith<_$SyncFailureImpl> get copyWith =>
      __$$SyncFailureImplCopyWithImpl<_$SyncFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) {
    return syncError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) {
    return syncError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (syncError != null) {
      return syncError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return syncError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return syncError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (syncError != null) {
      return syncError(this);
    }
    return orElse();
  }
}

abstract class SyncFailure implements Failure {
  const factory SyncFailure(final String message) = _$SyncFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SyncFailureImplCopyWith<_$SyncFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) networkError,
    required TResult Function(String message) cacheError,
    required TResult Function(String message) validationError,
    required TResult Function(String message) authenticationError,
    required TResult Function(String message) notificationError,
    required TResult Function(String message) syncError,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? networkError,
    TResult? Function(String message)? cacheError,
    TResult? Function(String message)? validationError,
    TResult? Function(String message)? authenticationError,
    TResult? Function(String message)? notificationError,
    TResult? Function(String message)? syncError,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? networkError,
    TResult Function(String message)? cacheError,
    TResult Function(String message)? validationError,
    TResult Function(String message)? authenticationError,
    TResult Function(String message)? notificationError,
    TResult Function(String message)? syncError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(ValidationFailure value) validationError,
    required TResult Function(AuthenticationFailure value) authenticationError,
    required TResult Function(NotificationFailure value) notificationError,
    required TResult Function(SyncFailure value) syncError,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(ValidationFailure value)? validationError,
    TResult? Function(AuthenticationFailure value)? authenticationError,
    TResult? Function(NotificationFailure value)? notificationError,
    TResult? Function(SyncFailure value)? syncError,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(ValidationFailure value)? validationError,
    TResult Function(AuthenticationFailure value)? authenticationError,
    TResult Function(NotificationFailure value)? notificationError,
    TResult Function(SyncFailure value)? syncError,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure(final String message) = _$UnknownFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
