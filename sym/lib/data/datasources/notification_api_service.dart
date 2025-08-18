import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/notification.dart';

part 'notification_api_service.g.dart';

@RestApi()
abstract class NotificationApiService {
  factory NotificationApiService(Dio dio) = _NotificationApiService;

  @GET('/api/notifications')
  Future<AppNotificationResponse> getNotifications({
    @Query('page') int page = 1,
    @Query('limit') int limit = 20,
    @Query('unreadOnly') bool? unreadOnly,
  });

  @POST('/api/notification/{id}/read')
  Future<void> markAsRead(@Path('id') String id);

  @POST('/api/notification/read-all')
  Future<void> markAllAsRead();

  @GET('/api/notification/unread-count')
  Future<UnreadCountResponse> getUnreadCount();

  @DELETE('/api/notification/{id}')
  Future<void> deleteNotification(@Path('id') String id);
}
