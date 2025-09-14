// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bug_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BugReportImpl _$$BugReportImplFromJson(Map<String, dynamic> json) =>
    _$BugReportImpl(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      category: json['category'] as String,
      severity: json['severity'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      priority: json['priority'] as String,
      deviceInfo:
          DeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
      userEmail: json['userEmail'] as String,
      userFullName: json['userFullName'] as String,
      adminResponse: json['adminResponse'] as String?,
      adminRespondedAt: json['adminRespondedAt'] == null
          ? null
          : DateTime.parse(json['adminRespondedAt'] as String),
      adminRespondedBy: json['adminRespondedBy'] as String?,
      stepsToReproduce: json['stepsToReproduce'] as String?,
      expectedBehavior: json['expectedBehavior'] as String?,
      actualBehavior: json['actualBehavior'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$BugReportImplToJson(_$BugReportImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'category': instance.category,
      'severity': instance.severity,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'priority': instance.priority,
      'deviceInfo': instance.deviceInfo,
      'userEmail': instance.userEmail,
      'userFullName': instance.userFullName,
      'adminResponse': instance.adminResponse,
      'adminRespondedAt': instance.adminRespondedAt?.toIso8601String(),
      'adminRespondedBy': instance.adminRespondedBy,
      'stepsToReproduce': instance.stepsToReproduce,
      'expectedBehavior': instance.expectedBehavior,
      'actualBehavior': instance.actualBehavior,
      'attachments': instance.attachments,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$DeviceInfoImpl _$$DeviceInfoImplFromJson(Map<String, dynamic> json) =>
    _$DeviceInfoImpl(
      platform: json['platform'] as String,
      deviceModel: json['deviceModel'] as String,
      osVersion: json['osVersion'] as String,
      appVersion: json['appVersion'] as String,
      screenResolution: json['screenResolution'] as String?,
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$$DeviceInfoImplToJson(_$DeviceInfoImpl instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'deviceModel': instance.deviceModel,
      'osVersion': instance.osVersion,
      'appVersion': instance.appVersion,
      'screenResolution': instance.screenResolution,
      'deviceId': instance.deviceId,
    };

_$AttachmentImpl _$$AttachmentImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentImpl(
      url: json['url'] as String,
      filename: json['filename'] as String,
      fileSize: (json['fileSize'] as num).toInt(),
      mimeType: json['mimeType'] as String,
    );

Map<String, dynamic> _$$AttachmentImplToJson(_$AttachmentImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'filename': instance.filename,
      'fileSize': instance.fileSize,
      'mimeType': instance.mimeType,
    };

_$BugReportCategoryImpl _$$BugReportCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$BugReportCategoryImpl(
      value: json['value'] as String,
      label: json['label'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$BugReportCategoryImplToJson(
        _$BugReportCategoryImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'description': instance.description,
      'icon': instance.icon,
    };

_$SeverityLevelImpl _$$SeverityLevelImplFromJson(Map<String, dynamic> json) =>
    _$SeverityLevelImpl(
      value: json['value'] as String,
      label: json['label'] as String,
      description: json['description'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$SeverityLevelImplToJson(_$SeverityLevelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'description': instance.description,
      'color': instance.color,
    };

_$CreateBugReportRequestImpl _$$CreateBugReportRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBugReportRequestImpl(
      category: json['category'] as String,
      severity: json['severity'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      stepsToReproduce: json['stepsToReproduce'] as String?,
      expectedBehavior: json['expectedBehavior'] as String?,
      actualBehavior: json['actualBehavior'] as String?,
      deviceInfo:
          DeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateBugReportRequestImplToJson(
        _$CreateBugReportRequestImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'severity': instance.severity,
      'title': instance.title,
      'description': instance.description,
      'stepsToReproduce': instance.stepsToReproduce,
      'expectedBehavior': instance.expectedBehavior,
      'actualBehavior': instance.actualBehavior,
      'deviceInfo': instance.deviceInfo,
    };

_$BugReportResponseImpl _$$BugReportResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BugReportResponseImpl(
      id: json['id'] as String,
      category: json['category'] as String,
      title: json['title'] as String,
      status: json['status'] as String,
      priority: json['priority'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$BugReportResponseImplToJson(
        _$BugReportResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'title': instance.title,
      'status': instance.status,
      'priority': instance.priority,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$BugReportCategoriesResponseImpl _$$BugReportCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BugReportCategoriesResponseImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => BugReportCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BugReportCategoriesResponseImplToJson(
        _$BugReportCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$SeverityLevelsResponseImpl _$$SeverityLevelsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SeverityLevelsResponseImpl(
      severityLevels: (json['severityLevels'] as List<dynamic>)
          .map((e) => SeverityLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SeverityLevelsResponseImplToJson(
        _$SeverityLevelsResponseImpl instance) =>
    <String, dynamic>{
      'severityLevels': instance.severityLevels,
    };

_$BugReportApiResponseImpl _$$BugReportApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BugReportApiResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: BugReportResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BugReportApiResponseImplToJson(
        _$BugReportApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$BugReportCategoriesApiResponseImpl
    _$$BugReportCategoriesApiResponseImplFromJson(Map<String, dynamic> json) =>
        _$BugReportCategoriesApiResponseImpl(
          success: json['success'] as bool,
          data: (json['data'] as List<dynamic>)
              .map((e) => BugReportCategory.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BugReportCategoriesApiResponseImplToJson(
        _$BugReportCategoriesApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$SeverityLevelsApiResponseImpl _$$SeverityLevelsApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SeverityLevelsApiResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => SeverityLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SeverityLevelsApiResponseImplToJson(
        _$SeverityLevelsApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$BugReportsListResponseImpl _$$BugReportsListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BugReportsListResponseImpl(
      reports: (json['reports'] as List<dynamic>)
          .map((e) => BugReport.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$$BugReportsListResponseImplToJson(
        _$BugReportsListResponseImpl instance) =>
    <String, dynamic>{
      'reports': instance.reports,
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
    };

_$BugReportsApiResponseImpl _$$BugReportsApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BugReportsApiResponseImpl(
      success: json['success'] as bool,
      data:
          BugReportsListResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BugReportsApiResponseImplToJson(
        _$BugReportsApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$BugReportDetailApiResponseImpl _$$BugReportDetailApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BugReportDetailApiResponseImpl(
      success: json['success'] as bool,
      data: BugReport.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BugReportDetailApiResponseImplToJson(
        _$BugReportDetailApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
