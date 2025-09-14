import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_report.freezed.dart';
part 'health_report.g.dart';

@freezed
class HealthMetric with _$HealthMetric {
  const factory HealthMetric({
    required String name,
    required String value,
    required String unit,
    @Default('normal') String status,
    String? referenceRange,
  }) = _HealthMetric;

  factory HealthMetric.fromJson(Map<String, dynamic> json) =>
      _$HealthMetricFromJson(json);
}

@freezed
class TestResult with _$TestResult {
  const factory TestResult({
    required String testName,
    required String result,
    String? unit,
    @Default('normal') String status,
    String? referenceRange,
    String? notes,
  }) = _TestResult;

  factory TestResult.fromJson(Map<String, dynamic> json) =>
      _$TestResultFromJson(json);
}

@freezed
class Attachment with _$Attachment {
  const factory Attachment({
    required String fileName,
    required String fileUrl,
    required String fileType,
    required DateTime uploadedAt,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: '_id') required String id,
    required String firstName,
    required String lastName,
    required String email,
    String? specialty,
    String? hospitalName,
    String? phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class HealthReport with _$HealthReport {
  const factory HealthReport({
    @JsonKey(name: '_id') required String id,
    required User patient,
    User? doctor,
    required String reportType,
    required String title,
    String? description,
    required DateTime reportDate,
    @Default([]) List<HealthMetric> healthMetrics,
    @Default([]) List<TestResult> testResults,
    String? doctorNotes,
    String? recommendations,
    @Default(false) bool followUpRequired,
    DateTime? followUpDate,
    @Default([]) List<Attachment> attachments,
    @Default(true) bool isActive,
    @Default([]) List<String> tags,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: 'formattedDate') String? formattedDate,
    @JsonKey(name: 'ageInDays') int? ageInDays,
  }) = _HealthReport;

  factory HealthReport.fromJson(Map<String, dynamic> json) =>
      _$HealthReportFromJson(json);
}

@freezed
class CreateHealthReportRequest with _$CreateHealthReportRequest {
  const factory CreateHealthReportRequest({
    required String patient,
    String? doctor,
    required String reportType,
    required String title,
    String? description,
    DateTime? reportDate,
    @Default([]) List<HealthMetric> healthMetrics,
    @Default([]) List<TestResult> testResults,
    String? doctorNotes,
    String? recommendations,
    @Default(false) bool followUpRequired,
    DateTime? followUpDate,
    @Default([]) List<String> tags,
  }) = _CreateHealthReportRequest;

  factory CreateHealthReportRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateHealthReportRequestFromJson(json);
}

@freezed
class UpdateHealthReportRequest with _$UpdateHealthReportRequest {
  const factory UpdateHealthReportRequest({
    String? doctor,
    String? reportType,
    String? title,
    String? description,
    DateTime? reportDate,
    List<HealthMetric>? healthMetrics,
    List<TestResult>? testResults,
    String? doctorNotes,
    String? recommendations,
    bool? followUpRequired,
    DateTime? followUpDate,
    List<String>? tags,
  }) = _UpdateHealthReportRequest;

  factory UpdateHealthReportRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateHealthReportRequestFromJson(json);
}

@freezed
class ReportType with _$ReportType {
  const factory ReportType({
    required String value,
    required String label,
  }) = _ReportType;

  factory ReportType.fromJson(Map<String, dynamic> json) =>
      _$ReportTypeFromJson(json);
}

@freezed
class HealthSummary with _$HealthSummary {
  const factory HealthSummary({
    HealthReport? latestReport,
    @Default([]) List<ReportCount> reportCounts,
    @Default([]) List<HealthReport> recentReports,
    @Default([]) List<HealthMetric> healthMetricsSummary,
    DateTime? lastUpdated,
  }) = _HealthSummary;

  factory HealthSummary.fromJson(Map<String, dynamic> json) =>
      _$HealthSummaryFromJson(json);
}

@freezed
class ReportCount with _$ReportCount {
  const factory ReportCount({
    required String reportType,
    required int count,
  }) = _ReportCount;

  factory ReportCount.fromJson(Map<String, dynamic> json) =>
      _$ReportCountFromJson(json);
}

// API Response Models
@freezed
class HealthReportApiResponse with _$HealthReportApiResponse {
  const factory HealthReportApiResponse({
    required bool success,
    required HealthReport data,
  }) = _HealthReportApiResponse;

  factory HealthReportApiResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthReportApiResponseFromJson(json);
}

@freezed
class HealthReportsListResponse with _$HealthReportsListResponse {
  const factory HealthReportsListResponse({
    required List<HealthReport> reports,
    required PaginationInfo pagination,
  }) = _HealthReportsListResponse;

  factory HealthReportsListResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthReportsListResponseFromJson(json);
}

@freezed
class HealthReportsApiResponse with _$HealthReportsApiResponse {
  const factory HealthReportsApiResponse({
    required bool success,
    required HealthReportsListResponse data,
  }) = _HealthReportsApiResponse;

  factory HealthReportsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthReportsApiResponseFromJson(json);
}

@freezed
class HealthSummaryApiResponse with _$HealthSummaryApiResponse {
  const factory HealthSummaryApiResponse({
    required bool success,
    required HealthSummary data,
  }) = _HealthSummaryApiResponse;

  factory HealthSummaryApiResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthSummaryApiResponseFromJson(json);
}

@freezed
class ReportTypesApiResponse with _$ReportTypesApiResponse {
  const factory ReportTypesApiResponse({
    required bool success,
    required List<ReportType> data,
  }) = _ReportTypesApiResponse;

  factory ReportTypesApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportTypesApiResponseFromJson(json);
}

@freezed
class PaginationInfo with _$PaginationInfo {
  const factory PaginationInfo({
    required int currentPage,
    required int totalPages,
    required int totalReports,
    required bool hasNext,
    required bool hasPrev,
  }) = _PaginationInfo;

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);
}

@freezed
class SuccessResponse with _$SuccessResponse {
  const factory SuccessResponse({
    required bool success,
    required String message,
  }) = _SuccessResponse;

  factory SuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessResponseFromJson(json);
}
