// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientMedicationImpl _$$PatientMedicationImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientMedicationImpl(
      id: json['id'] as String,
      patientId: json['patientId'] as String,
      medicationId: json['medicationId'] as String,
      prescribedBy: json['prescribedBy'] as String,
      dosage: MedicationDosage.fromJson(json['dosage'] as Map<String, dynamic>),
      schedule: (json['schedule'] as List<dynamic>)
          .map((e) => MedicationSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      priority: json['priority'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isActive: json['isActive'] as bool,
      status: json['status'] as String,
      reasonForStopping: json['reasonForStopping'] as String?,
      stoppedBy: json['stoppedBy'] as String?,
      stoppedAt: json['stoppedAt'] == null
          ? null
          : DateTime.parse(json['stoppedAt'] as String),
      adherenceScore: (json['adherenceScore'] as num).toInt(),
      totalDoses: (json['totalDoses'] as num).toInt(),
      takenDoses: (json['takenDoses'] as num).toInt(),
      missedDoses: (json['missedDoses'] as num).toInt(),
      lastTaken: json['lastTaken'] == null
          ? null
          : DateTime.parse(json['lastTaken'] as String),
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      medication: json['medication'] == null
          ? null
          : Medication.fromJson(json['medication'] as Map<String, dynamic>),
      prescribedByUser: json['prescribedByUser'] == null
          ? null
          : User.fromJson(json['prescribedByUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatientMedicationImplToJson(
        _$PatientMedicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'medicationId': instance.medicationId,
      'prescribedBy': instance.prescribedBy,
      'dosage': instance.dosage,
      'schedule': instance.schedule,
      'priority': instance.priority,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isActive': instance.isActive,
      'status': instance.status,
      'reasonForStopping': instance.reasonForStopping,
      'stoppedBy': instance.stoppedBy,
      'stoppedAt': instance.stoppedAt?.toIso8601String(),
      'adherenceScore': instance.adherenceScore,
      'totalDoses': instance.totalDoses,
      'takenDoses': instance.takenDoses,
      'missedDoses': instance.missedDoses,
      'lastTaken': instance.lastTaken?.toIso8601String(),
      'notes': instance.notes,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'medication': instance.medication,
      'prescribedByUser': instance.prescribedByUser,
    };

_$MedicationDosageImpl _$$MedicationDosageImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicationDosageImpl(
      amount: (json['amount'] as num).toDouble(),
      unit: json['unit'] as String,
      frequency: json['frequency'] as String,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$$MedicationDosageImplToJson(
        _$MedicationDosageImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unit': instance.unit,
      'frequency': instance.frequency,
      'instructions': instance.instructions,
    };

_$MedicationScheduleImpl _$$MedicationScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicationScheduleImpl(
      time: json['time'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$MedicationScheduleImplToJson(
        _$MedicationScheduleImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'isActive': instance.isActive,
    };

_$MedicationImpl _$$MedicationImplFromJson(Map<String, dynamic> json) =>
    _$MedicationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      genericName: json['genericName'] as String?,
      category: json['category'] as String,
      description: json['description'] as String?,
      dosageForm: json['dosageForm'] as String,
      strength: json['strength'] as String,
      manufacturer: json['manufacturer'] as String?,
      isApproved: json['isApproved'] as bool?,
      sideEffects: (json['sideEffects'] as List<dynamic>?)
          ?.map((e) => SideEffect.fromJson(e as Map<String, dynamic>))
          .toList(),
      interactions: (json['interactions'] as List<dynamic>?)
          ?.map((e) => Interaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MedicationImplToJson(_$MedicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genericName': instance.genericName,
      'category': instance.category,
      'description': instance.description,
      'dosageForm': instance.dosageForm,
      'strength': instance.strength,
      'manufacturer': instance.manufacturer,
      'isApproved': instance.isApproved,
      'sideEffects': instance.sideEffects,
      'interactions': instance.interactions,
    };

_$SideEffectImpl _$$SideEffectImplFromJson(Map<String, dynamic> json) =>
    _$SideEffectImpl(
      name: json['name'] as String,
      severity: json['severity'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$SideEffectImplToJson(_$SideEffectImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'severity': instance.severity,
      'description': instance.description,
    };

_$InteractionImpl _$$InteractionImplFromJson(Map<String, dynamic> json) =>
    _$InteractionImpl(
      medicationName: json['medicationName'] as String,
      description: json['description'] as String,
      severity: json['severity'] as String,
    );

Map<String, dynamic> _$$InteractionImplToJson(_$InteractionImpl instance) =>
    <String, dynamic>{
      'medicationName': instance.medicationName,
      'description': instance.description,
      'severity': instance.severity,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'role': instance.role,
    };

_$AddPatientMedicationRequestImpl _$$AddPatientMedicationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPatientMedicationRequestImpl(
      medicationId: json['medicationId'] as String,
      dosage: MedicationDosage.fromJson(json['dosage'] as Map<String, dynamic>),
      schedule: (json['schedule'] as List<dynamic>)
          .map((e) => MedicationSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      priority: json['priority'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$AddPatientMedicationRequestImplToJson(
        _$AddPatientMedicationRequestImpl instance) =>
    <String, dynamic>{
      'medicationId': instance.medicationId,
      'dosage': instance.dosage,
      'schedule': instance.schedule,
      'priority': instance.priority,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'notes': instance.notes,
    };

_$PatientMedicationResponseImpl _$$PatientMedicationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientMedicationResponseImpl(
      message: json['message'] as String,
      patientMedication: PatientMedication.fromJson(
          json['patientMedication'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatientMedicationResponseImplToJson(
        _$PatientMedicationResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'patientMedication': instance.patientMedication,
    };

_$PatientMedicationsResponseImpl _$$PatientMedicationsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientMedicationsResponseImpl(
      medications: (json['medications'] as List<dynamic>)
          .map((e) => PatientMedication.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientMedicationsResponseImplToJson(
        _$PatientMedicationsResponseImpl instance) =>
    <String, dynamic>{
      'medications': instance.medications,
    };
