import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/faq.dart';

part 'faq_api_service.g.dart';

@RestApi()
abstract class FAQApiService {
  factory FAQApiService(Dio dio) = _FAQApiService;

  @GET('/api/faq')
  Future<HttpResponse<FAQApiResponse>> getFAQs({
    @Query('category') String? category,
    @Query('search') String? search,
  });

  @GET('/api/faq/categories')
  Future<HttpResponse<FAQCategoriesApiResponse>> getCategories();
}
