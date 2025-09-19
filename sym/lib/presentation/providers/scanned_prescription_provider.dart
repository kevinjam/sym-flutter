import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/scanned_prescription.dart';
import '../../data/services/scanned_prescription_service.dart';
import '../../core/network/dio_client.dart';

part 'scanned_prescription_provider.g.dart';

@riverpod
ScannedPrescriptionService scannedPrescriptionService(ScannedPrescriptionServiceRef ref) {
  final dioClient = ref.watch(dioClientProvider);
  return ScannedPrescriptionService(dioClient.dio);
}

@riverpod
class ScannedPrescriptionNotifier extends _$ScannedPrescriptionNotifier {
  @override
  AsyncValue<List<ScannedPrescription>> build() {
    return const AsyncValue.data([]);
  }

  Future<void> loadScannedPrescriptions() async {
    state = const AsyncValue.loading();
    
    try {
      final service = ref.read(scannedPrescriptionServiceProvider);
      final response = await service.getScannedPrescriptions();
      
      if (response.success && response.data != null) {
        state = AsyncValue.data(response.data!);
      } else {
        state = AsyncValue.error(
          response.error ?? 'Failed to load scanned prescriptions',
          StackTrace.current,
        );
      }
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<bool> convertToMedication(String scannedPrescriptionId, {
    List<String>? scheduleTimes,
    DateTime? startDate,
    DateTime? endDate,
    String? notes,
  }) async {
    try {
      final service = ref.read(scannedPrescriptionServiceProvider);
      final request = ConvertToMedicationRequest(
        scheduleTimes: scheduleTimes,
        startDate: startDate,
        endDate: endDate,
        notes: notes,
      );
      
      final response = await service.convertToMedication(scannedPrescriptionId, request);
      
      if (response.success) {
        // Reload the list to update the status
        await loadScannedPrescriptions();
        return true;
      }
      return false;
    } catch (error) {
      print('Error converting scanned prescription: $error');
      return false;
    }
  }

  Future<bool> deleteScannedPrescription(String id) async {
    try {
      final service = ref.read(scannedPrescriptionServiceProvider);
      final response = await service.deleteScannedPrescription(id);
      
      if (response.success) {
        // Remove from current state
        final currentList = state.value ?? [];
        final updatedList = currentList.where((item) => item.id != id).toList();
        state = AsyncValue.data(updatedList);
        return true;
      }
      return false;
    } catch (error) {
      print('Error deleting scanned prescription: $error');
      return false;
    }
  }

  void clearScannedPrescriptions() {
    state = const AsyncValue.data([]);
  }
}
