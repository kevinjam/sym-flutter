import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/support_message.dart';

part 'support_api_service.g.dart';

@RestApi()
abstract class SupportApiService {
  factory SupportApiService(Dio dio) = _SupportApiService;

  @POST('/api/support/message')
  Future<HttpResponse<SupportMessageApiResponse>> createSupportMessage(
    @Body() CreateSupportMessageRequest request,
  );

  @GET('/api/support/categories')
  Future<HttpResponse<SupportCategoriesApiResponse>> getSupportCategories();

  @GET('/api/support/messages')
  Future<HttpResponse<SupportMessagesApiResponse>> getUserSupportMessages({
    @Query('page') int? page,
    @Query('limit') int? limit,
    @Query('status') String? status,
  });

  @GET('/api/support/messages/{id}')
  Future<HttpResponse<SupportMessageDetailApiResponse>> getSupportMessage(
    @Path('id') String id,
  );
}
