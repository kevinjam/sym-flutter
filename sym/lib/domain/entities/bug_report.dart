import 'package:freezed_annotation/freezed_annotation.dart';

part 'bug_report.freezed.dart';
part 'bug_report.g.dart';

@freezed
class BugReport with _$BugReport {
  const factory BugReport({
    @JsonKey(name: '_id') required String id,
    required String userId,
    required String category,
    required String severity,
    required String title,
    required String description,
    required String status,
    required String priority,
    required DeviceInfo deviceInfo,
    required String userEmail,
    required String userFullName,
    String? adminResponse,
    DateTime? adminRespondedAt,
    String? adminRespondedBy,
    String? stepsToReproduce,
    String? expectedBehavior,
    String? actualBehavior,
    @Default([]) List<Attachment> attachments,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BugReport;

  factory BugReport.fromJson(Map<String, dynamic> json) => _$BugReportFromJson(json);
}

@freezed
class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo({
    required String platform,
    required String deviceModel,
    required String osVersion,
    required String appVersion,
    String? screenResolution,
    String? deviceId,
  }) = _DeviceInfo;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) => _$DeviceInfoFromJson(json);
}

@freezed
class Attachment with _$Attachment {
  const factory Attachment({
    required String url,
    required String filename,
    required int fileSize,
    required String mimeType,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
}

@freezed
class BugReportCategory with _$BugReportCategory {
  const factory BugReportCategory({
    required String value,
    required String label,
    required String description,
    required String icon,
  }) = _BugReportCategory;

  factory BugReportCategory.fromJson(Map<String, dynamic> json) => _$BugReportCategoryFromJson(json);
}

@freezed
class SeverityLevel with _$SeverityLevel {
  const factory SeverityLevel({
    required String value,
    required String label,
    required String description,
    required String color,
  }) = _SeverityLevel;

  factory SeverityLevel.fromJson(Map<String, dynamic> json) => _$SeverityLevelFromJson(json);
}

@freezed
class CreateBugReportRequest with _$CreateBugReportRequest {
  const factory CreateBugReportRequest({
    required String category,
    required String severity,
    required String title,
    required String description,
    String? stepsToReproduce,
    String? expectedBehavior,
    String? actualBehavior,
    required DeviceInfo deviceInfo,
  }) = _CreateBugReportRequest;

  factory CreateBugReportRequest.fromJson(Map<String, dynamic> json) => _$CreateBugReportRequestFromJson(json);
}

@freezed
class BugReportResponse with _$BugReportResponse {
  const factory BugReportResponse({
    required String id,
    required String category,
    required String title,
    required String status,
    required String priority,
    required DateTime createdAt,
  }) = _BugReportResponse;

  factory BugReportResponse.fromJson(Map<String, dynamic> json) => _$BugReportResponseFromJson(json);
}

@freezed
class BugReportCategoriesResponse with _$BugReportCategoriesResponse {
  const factory BugReportCategoriesResponse({
    required List<BugReportCategory> categories,
  }) = _BugReportCategoriesResponse;

  factory BugReportCategoriesResponse.fromJson(Map<String, dynamic> json) => _$BugReportCategoriesResponseFromJson(json);
}

@freezed
class SeverityLevelsResponse with _$SeverityLevelsResponse {
  const factory SeverityLevelsResponse({
    required List<SeverityLevel> severityLevels,
  }) = _SeverityLevelsResponse;

  factory SeverityLevelsResponse.fromJson(Map<String, dynamic> json) => _$SeverityLevelsResponseFromJson(json);
}

@freezed
class BugReportApiResponse with _$BugReportApiResponse {
  const factory BugReportApiResponse({
    required bool success,
    required String message,
    required BugReportResponse data,
  }) = _BugReportApiResponse;

  factory BugReportApiResponse.fromJson(Map<String, dynamic> json) => _$BugReportApiResponseFromJson(json);
}

@freezed
class BugReportCategoriesApiResponse with _$BugReportCategoriesApiResponse {
  const factory BugReportCategoriesApiResponse({
    required bool success,
    required List<BugReportCategory> data,
  }) = _BugReportCategoriesApiResponse;

  factory BugReportCategoriesApiResponse.fromJson(Map<String, dynamic> json) => _$BugReportCategoriesApiResponseFromJson(json);
}

@freezed
class SeverityLevelsApiResponse with _$SeverityLevelsApiResponse {
  const factory SeverityLevelsApiResponse({
    required bool success,
    required List<SeverityLevel> data,
  }) = _SeverityLevelsApiResponse;

  factory SeverityLevelsApiResponse.fromJson(Map<String, dynamic> json) => _$SeverityLevelsApiResponseFromJson(json);
}

@freezed
class BugReportsListResponse with _$BugReportsListResponse {
  const factory BugReportsListResponse({
    required List<BugReport> reports,
    required int total,
    required int page,
    required int pages,
  }) = _BugReportsListResponse;

  factory BugReportsListResponse.fromJson(Map<String, dynamic> json) => _$BugReportsListResponseFromJson(json);
}

@freezed
class BugReportsApiResponse with _$BugReportsApiResponse {
  const factory BugReportsApiResponse({
    required bool success,
    required BugReportsListResponse data,
  }) = _BugReportsApiResponse;

  factory BugReportsApiResponse.fromJson(Map<String, dynamic> json) => _$BugReportsApiResponseFromJson(json);
}

@freezed
class BugReportDetailApiResponse with _$BugReportDetailApiResponse {
  const factory BugReportDetailApiResponse({
    required bool success,
    required BugReport data,
  }) = _BugReportDetailApiResponse;

  factory BugReportDetailApiResponse.fromJson(Map<String, dynamic> json) => _$BugReportDetailApiResponseFromJson(json);
}
