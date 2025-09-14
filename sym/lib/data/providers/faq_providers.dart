import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_client.dart';
import '../datasources/faq_api_service.dart';
import '../../domain/repositories/faq_repository.dart';
import '../repositories/faq_repository_impl.dart';

final faqApiServiceProvider = Provider<FAQApiService>((ref) {
  final dio = ref.read(dioProvider);
  return FAQApiService(dio);
});

final faqRepositoryProvider = Provider<FAQRepository>((ref) {
  final apiService = ref.watch(faqApiServiceProvider);
  return FAQRepositoryImpl(apiService);
});
