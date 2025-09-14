// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthMetricImpl _$$HealthMetricImplFromJson(Map<String, dynamic> json) =>
    _$HealthMetricImpl(
      name: json['name'] as String,
      value: json['value'] as String,
      unit: json['unit'] as String,
      status: json['status'] as String? ?? 'normal',
      referenceRange: json['referenceRange'] as String?,
    );

Map<String, dynamic> _$$HealthMetricImplToJson(_$HealthMetricImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'unit': instance.unit,
      'status': instance.status,
      'referenceRange': instance.referenceRange,
    };

_$TestResultImpl _$$TestResultImplFromJson(Map<String, dynamic> json) =>
    _$TestResultImpl(
      testName: json['testName'] as String,
      result: json['result'] as String,
      unit: json['unit'] as String?,
      status: json['status'] as String? ?? 'normal',
      referenceRange: json['referenceRange'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$TestResultImplToJson(_$TestResultImpl instance) =>
    <String, dynamic>{
      'testName': instance.testName,
      'result': instance.result,
      'unit': instance.unit,
      'status': instance.status,
      'referenceRange': instance.referenceRange,
      'notes': instance.notes,
    };

_$AttachmentImpl _$$AttachmentImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentImpl(
      fileName: json['fileName'] as String,
      fileUrl: json['fileUrl'] as String,
      fileType: json['fileType'] as String,
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
    );

Map<String, dynamic> _$$AttachmentImplToJson(_$AttachmentImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'fileType': instance.fileType,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['_id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      specialty: json['specialty'] as String?,
      hospitalName: json['hospitalName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'specialty': instance.specialty,
      'hospitalName': instance.hospitalName,
      'phoneNumber': instance.phoneNumber,
    };

_$HealthReportImpl _$$HealthReportImplFromJson(Map<String, dynamic> json) =>
    _$HealthReportImpl(
      id: json['_id'] as String,
      patient: User.fromJson(json['patient'] as Map<String, dynamic>),
      doctor: json['doctor'] == null
          ? null
          : User.fromJson(json['doctor'] as Map<String, dynamic>),
      reportType: json['reportType'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      reportDate: DateTime.parse(json['reportDate'] as String),
      healthMetrics: (json['healthMetrics'] as List<dynamic>?)
              ?.map((e) => HealthMetric.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      testResults: (json['testResults'] as List<dynamic>?)
              ?.map((e) => TestResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      doctorNotes: json['doctorNotes'] as String?,
      recommendations: json['recommendations'] as String?,
      followUpRequired: json['followUpRequired'] as bool? ?? false,
      followUpDate: json['followUpDate'] == null
          ? null
          : DateTime.parse(json['followUpDate'] as String),
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isActive: json['isActive'] as bool? ?? true,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      formattedDate: json['formattedDate'] as String?,
      ageInDays: (json['ageInDays'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HealthReportImplToJson(_$HealthReportImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'patient': instance.patient,
      'doctor': instance.doctor,
      'reportType': instance.reportType,
      'title': instance.title,
      'description': instance.description,
      'reportDate': instance.reportDate.toIso8601String(),
      'healthMetrics': instance.healthMetrics,
      'testResults': instance.testResults,
      'doctorNotes': instance.doctorNotes,
      'recommendations': instance.recommendations,
      'followUpRequired': instance.followUpRequired,
      'followUpDate': instance.followUpDate?.toIso8601String(),
      'attachments': instance.attachments,
      'isActive': instance.isActive,
      'tags': instance.tags,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'formattedDate': instance.formattedDate,
      'ageInDays': instance.ageInDays,
    };

_$CreateHealthReportRequestImpl _$$CreateHealthReportRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateHealthReportRequestImpl(
      patient: json['patient'] as String,
      doctor: json['doctor'] as String?,
      reportType: json['reportType'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      reportDate: json['reportDate'] == null
          ? null
          : DateTime.parse(json['reportDate'] as String),
      healthMetrics: (json['healthMetrics'] as List<dynamic>?)
              ?.map((e) => HealthMetric.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      testResults: (json['testResults'] as List<dynamic>?)
              ?.map((e) => TestResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      doctorNotes: json['doctorNotes'] as String?,
      recommendations: json['recommendations'] as String?,
      followUpRequired: json['followUpRequired'] as bool? ?? false,
      followUpDate: json['followUpDate'] == null
          ? null
          : DateTime.parse(json['followUpDate'] as String),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$CreateHealthReportRequestImplToJson(
        _$CreateHealthReportRequestImpl instance) =>
    <String, dynamic>{
      'patient': instance.patient,
      'doctor': instance.doctor,
      'reportType': instance.reportType,
      'title': instance.title,
      'description': instance.description,
      'reportDate': instance.reportDate?.toIso8601String(),
      'healthMetrics': instance.healthMetrics,
      'testResults': instance.testResults,
      'doctorNotes': instance.doctorNotes,
      'recommendations': instance.recommendations,
      'followUpRequired': instance.followUpRequired,
      'followUpDate': instance.followUpDate?.toIso8601String(),
      'tags': instance.tags,
    };

_$UpdateHealthReportRequestImpl _$$UpdateHealthReportRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateHealthReportRequestImpl(
      doctor: json['doctor'] as String?,
      reportType: json['reportType'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      reportDate: json['reportDate'] == null
          ? null
          : DateTime.parse(json['reportDate'] as String),
      healthMetrics: (json['healthMetrics'] as List<dynamic>?)
          ?.map((e) => HealthMetric.fromJson(e as Map<String, dynamic>))
          .toList(),
      testResults: (json['testResults'] as List<dynamic>?)
          ?.map((e) => TestResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      doctorNotes: json['doctorNotes'] as String?,
      recommendations: json['recommendations'] as String?,
      followUpRequired: json['followUpRequired'] as bool?,
      followUpDate: json['followUpDate'] == null
          ? null
          : DateTime.parse(json['followUpDate'] as String),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UpdateHealthReportRequestImplToJson(
        _$UpdateHealthReportRequestImpl instance) =>
    <String, dynamic>{
      'doctor': instance.doctor,
      'reportType': instance.reportType,
      'title': instance.title,
      'description': instance.description,
      'reportDate': instance.reportDate?.toIso8601String(),
      'healthMetrics': instance.healthMetrics,
      'testResults': instance.testResults,
      'doctorNotes': instance.doctorNotes,
      'recommendations': instance.recommendations,
      'followUpRequired': instance.followUpRequired,
      'followUpDate': instance.followUpDate?.toIso8601String(),
      'tags': instance.tags,
    };

_$ReportTypeImpl _$$ReportTypeImplFromJson(Map<String, dynamic> json) =>
    _$ReportTypeImpl(
      value: json['value'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$$ReportTypeImplToJson(_$ReportTypeImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
    };

_$HealthSummaryImpl _$$HealthSummaryImplFromJson(Map<String, dynamic> json) =>
    _$HealthSummaryImpl(
      latestReport: json['latestReport'] == null
          ? null
          : HealthReport.fromJson(json['latestReport'] as Map<String, dynamic>),
      reportCounts: (json['reportCounts'] as List<dynamic>?)
              ?.map((e) => ReportCount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recentReports: (json['recentReports'] as List<dynamic>?)
              ?.map((e) => HealthReport.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      healthMetricsSummary: (json['healthMetricsSummary'] as List<dynamic>?)
              ?.map((e) => HealthMetric.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$HealthSummaryImplToJson(_$HealthSummaryImpl instance) =>
    <String, dynamic>{
      'latestReport': instance.latestReport,
      'reportCounts': instance.reportCounts,
      'recentReports': instance.recentReports,
      'healthMetricsSummary': instance.healthMetricsSummary,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };

_$ReportCountImpl _$$ReportCountImplFromJson(Map<String, dynamic> json) =>
    _$ReportCountImpl(
      reportType: json['reportType'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$ReportCountImplToJson(_$ReportCountImpl instance) =>
    <String, dynamic>{
      'reportType': instance.reportType,
      'count': instance.count,
    };

_$HealthReportApiResponseImpl _$$HealthReportApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthReportApiResponseImpl(
      success: json['success'] as bool,
      data: HealthReport.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HealthReportApiResponseImplToJson(
        _$HealthReportApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$HealthReportsListResponseImpl _$$HealthReportsListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthReportsListResponseImpl(
      reports: (json['reports'] as List<dynamic>)
          .map((e) => HealthReport.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationInfo.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HealthReportsListResponseImplToJson(
        _$HealthReportsListResponseImpl instance) =>
    <String, dynamic>{
      'reports': instance.reports,
      'pagination': instance.pagination,
    };

_$HealthReportsApiResponseImpl _$$HealthReportsApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthReportsApiResponseImpl(
      success: json['success'] as bool,
      data: HealthReportsListResponse.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HealthReportsApiResponseImplToJson(
        _$HealthReportsApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$HealthSummaryApiResponseImpl _$$HealthSummaryApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthSummaryApiResponseImpl(
      success: json['success'] as bool,
      data: HealthSummary.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HealthSummaryApiResponseImplToJson(
        _$HealthSummaryApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$ReportTypesApiResponseImpl _$$ReportTypesApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportTypesApiResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => ReportType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReportTypesApiResponseImplToJson(
        _$ReportTypesApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$PaginationInfoImpl _$$PaginationInfoImplFromJson(Map<String, dynamic> json) =>
    _$PaginationInfoImpl(
      currentPage: (json['currentPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalReports: (json['totalReports'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
      hasPrev: json['hasPrev'] as bool,
    );

Map<String, dynamic> _$$PaginationInfoImplToJson(
        _$PaginationInfoImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'totalReports': instance.totalReports,
      'hasNext': instance.hasNext,
      'hasPrev': instance.hasPrev,
    };

_$SuccessResponseImpl _$$SuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SuccessResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$SuccessResponseImplToJson(
        _$SuccessResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
