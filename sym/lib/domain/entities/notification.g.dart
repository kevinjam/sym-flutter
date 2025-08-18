// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      id: json['_id'] as String,
      recipientId: json['recipientId'] as String,
      senderId: json['senderId'] as String?,
      type: json['type'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      data: json['data'] as Map<String, dynamic>? ?? const {},
      priority: json['priority'] as String? ?? 'normal',
      isRead: json['isRead'] as bool? ?? false,
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
      isSent: json['isSent'] as bool? ?? false,
      sentAt: json['sentAt'] == null
          ? null
          : DateTime.parse(json['sentAt'] as String),
      scheduledFor: json['scheduledFor'] == null
          ? null
          : DateTime.parse(json['scheduledFor'] as String),
      retryCount: (json['retryCount'] as num?)?.toInt() ?? 0,
      maxRetries: (json['maxRetries'] as num?)?.toInt() ?? 3,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
        _$AppNotificationImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'recipientId': instance.recipientId,
      'senderId': instance.senderId,
      'type': instance.type,
      'title': instance.title,
      'message': instance.message,
      'data': instance.data,
      'priority': instance.priority,
      'isRead': instance.isRead,
      'readAt': instance.readAt?.toIso8601String(),
      'isSent': instance.isSent,
      'sentAt': instance.sentAt?.toIso8601String(),
      'scheduledFor': instance.scheduledFor?.toIso8601String(),
      'retryCount': instance.retryCount,
      'maxRetries': instance.maxRetries,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$AppNotificationResponseImpl _$$AppNotificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationResponseImpl(
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) => AppNotification.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      hasMore: json['hasMore'] as bool,
    );

Map<String, dynamic> _$$AppNotificationResponseImplToJson(
        _$AppNotificationResponseImpl instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'hasMore': instance.hasMore,
    };

_$UnreadCountResponseImpl _$$UnreadCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UnreadCountResponseImpl(
      unreadCount: (json['unreadCount'] as num).toInt(),
    );

Map<String, dynamic> _$$UnreadCountResponseImplToJson(
        _$UnreadCountResponseImpl instance) =>
    <String, dynamic>{
      'unreadCount': instance.unreadCount,
    };
