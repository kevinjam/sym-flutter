import 'package:freezed_annotation/freezed_annotation.dart';
import 'medication.dart';
import 'symptom.dart';

part 'api_responses.freezed.dart';
part 'api_responses.g.dart';



@freezed
class MedicationResponse with _$MedicationResponse {
  const factory MedicationResponse({
    required Medication medication,
  }) = _MedicationResponse;

  factory MedicationResponse.fromJson(Map<String, dynamic> json) =>
      _$MedicationResponseFromJson(json);
}

@freezed
class MedicationsResponse with _$MedicationsResponse {
  const factory MedicationsResponse({
    required List<Medication> medications,
    required int total,
    required int page,
    required int limit,
    required int totalPages,
  }) = _MedicationsResponse;

  factory MedicationsResponse.fromJson(Map<String, dynamic> json) =>
      _$MedicationsResponseFromJson(json);
}

@freezed
class MedicationLogsResponse with _$MedicationLogsResponse {
  const factory MedicationLogsResponse({
    required List<MedicationLog> logs,
    required int total,
  }) = _MedicationLogsResponse;

  factory MedicationLogsResponse.fromJson(Map<String, dynamic> json) =>
      _$MedicationLogsResponseFromJson(json);
}

@freezed
class DosageFormsResponse with _$DosageFormsResponse {
  const factory DosageFormsResponse({
    required List<String> dosageForms,
  }) = _DosageFormsResponse;

  factory DosageFormsResponse.fromJson(Map<String, dynamic> json) =>
      _$DosageFormsResponseFromJson(json);
}

@freezed
class SuccessResponse with _$SuccessResponse {
  const factory SuccessResponse({
    required String message,
    required bool success,
  }) = _SuccessResponse;

  factory SuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessResponseFromJson(json);
}

@freezed
class SymptomResponse with _$SymptomResponse {
  const factory SymptomResponse({
    required Symptom symptom,
  }) = _SymptomResponse;

  factory SymptomResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomResponseFromJson(json);
}

@freezed
class SymptomsResponse with _$SymptomsResponse {
  const factory SymptomsResponse({
    required List<Symptom> symptoms,
    required int total,
    required int page,
    required int limit,
    required int totalPages,
  }) = _SymptomsResponse;

  factory SymptomsResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomsResponseFromJson(json);
}

@freezed
class SymptomLogsResponse with _$SymptomLogsResponse {
  const factory SymptomLogsResponse({
    required List<SymptomLog> logs,
    required int total,
  }) = _SymptomLogsResponse;

  factory SymptomLogsResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomLogsResponseFromJson(json);
}

@freezed
class SymptomCatalogResponse with _$SymptomCatalogResponse {
  const factory SymptomCatalogResponse({
    required List<String> symptoms,
    required int total,
  }) = _SymptomCatalogResponse;

  factory SymptomCatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomCatalogResponseFromJson(json);
}

@freezed
class SymptomCategoriesResponse with _$SymptomCategoriesResponse {
  const factory SymptomCategoriesResponse({
    required List<String> categories,
  }) = _SymptomCategoriesResponse;

  factory SymptomCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$SymptomCategoriesResponseFromJson(json);
}

@freezed
class CategoriesResponse with _$CategoriesResponse {
  const factory CategoriesResponse({
    required List<String> categories,
  }) = _CategoriesResponse;

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}
