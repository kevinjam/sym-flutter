// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportMessageImpl _$$SupportMessageImplFromJson(Map<String, dynamic> json) =>
    _$SupportMessageImpl(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      category: json['category'] as String,
      subject: json['subject'] as String,
      message: json['message'] as String,
      status: json['status'] as String,
      priority: json['priority'] as String,
      userEmail: json['userEmail'] as String,
      userFullName: json['userFullName'] as String,
      adminResponse: json['adminResponse'] as String?,
      adminRespondedAt: json['adminRespondedAt'] == null
          ? null
          : DateTime.parse(json['adminRespondedAt'] as String),
      adminRespondedBy: json['adminRespondedBy'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SupportMessageImplToJson(
        _$SupportMessageImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'category': instance.category,
      'subject': instance.subject,
      'message': instance.message,
      'status': instance.status,
      'priority': instance.priority,
      'userEmail': instance.userEmail,
      'userFullName': instance.userFullName,
      'adminResponse': instance.adminResponse,
      'adminRespondedAt': instance.adminRespondedAt?.toIso8601String(),
      'adminRespondedBy': instance.adminRespondedBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$SupportCategoryImpl _$$SupportCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportCategoryImpl(
      value: json['value'] as String,
      label: json['label'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$SupportCategoryImplToJson(
        _$SupportCategoryImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'description': instance.description,
    };

_$CreateSupportMessageRequestImpl _$$CreateSupportMessageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSupportMessageRequestImpl(
      category: json['category'] as String,
      subject: json['subject'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CreateSupportMessageRequestImplToJson(
        _$CreateSupportMessageRequestImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'subject': instance.subject,
      'message': instance.message,
    };

_$SupportMessageResponseImpl _$$SupportMessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportMessageResponseImpl(
      id: json['id'] as String,
      category: json['category'] as String,
      subject: json['subject'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SupportMessageResponseImplToJson(
        _$SupportMessageResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'subject': instance.subject,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$SupportCategoriesResponseImpl _$$SupportCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportCategoriesResponseImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => SupportCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SupportCategoriesResponseImplToJson(
        _$SupportCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$SupportMessageApiResponseImpl _$$SupportMessageApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportMessageApiResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data:
          SupportMessageResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupportMessageApiResponseImplToJson(
        _$SupportMessageApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$SupportCategoriesApiResponseImpl _$$SupportCategoriesApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportCategoriesApiResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => SupportCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SupportCategoriesApiResponseImplToJson(
        _$SupportCategoriesApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$SupportMessagesListResponseImpl _$$SupportMessagesListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportMessagesListResponseImpl(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => SupportMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$$SupportMessagesListResponseImplToJson(
        _$SupportMessagesListResponseImpl instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
    };

_$SupportMessagesApiResponseImpl _$$SupportMessagesApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportMessagesApiResponseImpl(
      success: json['success'] as bool,
      data: SupportMessagesListResponse.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupportMessagesApiResponseImplToJson(
        _$SupportMessagesApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$SupportMessageDetailApiResponseImpl
    _$$SupportMessageDetailApiResponseImplFromJson(Map<String, dynamic> json) =>
        _$SupportMessageDetailApiResponseImpl(
          success: json['success'] as bool,
          data: SupportMessage.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportMessageDetailApiResponseImplToJson(
        _$SupportMessageDetailApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
