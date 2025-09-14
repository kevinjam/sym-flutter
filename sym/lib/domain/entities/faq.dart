import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq.freezed.dart';
part 'faq.g.dart';

@freezed
class FAQ with _$FAQ {
  const factory FAQ({
    @JsonKey(name: '_id') required String id,
    required String question,
    required String answer,
    required String category,
    @Default(0) int priority,
    @Default(true) bool isActive,
    @Default([]) List<String> tags,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _FAQ;

  factory FAQ.fromJson(Map<String, dynamic> json) => _$FAQFromJson(json);
}

@freezed
class FAQCategory with _$FAQCategory {
  const factory FAQCategory({
    required String name,
    required String icon,
    @Default(0) int count,
  }) = _FAQCategory;

  factory FAQCategory.fromJson(Map<String, dynamic> json) => _$FAQCategoryFromJson(json);
}

@freezed
class FAQResponse with _$FAQResponse {
  const factory FAQResponse({
    required Map<String, List<FAQ>> faqs,
    required int total,
    required List<String> categories,
  }) = _FAQResponse;

  factory FAQResponse.fromJson(Map<String, dynamic> json) => _$FAQResponseFromJson(json);
}

@freezed
class FAQCategoriesResponse with _$FAQCategoriesResponse {
  const factory FAQCategoriesResponse({
    required Map<String, FAQCategory> categories,
  }) = _FAQCategoriesResponse;

  factory FAQCategoriesResponse.fromJson(Map<String, dynamic> json) => _$FAQCategoriesResponseFromJson(json);
}

@freezed
class FAQApiResponse with _$FAQApiResponse {
  const factory FAQApiResponse({
    required bool success,
    required FAQResponse data,
    String? message,
  }) = _FAQApiResponse;

  factory FAQApiResponse.fromJson(Map<String, dynamic> json) => _$FAQApiResponseFromJson(json);
}

@freezed
class FAQCategoriesApiResponse with _$FAQCategoriesApiResponse {
  const factory FAQCategoriesApiResponse({
    required bool success,
    required FAQCategoriesResponse data,
    String? message,
  }) = _FAQCategoriesApiResponse;

  factory FAQCategoriesApiResponse.fromJson(Map<String, dynamic> json) => _$FAQCategoriesApiResponseFromJson(json);
}
