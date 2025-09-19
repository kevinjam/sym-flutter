import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription_scan_result.freezed.dart';
part 'prescription_scan_result.g.dart';

@freezed
class PrescriptionScanResult with _$PrescriptionScanResult {
  const factory PrescriptionScanResult({
    required String medication,
    required String dosage,
    required String instructions,
    @Default(0.0) double confidence,
    String? scannedPrescriptionId,
  }) = _PrescriptionScanResult;

  factory PrescriptionScanResult.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionScanResultFromJson(json);
}

@freezed
class PrescriptionScanResponse with _$PrescriptionScanResponse {
  const factory PrescriptionScanResponse({
    required bool success,
    PrescriptionScanResult? data,
    String? error,
    String? message,
  }) = _PrescriptionScanResponse;

  factory PrescriptionScanResponse.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionScanResponseFromJson(json);
}
