import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../datasources/notification_api_service.dart';
import '../repositories/notification_repository_impl.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../core/network/dio_client.dart';

final notificationApiServiceProvider = Provider<NotificationApiService>((ref) {
  final dio = ref.read(dioProvider);
  return NotificationApiService(dio);
});

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  final apiService = ref.read(notificationApiServiceProvider);
  return NotificationRepositoryImpl(apiService);
});
