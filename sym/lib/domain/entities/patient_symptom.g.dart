// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_symptom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientSymptomImpl _$$PatientSymptomImplFromJson(Map<String, dynamic> json) =>
    _$PatientSymptomImpl(
      id: json['_id'] as String,
      patientId: json['patientId'] as String,
      patientMedicationId:
          _patientMedicationIdFromJson(json['patientMedicationId']),
      name: json['name'] as String,
      description: json['description'] as String?,
      severity: json['severity'] as String,
      category: json['category'] as String?,
      onsetDate: DateTime.parse(json['onsetDate'] as String),
      duration: json['duration'] as String?,
      isResolved: json['isResolved'] as bool? ?? false,
      resolvedDate: json['resolvedDate'] == null
          ? null
          : DateTime.parse(json['resolvedDate'] as String),
      reportedToDoctor: json['reportedToDoctor'] as bool? ?? false,
      doctorNotes: json['doctorNotes'] as String?,
      doctorId: json['doctorId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PatientSymptomImplToJson(
        _$PatientSymptomImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'patientId': instance.patientId,
      'patientMedicationId': instance.patientMedicationId,
      'name': instance.name,
      'description': instance.description,
      'severity': instance.severity,
      'category': instance.category,
      'onsetDate': instance.onsetDate.toIso8601String(),
      'duration': instance.duration,
      'isResolved': instance.isResolved,
      'resolvedDate': instance.resolvedDate?.toIso8601String(),
      'reportedToDoctor': instance.reportedToDoctor,
      'doctorNotes': instance.doctorNotes,
      'doctorId': instance.doctorId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$ReportSymptomRequestImpl _$$ReportSymptomRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportSymptomRequestImpl(
      patientMedicationId: json['patientMedicationId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      severity: json['severity'] as String,
      category: json['category'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$$ReportSymptomRequestImplToJson(
        _$ReportSymptomRequestImpl instance) =>
    <String, dynamic>{
      'patientMedicationId': instance.patientMedicationId,
      'name': instance.name,
      'description': instance.description,
      'severity': instance.severity,
      'category': instance.category,
      'duration': instance.duration,
    };

_$PatientSymptomResponseImpl _$$PatientSymptomResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientSymptomResponseImpl(
      message: json['message'] as String,
      symptom: PatientSymptom.fromJson(json['symptom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatientSymptomResponseImplToJson(
        _$PatientSymptomResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'symptom': instance.symptom,
    };

_$PatientSymptomsResponseImpl _$$PatientSymptomsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientSymptomsResponseImpl(
      symptoms: (json['symptoms'] as List<dynamic>)
          .map((e) => PatientSymptom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientSymptomsResponseImplToJson(
        _$PatientSymptomsResponseImpl instance) =>
    <String, dynamic>{
      'symptoms': instance.symptoms,
    };
