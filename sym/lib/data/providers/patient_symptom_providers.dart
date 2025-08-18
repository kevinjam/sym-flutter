import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_client.dart';
import '../datasources/patient_symptom_api_service.dart';
import '../repositories/patient_symptom_repository_impl.dart';
import '../../domain/repositories/patient_symptom_repository.dart';

// API Service Provider
final patientSymptomApiServiceProvider = Provider<PatientSymptomApiService>((ref) {
  final dio = ref.read(dioProvider);
  return PatientSymptomApiService(dio);
});

// Repository Provider
final patientSymptomRepositoryProvider = Provider<PatientSymptomRepository>((ref) {
  final apiService = ref.read(patientSymptomApiServiceProvider);
  return PatientSymptomRepositoryImpl(apiService);
});
