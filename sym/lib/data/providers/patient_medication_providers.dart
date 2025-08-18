import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../datasources/patient_medication_api_service.dart';
import '../repositories/patient_medication_repository_impl.dart';
import '../../core/network/dio_client.dart';


// API Service Provider
final patientMedicationApiServiceProvider = Provider<PatientMedicationApiService>((ref) {
  final dio = ref.read(dioProvider);
  return PatientMedicationApiService(dio);
});

// Repository Provider
final patientMedicationRepositoryProvider = Provider<PatientMedicationRepositoryImpl>((ref) {
  final apiService = ref.read(patientMedicationApiServiceProvider);
  return PatientMedicationRepositoryImpl(apiService);
});
