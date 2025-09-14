import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_client.dart';
import '../datasources/doctor_api_service.dart';
import '../../domain/repositories/doctor_repository.dart';
import '../repositories/doctor_repository_impl.dart';

final doctorApiServiceProvider = Provider<DoctorApiService>((ref) {
  final dio = ref.read(dioProvider);
  return DoctorApiService(dio);
});

final doctorRepositoryProvider = Provider<DoctorRepository>((ref) {
  final apiService = ref.watch(doctorApiServiceProvider);
  return DoctorRepositoryImpl(apiService);
});
