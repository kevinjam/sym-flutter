import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_client.dart';
import '../datasources/support_api_service.dart';
import '../../domain/repositories/support_repository.dart';
import '../repositories/support_repository_impl.dart';

final supportApiServiceProvider = Provider<SupportApiService>((ref) {
  final dio = ref.read(dioProvider);
  return SupportApiService(dio);
});

final supportRepositoryProvider = Provider<SupportRepository>((ref) {
  final apiService = ref.watch(supportApiServiceProvider);
  return SupportRepositoryImpl(apiService);
});
