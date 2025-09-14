import '../../core/errors/result.dart';
import '../entities/support_message.dart';

abstract class SupportRepository {
  Future<Result<SupportMessageResponse>> createSupportMessage(
    CreateSupportMessageRequest request,
  );
  
  Future<Result<List<SupportCategory>>> getSupportCategories();
  
  Future<Result<List<SupportMessage>>> getUserSupportMessages({
    int? page,
    int? limit,
    String? status,
  });
  
  Future<Result<SupportMessage>> getSupportMessage(String id);
}
