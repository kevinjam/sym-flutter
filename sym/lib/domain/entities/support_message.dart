import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_message.freezed.dart';
part 'support_message.g.dart';

@freezed
class SupportMessage with _$SupportMessage {
  const factory SupportMessage({
    @JsonKey(name: '_id') required String id,
    required String userId,
    required String category,
    required String subject,
    required String message,
    required String status,
    required String priority,
    required String userEmail,
    required String userFullName,
    String? adminResponse,
    DateTime? adminRespondedAt,
    String? adminRespondedBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SupportMessage;

  factory SupportMessage.fromJson(Map<String, dynamic> json) => _$SupportMessageFromJson(json);
}

@freezed
class SupportCategory with _$SupportCategory {
  const factory SupportCategory({
    required String value,
    required String label,
    required String description,
  }) = _SupportCategory;

  factory SupportCategory.fromJson(Map<String, dynamic> json) => _$SupportCategoryFromJson(json);
}

@freezed
class CreateSupportMessageRequest with _$CreateSupportMessageRequest {
  const factory CreateSupportMessageRequest({
    required String category,
    required String subject,
    required String message,
  }) = _CreateSupportMessageRequest;

  factory CreateSupportMessageRequest.fromJson(Map<String, dynamic> json) => _$CreateSupportMessageRequestFromJson(json);
}

@freezed
class SupportMessageResponse with _$SupportMessageResponse {
  const factory SupportMessageResponse({
    required String id,
    required String category,
    required String subject,
    required String status,
    required DateTime createdAt,
  }) = _SupportMessageResponse;

  factory SupportMessageResponse.fromJson(Map<String, dynamic> json) => _$SupportMessageResponseFromJson(json);
}

@freezed
class SupportCategoriesResponse with _$SupportCategoriesResponse {
  const factory SupportCategoriesResponse({
    required List<SupportCategory> categories,
  }) = _SupportCategoriesResponse;

  factory SupportCategoriesResponse.fromJson(Map<String, dynamic> json) => _$SupportCategoriesResponseFromJson(json);
}

@freezed
class SupportMessageApiResponse with _$SupportMessageApiResponse {
  const factory SupportMessageApiResponse({
    required bool success,
    required String message,
    required SupportMessageResponse data,
  }) = _SupportMessageApiResponse;

  factory SupportMessageApiResponse.fromJson(Map<String, dynamic> json) => _$SupportMessageApiResponseFromJson(json);
}

@freezed
class SupportCategoriesApiResponse with _$SupportCategoriesApiResponse {
  const factory SupportCategoriesApiResponse({
    required bool success,
    required List<SupportCategory> data,
  }) = _SupportCategoriesApiResponse;

  factory SupportCategoriesApiResponse.fromJson(Map<String, dynamic> json) => _$SupportCategoriesApiResponseFromJson(json);
}

@freezed
class SupportMessagesListResponse with _$SupportMessagesListResponse {
  const factory SupportMessagesListResponse({
    required List<SupportMessage> messages,
    required int total,
    required int page,
    required int pages,
  }) = _SupportMessagesListResponse;

  factory SupportMessagesListResponse.fromJson(Map<String, dynamic> json) => _$SupportMessagesListResponseFromJson(json);
}

@freezed
class SupportMessagesApiResponse with _$SupportMessagesApiResponse {
  const factory SupportMessagesApiResponse({
    required bool success,
    required SupportMessagesListResponse data,
  }) = _SupportMessagesApiResponse;

  factory SupportMessagesApiResponse.fromJson(Map<String, dynamic> json) => _$SupportMessagesApiResponseFromJson(json);
}

@freezed
class SupportMessageDetailApiResponse with _$SupportMessageDetailApiResponse {
  const factory SupportMessageDetailApiResponse({
    required bool success,
    required SupportMessage data,
  }) = _SupportMessageDetailApiResponse;

  factory SupportMessageDetailApiResponse.fromJson(Map<String, dynamic> json) => _$SupportMessageDetailApiResponseFromJson(json);
}
