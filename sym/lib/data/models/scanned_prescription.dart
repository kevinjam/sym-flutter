import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanned_prescription.freezed.dart';
part 'scanned_prescription.g.dart';

@freezed
class ScannedPrescription with _$ScannedPrescription {
  const factory ScannedPrescription({
    required String id,
    required String medication,
    required String dosage,
    required String instructions,
    required double confidence,
    required DateTime scannedAt,
    required String status,
    required bool isConvertedToMedication,
    String? convertedMedicationId,
    DateTime? convertedAt,
  }) = _ScannedPrescription;

  factory ScannedPrescription.fromJson(Map<String, dynamic> json) =>
      _$ScannedPrescriptionFromJson(json);
}

@freezed
class ScannedPrescriptionResponse with _$ScannedPrescriptionResponse {
  const factory ScannedPrescriptionResponse({
    required bool success,
    List<ScannedPrescription>? data,
    String? error,
    String? message,
  }) = _ScannedPrescriptionResponse;

  factory ScannedPrescriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$ScannedPrescriptionResponseFromJson(json);
}

@freezed
class ConvertToMedicationRequest with _$ConvertToMedicationRequest {
  const factory ConvertToMedicationRequest({
    List<String>? scheduleTimes,
    DateTime? startDate,
    DateTime? endDate,
    String? notes,
  }) = _ConvertToMedicationRequest;

  factory ConvertToMedicationRequest.fromJson(Map<String, dynamic> json) =>
      _$ConvertToMedicationRequestFromJson(json);
}

@freezed
class ConvertToMedicationResponse with _$ConvertToMedicationResponse {
  const factory ConvertToMedicationResponse({
    required bool success,
    dynamic medication,
    ScannedPrescription? scannedPrescription,
    String? error,
  }) = _ConvertToMedicationResponse;

  factory ConvertToMedicationResponse.fromJson(Map<String, dynamic> json) =>
      _$ConvertToMedicationResponseFromJson(json);
}
