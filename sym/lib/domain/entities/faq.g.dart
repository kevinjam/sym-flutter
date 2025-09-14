// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FAQImpl _$$FAQImplFromJson(Map<String, dynamic> json) => _$FAQImpl(
      id: json['_id'] as String,
      question: json['question'] as String,
      answer: json['answer'] as String,
      category: json['category'] as String,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      isActive: json['isActive'] as bool? ?? true,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FAQImplToJson(_$FAQImpl instance) => <String, dynamic>{
      '_id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'category': instance.category,
      'priority': instance.priority,
      'isActive': instance.isActive,
      'tags': instance.tags,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$FAQCategoryImpl _$$FAQCategoryImplFromJson(Map<String, dynamic> json) =>
    _$FAQCategoryImpl(
      name: json['name'] as String,
      icon: json['icon'] as String,
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FAQCategoryImplToJson(_$FAQCategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'count': instance.count,
    };

_$FAQResponseImpl _$$FAQResponseImplFromJson(Map<String, dynamic> json) =>
    _$FAQResponseImpl(
      faqs: (json['faqs'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => FAQ.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      total: (json['total'] as num).toInt(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$FAQResponseImplToJson(_$FAQResponseImpl instance) =>
    <String, dynamic>{
      'faqs': instance.faqs,
      'total': instance.total,
      'categories': instance.categories,
    };

_$FAQCategoriesResponseImpl _$$FAQCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FAQCategoriesResponseImpl(
      categories: (json['categories'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, FAQCategory.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$FAQCategoriesResponseImplToJson(
        _$FAQCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$FAQApiResponseImpl _$$FAQApiResponseImplFromJson(Map<String, dynamic> json) =>
    _$FAQApiResponseImpl(
      success: json['success'] as bool,
      data: FAQResponse.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$FAQApiResponseImplToJson(
        _$FAQApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$FAQCategoriesApiResponseImpl _$$FAQCategoriesApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FAQCategoriesApiResponseImpl(
      success: json['success'] as bool,
      data:
          FAQCategoriesResponse.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$FAQCategoriesApiResponseImplToJson(
        _$FAQCategoriesApiResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
