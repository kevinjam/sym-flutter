import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../core/storage/storage_service.dart';
import '../../domain/entities/medication.dart';
import '../../domain/repositories/medication_repository.dart';
import '../datasources/medication_api_service.dart';
import '../../core/network/dio_client.dart';
import '../../services/notification_service.dart';
import '../../services/sync_service.dart';

class MedicationRepositoryImpl implements MedicationRepository {
  final MedicationApiService _apiService;
  final StorageService _storageService;
  final NotificationService _notificationService;
  final SyncService _syncService;

  MedicationRepositoryImpl(
    this._apiService,
    this._storageService,
    this._notificationService,
    this._syncService,
  );

  @override
  Future<Result<List<Medication>>> getMedications({
    String? status,
    String? priority,
    int? page,
    int? limit,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        // Try to get from local storage first (offline-first)
        final localMedications = await _storageService.getAllMedications();
        
        // Check if we're online and should sync
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            final response = await _apiService.getPatientMedications(
              page: page,
              limit: limit,
            );
            
            if (response.response.statusCode == 200) {
              final medications = response.data.medications;
              
              // Update local storage
              await _storageService.saveMedications(medications);
              
              return medications;
            }
          } catch (e) {
            // Fall back to local data if API fails
          }
        }
        
        // Return local data (filtered if needed)
        return _filterMedications(localMedications, status: status, priority: priority);
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  List<Medication> _filterMedications(
    List<Medication> medications, {
    String? status,
    String? priority,
  }) {
    var filtered = medications;
    
    if (status != null) {
      filtered = filtered.where((m) => m.status == status).toList();
    }
    
    if (priority != null) {
      filtered = filtered.where((m) => m.priority == priority).toList();
    }
    
    return filtered;
  }

  @override
  Future<Result<Medication>> createMedication(CreateMedicationRequest request) async {
    return ResultUtils.tryCatch(
      () async {
        // Generate local ID for immediate use
        final localId = DateTime.now().millisecondsSinceEpoch.toString();
        final localMedication = Medication(
          id: localId,
          name: request.name,
          dosage: request.dosage,
          scheduleTimes: request.scheduleTimes,
          linkedSymptoms: request.linkedSymptoms,
          description: request.description,
          category: request.category,
          dosageForm: request.dosageForm,
          priority: request.priority,
          startDate: request.startDate,
          endDate: request.endDate,
          status: 'active',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        
        // Save locally first
        await _storageService.saveMedication(localMedication);
        
        // Schedule notifications
        await _notificationService.scheduleMedicationReminders(localMedication);
        
        // Queue for sync
        await _syncService.queueOperation('create_medication', request.toJson());
        
        // Try immediate sync if online
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            final response = await _apiService.createPatientMedication(request);
            
            if (response.response.statusCode == 201) {
              final serverMedication = response.data.medication;
              
              // Update local storage with server data
              await _storageService.saveMedication(serverMedication);
              
              // Reschedule notifications with server ID
              await _notificationService.cancelMedicationReminders(localId);
              await _notificationService.scheduleMedicationReminders(serverMedication);
              
              return serverMedication;
            }
          } catch (e) {
            // Continue with local medication if API fails
          }
        }
        
        return localMedication;
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<Medication>> updateMedication(String id, CreateMedicationRequest request) async {
    return ResultUtils.tryCatch(
      () async {
        final existingMedication = await _storageService.getMedication(id);
        if (existingMedication == null) {
          throw Exception('Medication not found');
        }
        
        final updatedMedication = existingMedication.copyWith(
          name: request.name,
          dosage: request.dosage,
          scheduleTimes: request.scheduleTimes,
          linkedSymptoms: request.linkedSymptoms,
          description: request.description,
          category: request.category,
          dosageForm: request.dosageForm,
          priority: request.priority,
          startDate: request.startDate,
          endDate: request.endDate,
          updatedAt: DateTime.now(),
        );
        
        // Save locally first
        await _storageService.saveMedication(updatedMedication);
        
        // Update notifications
        await _notificationService.cancelMedicationReminders(id);
        await _notificationService.scheduleMedicationReminders(updatedMedication);
        
        // Queue for sync
        await _syncService.queueOperation('update_medication', {
          'id': id,
          ...request.toJson(),
        });
        
        // Try immediate sync if online
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            final response = await _apiService.updatePatientMedication(id, request);
            
            if (response.response.statusCode == 200) {
              final serverMedication = response.data.medication;
              await _storageService.saveMedication(serverMedication);
              return serverMedication;
            }
          } catch (e) {
            // Continue with local medication if API fails
          }
        }
        
        return updatedMedication;
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<void>> deleteMedication(String id) async {
    return ResultUtils.tryCatch(
      () async {
        // Cancel notifications first
        await _notificationService.cancelMedicationReminders(id);
        
        // Delete locally
        await _storageService.deleteMedication(id);
        
        // Queue for sync
        await _syncService.queueOperation('delete_medication', {'id': id});
        
        // Try immediate sync if online
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            await _apiService.deletePatientMedication(id);
          } catch (e) {
            // Continue even if API fails
          }
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<void>> markMedicationTaken(String id, DateTime timestamp) async {
    return ResultUtils.tryCatch(
      () async {
        // Queue for sync
        await _syncService.queueOperation('mark_medication_taken', {
          'id': id,
          'timestamp': timestamp.toIso8601String(),
        });
        
        // Try immediate sync if online
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            await _apiService.logMedicationTaken(id, {
              'timestamp': timestamp.toIso8601String(),
              'status': 'taken',
            });
          } catch (e) {
            // Continue even if API fails
          }
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<List<MedicationSchedule>>> getMedicationSchedule(String medicationId) async {
    return ResultUtils.tryCatch(
      () async {
        // Get medication details which include schedule information
        final medication = await _storageService.getMedication(medicationId);
        if (medication != null) {
          return medication.scheduleTimes
              .map((timeStr) => MedicationSchedule(
                    id: '${medicationId}_${timeStr}',
                    medicationId: medicationId,
                    time: timeStr,
                    daysOfWeek: [1, 2, 3, 4, 5, 6, 7], // Default to all days
                    isActive: true,
                  ))
              .toList();
        }
        return <MedicationSchedule>[];
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<void>> updateMedicationSchedule(String medicationId, List<MedicationSchedule> schedules) async {
    return ResultUtils.tryCatch(
      () async {
        final schedulesJson = schedules.map((s) => s.toJson()).toList();
        await _apiService.updateMedicationSchedule(medicationId, {
          'schedules': schedulesJson,
        });
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<List<MedicationLog>>> getMedicationLogs(String medicationId, {
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.getMedicationLogs(
          medicationId,
          fromDate?.toIso8601String(),
          toDate?.toIso8601String(),
        );
        
        if (response.response.statusCode == 200) {
          return response.data.logs;
        } else {
          throw Exception('Failed to get medication logs');
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<List<String>>> getCategories() async {
    return ResultUtils.tryCatch(
      () async {
        // Return default categories since API method doesn't exist
        return [
          'Pain Relief',
          'Antibiotics',
          'Blood Pressure',
          'Diabetes',
          'Heart',
          'Mental Health',
          'Vitamins',
          'Other'
        ];
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<List<String>>> getDosageForms() async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.getDosageForms();
        
        if (response.response.statusCode == 200) {
          return response.data.dosageForms;
        } else {
          throw Exception('Failed to get dosage forms');
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }
}

final medicationRepositoryProvider = Provider<MedicationRepository>((ref) {
  final dioClient = ref.read(dioClientProvider);
  final storageService = ref.read(storageServiceProvider);
  final notificationService = ref.read(notificationServiceProvider);
  final syncService = ref.read(syncServiceProvider);
  final apiService = MedicationApiService(dioClient.dio);
  
  return MedicationRepositoryImpl(apiService, storageService, notificationService, syncService);
});
