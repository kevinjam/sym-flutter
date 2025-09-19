// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_scan_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionScanResultImpl _$$PrescriptionScanResultImplFromJson(
        Map<String, dynamic> json) =>
    _$PrescriptionScanResultImpl(
      medication: json['medication'] as String,
      dosage: json['dosage'] as String,
      instructions: json['instructions'] as String,
      confidence: (json['confidence'] as num?)?.toDouble() ?? 0.0,
      scannedPrescriptionId: json['scannedPrescriptionId'] as String?,
    );

Map<String, dynamic> _$$PrescriptionScanResultImplToJson(
        _$PrescriptionScanResultImpl instance) =>
    <String, dynamic>{
      'medication': instance.medication,
      'dosage': instance.dosage,
      'instructions': instance.instructions,
      'confidence': instance.confidence,
      'scannedPrescriptionId': instance.scannedPrescriptionId,
    };

_$PrescriptionScanResponseImpl _$$PrescriptionScanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PrescriptionScanResponseImpl(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : PrescriptionScanResult.fromJson(
              json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PrescriptionScanResponseImplToJson(
        _$PrescriptionScanResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
    };
