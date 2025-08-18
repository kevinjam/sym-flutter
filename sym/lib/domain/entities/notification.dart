import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    @JsonKey(name: '_id') required String id,
    required String recipientId,
    String? senderId,
    required String type,
    required String title,
    required String message,
    @Default({}) Map<String, dynamic> data,
    @Default('normal') String priority,
    @Default(false) bool isRead,
    DateTime? readAt,
    @Default(false) bool isSent,
    DateTime? sentAt,
    DateTime? scheduledFor,
    @Default(0) int retryCount,
    @Default(3) int maxRetries,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) => _$AppNotificationFromJson(json);
}

@freezed
class AppNotificationResponse with _$AppNotificationResponse {
  const factory AppNotificationResponse({
    required List<AppNotification> notifications,
    required int totalCount,
    required int currentPage,
    required int totalPages,
    required bool hasMore,
  }) = _AppNotificationResponse;

  factory AppNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationResponseFromJson(json);
}

@freezed
class UnreadCountResponse with _$UnreadCountResponse {
  const factory UnreadCountResponse({
    required int unreadCount,
  }) = _UnreadCountResponse;

  factory UnreadCountResponse.fromJson(Map<String, dynamic> json) => _$UnreadCountResponseFromJson(json);
}

// Notification types enum
enum NotificationType {
  medicationReminder('medication_reminder'),
  medicationStopped('medication_stopped'),
  medicationPrescribed('medication_prescribed'),
  symptomAlert('symptom_alert'),
  symptomReported('symptom_reported'),
  symptomResolved('symptom_resolved'),
  connectionRequest('connection_request'),
  connectionResponse('connection_response'),
  doctorMessage('doctor_message'),
  adherenceAlert('adherence_alert'),
  systemNotification('system_notification');

  const NotificationType(this.value);
  final String value;

  static NotificationType fromString(String value) {
    return NotificationType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => NotificationType.systemNotification,
    );
  }
}

// Notification priority enum
enum NotificationPriority {
  low('low'),
  normal('normal'),
  high('high'),
  urgent('urgent');

  const NotificationPriority(this.value);
  final String value;

  static NotificationPriority fromString(String value) {
    return NotificationPriority.values.firstWhere(
      (priority) => priority.value == value,
      orElse: () => NotificationPriority.normal,
    );
  }
}
