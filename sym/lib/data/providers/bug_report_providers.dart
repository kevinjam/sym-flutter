import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_client.dart';
import '../datasources/bug_report_api_service.dart';
import '../../domain/repositories/bug_report_repository.dart';
import '../repositories/bug_report_repository_impl.dart';

final bugReportApiServiceProvider = Provider<BugReportApiService>((ref) {
  final dio = ref.read(dioProvider);
  return BugReportApiService(dio);
});

final bugReportRepositoryProvider = Provider<BugReportRepository>((ref) {
  final apiService = ref.watch(bugReportApiServiceProvider);
  return BugReportRepositoryImpl(apiService);
});
