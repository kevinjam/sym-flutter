// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_prescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScannedPrescriptionImpl _$$ScannedPrescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$ScannedPrescriptionImpl(
      id: json['id'] as String,
      medication: json['medication'] as String,
      dosage: json['dosage'] as String,
      instructions: json['instructions'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      scannedAt: DateTime.parse(json['scannedAt'] as String),
      status: json['status'] as String,
      isConvertedToMedication: json['isConvertedToMedication'] as bool,
      convertedMedicationId: json['convertedMedicationId'] as String?,
      convertedAt: json['convertedAt'] == null
          ? null
          : DateTime.parse(json['convertedAt'] as String),
    );

Map<String, dynamic> _$$ScannedPrescriptionImplToJson(
        _$ScannedPrescriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medication': instance.medication,
      'dosage': instance.dosage,
      'instructions': instance.instructions,
      'confidence': instance.confidence,
      'scannedAt': instance.scannedAt.toIso8601String(),
      'status': instance.status,
      'isConvertedToMedication': instance.isConvertedToMedication,
      'convertedMedicationId': instance.convertedMedicationId,
      'convertedAt': instance.convertedAt?.toIso8601String(),
    };

_$ScannedPrescriptionResponseImpl _$$ScannedPrescriptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ScannedPrescriptionResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ScannedPrescription.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ScannedPrescriptionResponseImplToJson(
        _$ScannedPrescriptionResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
    };

_$ConvertToMedicationRequestImpl _$$ConvertToMedicationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ConvertToMedicationRequestImpl(
      scheduleTimes: (json['scheduleTimes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$ConvertToMedicationRequestImplToJson(
        _$ConvertToMedicationRequestImpl instance) =>
    <String, dynamic>{
      'scheduleTimes': instance.scheduleTimes,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'notes': instance.notes,
    };

_$ConvertToMedicationResponseImpl _$$ConvertToMedicationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConvertToMedicationResponseImpl(
      success: json['success'] as bool,
      medication: json['medication'],
      scannedPrescription: json['scannedPrescription'] == null
          ? null
          : ScannedPrescription.fromJson(
              json['scannedPrescription'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$ConvertToMedicationResponseImplToJson(
        _$ConvertToMedicationResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'medication': instance.medication,
      'scannedPrescription': instance.scannedPrescription,
      'error': instance.error,
    };
