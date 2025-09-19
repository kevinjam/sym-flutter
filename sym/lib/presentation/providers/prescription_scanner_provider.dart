import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/prescription_scan_result.dart';
import '../../data/services/prescription_scanner_service.dart';
import '../../core/network/dio_client.dart';

part 'prescription_scanner_provider.g.dart';

@riverpod
PrescriptionScannerService prescriptionScannerService(PrescriptionScannerServiceRef ref) {
  final dioClient = ref.watch(dioClientProvider);
  return PrescriptionScannerService(dioClient.dio);
}

@riverpod
class PrescriptionScannerNotifier extends _$PrescriptionScannerNotifier {
  @override
  AsyncValue<PrescriptionScanResult?> build() {
    return const AsyncValue.data(null);
  }

  Future<PrescriptionScanResult?> scanPrescription(File imageFile) async {
    state = const AsyncValue.loading();
    
    try {
      print('🔍 Starting prescription scan...');
      print('📁 Image file: ${imageFile.path}');
      print('📏 File size: ${await imageFile.length()} bytes');
      
      final service = ref.read(prescriptionScannerServiceProvider);
      print('🌐 Service created, making API call...');
      
      final response = await service.scanPrescription(imageFile);
      print('📡 API response received: ${response.success}');
      
      if (response.success && response.data != null) {
        print('✅ Scan successful: ${response.data!.medication}');
        state = AsyncValue.data(response.data);
        return response.data;
      } else {
        print('❌ Scan failed: ${response.error}');
        state = AsyncValue.error(
          response.error ?? 'Failed to scan prescription',
          StackTrace.current,
        );
        return null;
      }
    } catch (error, stackTrace) {
      print('💥 Exception during scan: $error');
      print('📍 Stack trace: $stackTrace');
      state = AsyncValue.error(error, stackTrace);
      return null;
    }
  }

  Future<bool> testScanner() async {
    try {
      print('🧪 Testing scanner connection...');
      final service = ref.read(prescriptionScannerServiceProvider);
      print('🌐 Service created for test');
      final response = await service.testScanner();
      print('📡 Test response: ${response.success}');
      return response.success;
    } catch (error) {
      print('💥 Test connection error: $error');
      return false;
    }
  }

  void clearResult() {
    state = const AsyncValue.data(null);
  }
}
