import 'package:dartz/dartz.dart';
import '../../core/errors/failures.dart';
import '../entities/notification.dart';

abstract class NotificationRepository {
  Future<Either<Failure, AppNotificationResponse>> getNotifications({
    int page = 1,
    int limit = 20,
    bool? unreadOnly,
  });

  Future<Either<Failure, void>> markAsRead(String id);
  Future<Either<Failure, void>> markAllAsRead();
  Future<Either<Failure, int>> getUnreadCount();
  Future<Either<Failure, void>> deleteNotification(String id);
}
