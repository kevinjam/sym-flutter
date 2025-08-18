import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../core/storage/storage_service.dart';
import '../../domain/entities/symptom.dart';
import '../../domain/repositories/symptom_repository.dart';
import '../datasources/symptom_api_service.dart';
import '../../core/network/dio_client.dart';
import '../../services/sync_service.dart';

class SymptomRepositoryImpl implements SymptomRepository {
  final SymptomApiService _apiService;
  final StorageService _storageService;
  final SyncService _syncService;

  SymptomRepositoryImpl(
    this._apiService,
    this._storageService,
    this._syncService,
  );

  @override
  Future<Result<List<Symptom>>> getSymptoms({
    String? search,
    String? category,
    int? page,
    int? limit,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        // Try to get from local storage first (offline-first)
        final localSymptoms = await _storageService.getAllSymptoms();
        
        // Check if we're online and should sync
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            final response = await _apiService.getPatientSymptoms(
              page: page,
              limit: limit,
            );
            
            if (response.response.statusCode == 200) {
              final symptoms = response.data.symptoms;
              
              // Update local storage
              await _storageService.saveSymptoms(symptoms);
              
              return symptoms;
            }
          } catch (e) {
            // Fall back to local data if API fails
          }
        }
        
        // Return local data (filtered if needed)
        return _filterSymptoms(localSymptoms, search: search, category: category);
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  List<Symptom> _filterSymptoms(
    List<Symptom> symptoms, {
    String? search,
    String? category,
  }) {
    var filtered = symptoms;
    
    if (search != null && search.isNotEmpty) {
      filtered = filtered.where((s) => 
        s.name.toLowerCase().contains(search.toLowerCase()) ||
        (s.description?.toLowerCase().contains(search.toLowerCase()) ?? false)
      ).toList();
    }
    
    if (category != null) {
      filtered = filtered.where((s) => s.category == category).toList();
    }
    
    return filtered;
  }

  @override
  Future<Result<Symptom>> createSymptom(Map<String, dynamic> request) async {
    return ResultUtils.tryCatch(
      () async {
        // Generate local ID for immediate use
        final localId = DateTime.now().millisecondsSinceEpoch.toString();
        final localSymptom = Symptom(
          id: localId,
          name: request['name'],
          linkedMedications: List<String>.from(request['linkedMedications'] ?? []),
          description: request['description'],
          category: request['category'],
          severity: request['severity'],
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        
        // Save locally first
        await _storageService.saveSymptom(localSymptom);
        
        // Queue for sync
        await _syncService.queueOperation('create_symptom', request);
        
        // Try immediate sync if online
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            // Create proper request object for API
            final apiRequest = CreateSymptomLogRequest(
              symptomId: request['symptomId'] ?? localId,
              timestamp: DateTime.now(),
              associatedMedications: List<String>.from(request['associatedMedications'] ?? []),
              severity: request['severity'],
              notes: request['notes'],
              intensityLevel: request['intensityLevel'],
            );
            
            final response = await _apiService.createPatientSymptom(apiRequest);
            
            if (response.response.statusCode == 201) {
              final serverSymptom = response.data.symptom;
              
              // Update local storage with server data
              await _storageService.saveSymptom(serverSymptom);
              
              return serverSymptom;
            }
          } catch (e) {
            // Continue with local symptom if API fails
          }
        }
        
        return localSymptom;
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<Symptom>> getSymptom(String id) async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.getPatientSymptom(id);
        
        if (response.response.statusCode == 200) {
          final symptom = response.data.symptom;
          await _storageService.saveSymptom(symptom);
          return symptom;
        } else {
          throw Exception('Failed to get symptom');
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<Symptom>> updateSymptom(String id, Map<String, dynamic> request) async {
    return ResultUtils.tryCatch(
      () async {
        // Queue for sync
        await _syncService.queueOperation('update_symptom', {
          'id': id,
          ...request,
        });
        
        // Try immediate sync if online
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            // Convert map to CreateSymptomLogRequest
            final apiRequest = CreateSymptomLogRequest(
              symptomId: id,
              timestamp: DateTime.now(),
              associatedMedications: List<String>.from(request['associatedMedications'] ?? []),
              severity: request['severity'] ?? 'medium',
              notes: request['notes'],
              intensityLevel: request['intensityLevel'] ?? 5,
            );
            final response = await _apiService.updatePatientSymptom(id, apiRequest);
            
            if (response.response.statusCode == 200) {
              final symptom = response.data.symptom;
              await _storageService.saveSymptom(symptom);
              return symptom;
            }
          } catch (e) {
            // Handle error
          }
        }
        
        throw Exception('Failed to update symptom');
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<void>> deleteSymptom(String id) async {
    return ResultUtils.tryCatch(
      () async {
        // Queue for sync
        await _syncService.queueOperation('delete_symptom', {'id': id});
        
        // Try immediate sync if online
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            await _apiService.deletePatientSymptom(id);
          } catch (e) {
            // Continue even if API fails
          }
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<SymptomLog>> logSymptom(CreateSymptomLogRequest request) async {
    return ResultUtils.tryCatch(
      () async {
        // Generate local ID for immediate use
        final localId = DateTime.now().millisecondsSinceEpoch.toString();
        final localLog = SymptomLog(
          id: localId,
          symptomId: request.symptomId,
          timestamp: request.timestamp,
          associatedMedications: request.associatedMedications,
          severity: request.severity,
          notes: request.notes,
          intensityLevel: request.intensityLevel,
          createdAt: DateTime.now(),
        );
        
        // Save locally first
        await _storageService.saveSymptomLog(localLog);
        
        // Queue for sync
        await _syncService.queueOperation('log_symptom', request.toJson());
        
        // Try immediate sync if online
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            final response = await _apiService.logSymptom(request);
            
            if (response.response.statusCode == 201) {
              // The response contains a symptom, not a log
              // We need to create a log from the symptom data
              final serverSymptom = response.data.symptom;
              final serverLog = SymptomLog(
                id: serverSymptom.id,
                symptomId: serverSymptom.id,
                timestamp: DateTime.now(),
                associatedMedications: serverSymptom.linkedMedications,
                severity: 'medium', // Default value
                notes: serverSymptom.description,
                intensityLevel: 5, // Default value
                createdAt: DateTime.now(),
              );
              
              // Update local storage with server data
              await _storageService.saveSymptomLog(serverLog);
              
              return serverLog;
            }
          } catch (e) {
            // Continue with local log if API fails
          }
        }
        
        return localLog;
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<List<SymptomLog>>> getSymptomLogs({
    String? symptomId,
    DateTime? fromDate,
    DateTime? toDate,
    int? page,
    int? limit,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        // Try to get from local storage first
        final localLogs = await _storageService.getAllSymptomLogs();
        
        // Check if we're online and should sync
        final isOnline = await _syncService.isOnline();
        if (isOnline.data == true) {
          try {
            final response = await _apiService.getSymptomLogs(
              fromDate: fromDate?.toIso8601String(),
              toDate: toDate?.toIso8601String(),
              page: page,
              limit: limit,
            );
            
                    if (response.response.statusCode == 200) {
          final logs = response.data.logs;
              
              // Update local storage
              for (final log in logs) {
                await _storageService.saveSymptomLog(log);
              }
              
              return logs;
            }
          } catch (e) {
            // Fall back to local data if API fails
          }
        }
        
        // Return local data (filtered if needed)
        return _filterSymptomLogs(localLogs, 
          symptomId: symptomId, 
          fromDate: fromDate, 
          toDate: toDate
        );
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  List<SymptomLog> _filterSymptomLogs(
    List<SymptomLog> logs, {
    String? symptomId,
    DateTime? fromDate,
    DateTime? toDate,
  }) {
    var filtered = logs;
    
    if (symptomId != null) {
      filtered = filtered.where((log) => log.symptomId == symptomId).toList();
    }
    
    if (fromDate != null) {
      filtered = filtered.where((log) => log.timestamp.isAfter(fromDate)).toList();
    }
    
    if (toDate != null) {
      filtered = filtered.where((log) => log.timestamp.isBefore(toDate)).toList();
    }
    
    return filtered;
  }

  @override
  Future<Result<List<Symptom>>> searchSymptoms(String query, {int? limit}) async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.searchSymptoms(query, limit);
        
        if (response.response.statusCode == 200) {
          return response.data.symptoms;
        } else {
          throw Exception('Failed to search symptoms');
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<List<String>>> getLinkedMedications(String symptomId) async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.getLinkedMedications(symptomId);
        
        if (response.response.statusCode == 200) {
          return response.data;
        } else {
          throw Exception('Failed to get linked medications');
        }
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<void>> linkMedication(String symptomId, String medicationId) async {
    return ResultUtils.tryCatch(
      () async {
        await _apiService.linkMedication(symptomId, {'medicationId': medicationId});
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }

  @override
  Future<Result<void>> unlinkMedication(String symptomId, String medicationId) async {
    return ResultUtils.tryCatch(
      () async {
        await _apiService.unlinkMedication(symptomId, medicationId);
      },
      onError: (error) => Failure.serverError(error.toString()),
    );
  }
}

final symptomRepositoryProvider = Provider<SymptomRepository>((ref) {
  final dioClient = ref.read(dioClientProvider);
  final storageService = ref.read(storageServiceProvider);
  final syncService = ref.read(syncServiceProvider);
  final apiService = SymptomApiService(dioClient.dio);
  
  return SymptomRepositoryImpl(apiService, storageService, syncService);
});
