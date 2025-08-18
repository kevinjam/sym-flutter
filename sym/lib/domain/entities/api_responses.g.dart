// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicationResponseImpl _$$MedicationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicationResponseImpl(
      medication:
          Medication.fromJson(json['medication'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MedicationResponseImplToJson(
        _$MedicationResponseImpl instance) =>
    <String, dynamic>{
      'medication': instance.medication,
    };

_$MedicationsResponseImpl _$$MedicationsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicationsResponseImpl(
      medications: (json['medications'] as List<dynamic>)
          .map((e) => Medication.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$$MedicationsResponseImplToJson(
        _$MedicationsResponseImpl instance) =>
    <String, dynamic>{
      'medications': instance.medications,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };

_$MedicationLogsResponseImpl _$$MedicationLogsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicationLogsResponseImpl(
      logs: (json['logs'] as List<dynamic>)
          .map((e) => MedicationLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$MedicationLogsResponseImplToJson(
        _$MedicationLogsResponseImpl instance) =>
    <String, dynamic>{
      'logs': instance.logs,
      'total': instance.total,
    };

_$DosageFormsResponseImpl _$$DosageFormsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DosageFormsResponseImpl(
      dosageForms: (json['dosageForms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DosageFormsResponseImplToJson(
        _$DosageFormsResponseImpl instance) =>
    <String, dynamic>{
      'dosageForms': instance.dosageForms,
    };

_$SuccessResponseImpl _$$SuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SuccessResponseImpl(
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$SuccessResponseImplToJson(
        _$SuccessResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
    };

_$SymptomResponseImpl _$$SymptomResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SymptomResponseImpl(
      symptom: Symptom.fromJson(json['symptom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SymptomResponseImplToJson(
        _$SymptomResponseImpl instance) =>
    <String, dynamic>{
      'symptom': instance.symptom,
    };

_$SymptomsResponseImpl _$$SymptomsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SymptomsResponseImpl(
      symptoms: (json['symptoms'] as List<dynamic>)
          .map((e) => Symptom.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$$SymptomsResponseImplToJson(
        _$SymptomsResponseImpl instance) =>
    <String, dynamic>{
      'symptoms': instance.symptoms,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };

_$SymptomLogsResponseImpl _$$SymptomLogsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SymptomLogsResponseImpl(
      logs: (json['logs'] as List<dynamic>)
          .map((e) => SymptomLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$SymptomLogsResponseImplToJson(
        _$SymptomLogsResponseImpl instance) =>
    <String, dynamic>{
      'logs': instance.logs,
      'total': instance.total,
    };

_$SymptomCatalogResponseImpl _$$SymptomCatalogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SymptomCatalogResponseImpl(
      symptoms:
          (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$SymptomCatalogResponseImplToJson(
        _$SymptomCatalogResponseImpl instance) =>
    <String, dynamic>{
      'symptoms': instance.symptoms,
      'total': instance.total,
    };

_$SymptomCategoriesResponseImpl _$$SymptomCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SymptomCategoriesResponseImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SymptomCategoriesResponseImplToJson(
        _$SymptomCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$CategoriesResponseImpl _$$CategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesResponseImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CategoriesResponseImplToJson(
        _$CategoriesResponseImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
