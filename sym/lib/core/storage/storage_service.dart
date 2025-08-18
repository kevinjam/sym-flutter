import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/app_constants.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/medication.dart';
import '../../domain/entities/symptom.dart';

class StorageService {
  late Box<dynamic> _userBox;
  late Box<dynamic> _medicationBox;
  late Box<dynamic> _symptomBox;
  late Box<dynamic> _symptomLogBox;
  late Box<dynamic> _syncQueueBox;
  late Box<dynamic> _settingsBox;

  Future<void> init() async {
    await Hive.initFlutter();
    
    // Register adapters if needed
    // Hive.registerAdapter(UserAdapter());
    
    // Open boxes
    _userBox = await Hive.openBox(AppConstants.userBoxName);
    _medicationBox = await Hive.openBox(AppConstants.medicationBoxName);
    _symptomBox = await Hive.openBox(AppConstants.symptomBoxName);
    _symptomLogBox = await Hive.openBox(AppConstants.symptomLogBoxName);
    _syncQueueBox = await Hive.openBox(AppConstants.syncQueueBoxName);
    _settingsBox = await Hive.openBox(AppConstants.settingsBoxName);
  }

  // Auth Token Management
  Future<void> saveAuthToken(AuthToken token) async {
    await _userBox.put('auth_token', token.toJson());
  }

  Future<AuthToken?> getAuthToken() async {
    final tokenData = _userBox.get('auth_token');
    if (tokenData != null) {
      try {
        return AuthToken.fromJson(Map<String, dynamic>.from(tokenData));
      } catch (e) {
        print('🗄️ [STORAGE] Error parsing token: $e');
        await _userBox.delete('auth_token');
        return null;
      }
    }
    return null;
  }

  // FCM Token management
  Future<void> saveFCMToken(String token) async {
    await _settingsBox.put('fcm_token', token);
  }

  Future<String?> getFCMToken() async {
    return _settingsBox.get('fcm_token');
  }

  Future<void> clearAuthToken() async {
    await _userBox.delete('auth_token');
  }

  // User Management
  Future<void> saveUser(User user) async {
    await _userBox.put('current_user', user.toJson());
  }

  Future<User?> getCurrentUser() async {
    print('🗄️ [STORAGE] Getting current user from storage');
    final userJson = _userBox.get('current_user');
    print('🗄️ [STORAGE] Raw user data: $userJson');
    print('🗄️ [STORAGE] User data type: ${userJson?.runtimeType}');
    
    if (userJson != null) {
      try {
        if (userJson is Map<String, dynamic>) {
          print('🗄️ [STORAGE] User is Map<String, dynamic>, parsing...');
          final user = User.fromJson(userJson);
          print('🗄️ [STORAGE] User parsed successfully: $user');
          return user;
        } else if (userJson is Map) {
          print('🗄️ [STORAGE] User is Map, converting to Map<String, dynamic>...');
          final user = User.fromJson(Map<String, dynamic>.from(userJson));
          print('🗄️ [STORAGE] User parsed successfully: $user');
          return user;
        } else {
          print('🗄️ [STORAGE] User is not a map (${userJson.runtimeType}), clearing corrupted data');
          // If it's not a map, clear the corrupted data
          await _userBox.delete('current_user');
          return null;
        }
      } catch (e) {
        print('🗄️ [STORAGE] Error parsing user: $e');
        print('🗄️ [STORAGE] Error type: ${e.runtimeType}');
        // If parsing fails, clear the corrupted data
        await _userBox.delete('current_user');
        return null;
      }
    } else {
      print('🗄️ [STORAGE] No user found in storage');
    }
    return null;
  }

  Future<void> clearUser() async {
    await _userBox.delete('current_user');
  }

  // Medication Management
  Future<void> saveMedication(Medication medication) async {
    await _medicationBox.put(medication.id, medication.toJson());
  }

  Future<void> saveMedications(List<Medication> medications) async {
    final Map<String, Map<String, dynamic>> medicationMap = {};
    for (final medication in medications) {
      medicationMap[medication.id] = medication.toJson();
    }
    await _medicationBox.putAll(medicationMap);
  }

  Future<Medication?> getMedication(String id) async {
    final medicationJson = _medicationBox.get(id);
    if (medicationJson != null) {
      return Medication.fromJson(Map<String, dynamic>.from(medicationJson));
    }
    return null;
  }

  Future<List<Medication>> getAllMedications() async {
    final medications = <Medication>[];
    for (final key in _medicationBox.keys) {
      final medicationJson = _medicationBox.get(key);
      if (medicationJson != null) {
        medications.add(Medication.fromJson(Map<String, dynamic>.from(medicationJson)));
      }
    }
    return medications;
  }

  Future<void> deleteMedication(String id) async {
    await _medicationBox.delete(id);
  }

  // Symptom Management
  Future<void> saveSymptom(Symptom symptom) async {
    await _symptomBox.put(symptom.id, symptom.toJson());
  }

  Future<void> saveSymptoms(List<Symptom> symptoms) async {
    final Map<String, Map<String, dynamic>> symptomMap = {};
    for (final symptom in symptoms) {
      symptomMap[symptom.id] = symptom.toJson();
    }
    await _symptomBox.putAll(symptomMap);
  }

  Future<List<Symptom>> getAllSymptoms() async {
    final symptoms = <Symptom>[];
    for (final key in _symptomBox.keys) {
      final symptomJson = _symptomBox.get(key);
      if (symptomJson != null) {
        symptoms.add(Symptom.fromJson(Map<String, dynamic>.from(symptomJson)));
      }
    }
    return symptoms;
  }

  // Symptom Log Management
  Future<void> saveSymptomLog(SymptomLog log) async {
    await _symptomLogBox.put(log.id, log.toJson());
  }

  Future<List<SymptomLog>> getAllSymptomLogs() async {
    final logs = <SymptomLog>[];
    for (final key in _symptomLogBox.keys) {
      final logJson = _symptomLogBox.get(key);
      if (logJson != null) {
        logs.add(SymptomLog.fromJson(Map<String, dynamic>.from(logJson)));
      }
    }
    return logs;
  }

  // Sync Queue Management
  Future<void> addToSyncQueue(Map<String, dynamic> operation) async {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    await _syncQueueBox.put(timestamp, operation);
  }

  Future<List<Map<String, dynamic>>> getSyncQueue() async {
    final operations = <Map<String, dynamic>>[];
    for (final key in _syncQueueBox.keys) {
      final operation = _syncQueueBox.get(key);
      if (operation != null) {
        operations.add(Map<String, dynamic>.from(operation));
      }
    }
    return operations;
  }

  Future<void> clearSyncQueue() async {
    await _syncQueueBox.clear();
  }

  Future<void> removeFromSyncQueue(int timestamp) async {
    await _syncQueueBox.delete(timestamp);
  }

  // Settings Management
  Future<void> saveSetting(String key, dynamic value) async {
    await _settingsBox.put(key, value);
  }

  Future<T?> getSetting<T>(String key) async {
    return _settingsBox.get(key) as T?;
  }

  // Last Sync Timestamp
  Future<void> saveLastSyncTime(DateTime timestamp) async {
    await _settingsBox.put('last_sync_time', timestamp.millisecondsSinceEpoch);
  }

  Future<DateTime?> getLastSyncTime() async {
    final timestamp = _settingsBox.get('last_sync_time');
    if (timestamp != null) {
      return DateTime.fromMillisecondsSinceEpoch(timestamp);
    }
    return null;
  }

  // Clear all data
  Future<void> clearAllData() async {
    await _userBox.clear();
    await _medicationBox.clear();
    await _symptomBox.clear();
    await _symptomLogBox.clear();
    await _syncQueueBox.clear();
    await _settingsBox.clear();
  }

  // Clear corrupted data and reinitialize
  Future<void> clearCorruptedData() async {
    try {
      // Check and clear corrupted auth data
      final tokenJson = _userBox.get('auth_token');
      if (tokenJson != null && tokenJson is! Map) {
        await _userBox.delete('auth_token');
      }
      
      final userJson = _userBox.get('current_user');
      if (userJson != null && userJson is! Map) {
        await _userBox.delete('current_user');
      }
    } catch (e) {
      // If anything goes wrong, clear all user data
      await _userBox.clear();
    }
  }
}

final storageServiceProvider = Provider<StorageService>((ref) {
  return StorageService();
});
