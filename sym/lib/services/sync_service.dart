import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:workmanager/workmanager.dart';
import '../core/constants/app_constants.dart';
import '../core/storage/storage_service.dart';
import '../core/errors/result.dart';
import '../core/errors/failures.dart';
import '../data/repositories/auth_repository_impl.dart';
import '../data/repositories/medication_repository_impl.dart';
import '../data/repositories/symptom_repository_impl.dart';

class SyncService {
  final StorageService _storageService;
  final Connectivity _connectivity;

  SyncService(this._storageService, this._connectivity);

  Future<Result<void>> initializeBackgroundSync() async {
    return ResultUtils.tryCatch(
      () async {
        await Workmanager().initialize(
          _callbackDispatcher,
          isInDebugMode: false,
        );

        // Register periodic sync task
        await Workmanager().registerPeriodicTask(
          AppConstants.backgroundSyncTaskName,
          AppConstants.backgroundSyncTaskName,
          frequency: AppConstants.syncInterval,
          constraints: Constraints(
            networkType: NetworkType.connected,
            requiresBatteryNotLow: true,
          ),
        );
      },
      onError: (error) => Failure.syncError(error.toString()),
    );
  }

  Future<Result<bool>> isOnline() async {
    return ResultUtils.tryCatch(
      () async {
        final connectivityResult = await _connectivity.checkConnectivity();
        return connectivityResult != ConnectivityResult.none;
      },
      onError: (error) => Failure.networkError(error.toString()),
    );
  }

  Future<Result<void>> syncAll() async {
    return ResultUtils.tryCatch(
      () async {
        final isConnected = await isOnline();
        if (!isConnected.data!) {
          throw Exception('No internet connection');
        }

        // Process sync queue
        await _processSyncQueue();

        // Sync medications
        await _syncMedications();

        // Sync symptoms
        await _syncSymptoms();

        // Update last sync time
        await _storageService.saveLastSyncTime(DateTime.now());
      },
      onError: (error) => Failure.syncError(error.toString()),
    );
  }

  Future<void> _processSyncQueue() async {
    final syncQueue = await _storageService.getSyncQueue();
    
    for (final operation in syncQueue) {
      try {
        await _processOperation(operation);
        // Remove from queue after successful sync
        final timestamp = operation['timestamp'] as int;
        await _storageService.removeFromSyncQueue(timestamp);
      } catch (e) {
        // Keep in queue for retry
        continue;
      }
    }
  }

  Future<void> _processOperation(Map<String, dynamic> operation) async {
    final type = operation['type'] as String;
    final data = operation['data'] as Map<String, dynamic>;

    switch (type) {
      case 'create_medication':
        // Process create medication operation
        break;
      case 'update_medication':
        // Process update medication operation
        break;
      case 'delete_medication':
        // Process delete medication operation
        break;
      case 'log_symptom':
        // Process symptom log operation
        break;
      default:
        throw Exception('Unknown operation type: $type');
    }
  }

  Future<void> _syncMedications() async {
    // Implement medication sync logic
    // This would fetch from API and update local storage
  }

  Future<void> _syncSymptoms() async {
    // Implement symptom sync logic
    // This would fetch from API and update local storage
  }

  Future<Result<void>> queueOperation(String type, Map<String, dynamic> data) async {
    return ResultUtils.tryCatch(
      () async {
        final operation = {
          'type': type,
          'data': data,
          'timestamp': DateTime.now().millisecondsSinceEpoch,
        };
        
        await _storageService.addToSyncQueue(operation);
        
        // Try immediate sync if online
        final online = await isOnline();
        if (online.data == true) {
          await syncAll();
        }
      },
      onError: (error) => Failure.syncError(error.toString()),
    );
  }

  Future<Result<DateTime?>> getLastSyncTime() async {
    return ResultUtils.tryCatch(
      () async {
        return await _storageService.getLastSyncTime();
      },
      onError: (error) => Failure.cacheError(error.toString()),
    );
  }

  Future<Result<void>> cancelBackgroundSync() async {
    return ResultUtils.tryCatch(
      () async {
        await Workmanager().cancelByUniqueName(AppConstants.backgroundSyncTaskName);
      },
      onError: (error) => Failure.syncError(error.toString()),
    );
  }
}

// Background task callback
@pragma('vm:entry-point')
void _callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    try {
      // Initialize services for background execution
      // This would need to be properly set up with dependency injection
      // For now, we'll just return success
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  });
}

final syncServiceProvider = Provider<SyncService>((ref) {
  final storageService = ref.read(storageServiceProvider);
  return SyncService(storageService, Connectivity());
});
