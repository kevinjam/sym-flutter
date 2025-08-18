import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom.freezed.dart';
part 'symptom.g.dart';

@freezed
class Symptom with _$Symptom {
  const factory Symptom({
    required String id,
    required String name,
    required List<String> linkedMedications,
    String? description,
    String? category,
    String? severity, // mild, moderate, severe
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Symptom;

  factory Symptom.fromJson(Map<String, dynamic> json) => _$SymptomFromJson(json);
}

@freezed
class SymptomLog with _$SymptomLog {
  const factory SymptomLog({
    required String id,
    required String symptomId,
    required DateTime timestamp,
    required List<String> associatedMedications,
    String? severity, // mild, moderate, severe
    String? notes,
    int? intensityLevel, // 1-10 scale
    DateTime? createdAt,
  }) = _SymptomLog;

  factory SymptomLog.fromJson(Map<String, dynamic> json) => _$SymptomLogFromJson(json);
}

@freezed
class CreateSymptomLogRequest with _$CreateSymptomLogRequest {
  const factory CreateSymptomLogRequest({
    required String symptomId,
    required DateTime timestamp,
    required List<String> associatedMedications,
    String? severity,
    String? notes,
    int? intensityLevel,
  }) = _CreateSymptomLogRequest;

  factory CreateSymptomLogRequest.fromJson(Map<String, dynamic> json) => _$CreateSymptomLogRequestFromJson(json);
}

@freezed
class SymptomSearchResult with _$SymptomSearchResult {
  const factory SymptomSearchResult({
    required List<Symptom> symptoms,
    required int total,
    required int page,
    required int limit,
  }) = _SymptomSearchResult;

  factory SymptomSearchResult.fromJson(Map<String, dynamic> json) => _$SymptomSearchResultFromJson(json);
}
