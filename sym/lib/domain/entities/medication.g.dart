// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicationImpl _$$MedicationImplFromJson(Map<String, dynamic> json) =>
    _$MedicationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      dosage: json['dosage'] as String,
      scheduleTimes: (json['scheduleTimes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      linkedSymptoms: (json['linkedSymptoms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      category: json['category'] as String?,
      dosageForm: json['dosageForm'] as String?,
      status: json['status'] as String?,
      priority: json['priority'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      lastTaken: json['lastTaken'] == null
          ? null
          : DateTime.parse(json['lastTaken'] as String),
      totalDoses: (json['totalDoses'] as num?)?.toInt(),
      takenDoses: (json['takenDoses'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MedicationImplToJson(_$MedicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dosage': instance.dosage,
      'scheduleTimes': instance.scheduleTimes,
      'linkedSymptoms': instance.linkedSymptoms,
      'description': instance.description,
      'category': instance.category,
      'dosageForm': instance.dosageForm,
      'status': instance.status,
      'priority': instance.priority,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'lastTaken': instance.lastTaken?.toIso8601String(),
      'totalDoses': instance.totalDoses,
      'takenDoses': instance.takenDoses,
    };

_$MedicationScheduleImpl _$$MedicationScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicationScheduleImpl(
      id: json['id'] as String,
      medicationId: json['medicationId'] as String,
      time: json['time'] as String,
      daysOfWeek: (json['daysOfWeek'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MedicationScheduleImplToJson(
        _$MedicationScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicationId': instance.medicationId,
      'time': instance.time,
      'daysOfWeek': instance.daysOfWeek,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$MedicationLogImpl _$$MedicationLogImplFromJson(Map<String, dynamic> json) =>
    _$MedicationLogImpl(
      id: json['id'] as String,
      medicationId: json['medicationId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      status: json['status'] as String,
      notes: json['notes'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MedicationLogImplToJson(_$MedicationLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicationId': instance.medicationId,
      'timestamp': instance.timestamp.toIso8601String(),
      'status': instance.status,
      'notes': instance.notes,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$CreateMedicationRequestImpl _$$CreateMedicationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateMedicationRequestImpl(
      name: json['name'] as String,
      dosage: json['dosage'] as String,
      scheduleTimes: (json['scheduleTimes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      linkedSymptoms: (json['linkedSymptoms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      category: json['category'] as String?,
      dosageForm: json['dosageForm'] as String?,
      priority: json['priority'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$CreateMedicationRequestImplToJson(
        _$CreateMedicationRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dosage': instance.dosage,
      'scheduleTimes': instance.scheduleTimes,
      'linkedSymptoms': instance.linkedSymptoms,
      'description': instance.description,
      'category': instance.category,
      'dosageForm': instance.dosageForm,
      'priority': instance.priority,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
