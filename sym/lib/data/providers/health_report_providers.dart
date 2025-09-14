import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_client.dart';
import '../../domain/repositories/health_report_repository.dart';
import '../datasources/health_report_api_service.dart';
import '../repositories/health_report_repository_impl.dart';

// API Service Provider
final healthReportApiServiceProvider = Provider<HealthReportApiService>((ref) {
  final dio = ref.watch(dioProvider);
  return HealthReportApiService(dio);
});

// Repository Provider
final healthReportRepositoryProvider = Provider<HealthReportRepository>((ref) {
  final apiService = ref.watch(healthReportApiServiceProvider);
  return HealthReportRepositoryImpl(apiService);
});
