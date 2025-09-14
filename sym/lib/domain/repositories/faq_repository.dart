import '../../core/errors/result.dart';
import '../entities/faq.dart';

abstract class FAQRepository {
  Future<Result<FAQResponse>> getFAQs({
    String? category,
    String? search,
  });
  
  Future<Result<FAQCategoriesResponse>> getCategories();
}
