// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomImpl _$$SymptomImplFromJson(Map<String, dynamic> json) =>
    _$SymptomImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      linkedMedications: (json['linkedMedications'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      category: json['category'] as String?,
      severity: json['severity'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SymptomImplToJson(_$SymptomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'linkedMedications': instance.linkedMedications,
      'description': instance.description,
      'category': instance.category,
      'severity': instance.severity,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$SymptomLogImpl _$$SymptomLogImplFromJson(Map<String, dynamic> json) =>
    _$SymptomLogImpl(
      id: json['id'] as String,
      symptomId: json['symptomId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      associatedMedications: (json['associatedMedications'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      severity: json['severity'] as String?,
      notes: json['notes'] as String?,
      intensityLevel: (json['intensityLevel'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SymptomLogImplToJson(_$SymptomLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symptomId': instance.symptomId,
      'timestamp': instance.timestamp.toIso8601String(),
      'associatedMedications': instance.associatedMedications,
      'severity': instance.severity,
      'notes': instance.notes,
      'intensityLevel': instance.intensityLevel,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$CreateSymptomLogRequestImpl _$$CreateSymptomLogRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSymptomLogRequestImpl(
      symptomId: json['symptomId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      associatedMedications: (json['associatedMedications'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      severity: json['severity'] as String?,
      notes: json['notes'] as String?,
      intensityLevel: (json['intensityLevel'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateSymptomLogRequestImplToJson(
        _$CreateSymptomLogRequestImpl instance) =>
    <String, dynamic>{
      'symptomId': instance.symptomId,
      'timestamp': instance.timestamp.toIso8601String(),
      'associatedMedications': instance.associatedMedications,
      'severity': instance.severity,
      'notes': instance.notes,
      'intensityLevel': instance.intensityLevel,
    };

_$SymptomSearchResultImpl _$$SymptomSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SymptomSearchResultImpl(
      symptoms: (json['symptoms'] as List<dynamic>)
          .map((e) => Symptom.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$SymptomSearchResultImplToJson(
        _$SymptomSearchResultImpl instance) =>
    <String, dynamic>{
      'symptoms': instance.symptoms,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
    };
