import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverError(String message) = ServerFailure;
  const factory Failure.networkError(String message) = NetworkFailure;
  const factory Failure.cacheError(String message) = CacheFailure;
  const factory Failure.validationError(String message) = ValidationFailure;
  const factory Failure.authenticationError(String message) = AuthenticationFailure;
  const factory Failure.notificationError(String message) = NotificationFailure;
  const factory Failure.syncError(String message) = SyncFailure;
  const factory Failure.unknown(String message) = UnknownFailure;
}
