import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'notification_service.dart';
import 'medication_reminder_service.dart';
import '../storage/storage_service.dart';
import '../../presentation/providers/patient_medication_provider.dart';
import '../../presentation/providers/notification_provider.dart';

class AppInitializationService {
  final NotificationService _notificationService;
  final StorageService _storageService;
  final Ref _ref;

  AppInitializationService(this._notificationService, this._storageService, this._ref);

  Future<void> initialize() async {
    try {
      // Initialize storage
      await _storageService.init();
      
      // Initialize notifications
      await _initializeNotifications();
      
      // Load initial data
      await _loadInitialData();
      
      print('✅ App initialization completed successfully');
    } catch (e) {
      print('❌ App initialization failed: $e');
      rethrow;
    }
  }

  Future<void> _initializeNotifications() async {
    try {
      // Initialize notification service
      await NotificationService.initialize();
      
      // Request permissions
      final hasPermission = await NotificationService.requestPermissions();
      if (!hasPermission) {
        print('⚠️ Notification permissions denied');
      }
      
      // Get and save FCM token
      final fcmToken = await NotificationService.getFCMToken();
      if (fcmToken != null) {
        await _storageService.saveFCMToken(fcmToken);
        print('📱 FCM Token saved: ${fcmToken.substring(0, 20)}...');
      }
      
      // Set up message handlers
      NotificationService.setupMessageHandlers(
        onMessageTap: _handleNotificationTap,
        onBackgroundMessage: _handleBackgroundMessage,
      );
      
      print('🔔 Notification service initialized');
    } catch (e) {
      print('❌ Failed to initialize notifications: $e');
    }
  }

  Future<void> _loadInitialData() async {
    try {
      // Load notifications
      await _ref.read(notificationProvider.notifier).loadNotifications();
      
      // Load medications and schedule reminders
      await _ref.read(patientMedicationProvider.notifier).loadPatientMedications();
      final medications = _ref.read(patientMedicationProvider).medications;
      
      // Schedule medication reminders
      await MedicationReminderService.rescheduleAllMedications(medications);
      
      print('📊 Initial data loaded');
    } catch (e) {
      print('❌ Failed to load initial data: $e');
    }
  }

  void _handleNotificationTap(Map<String, dynamic> data) {
    print('🔔 Notification tapped: $data');
    
    final type = data['type'] as String?;
    final notificationId = data['notificationId'] as String?;
    
    // Mark notification as read if we have the ID
    if (notificationId != null) {
      _ref.read(notificationProvider.notifier).markAsRead(notificationId);
    }
    
    // Handle navigation based on type
    switch (type) {
      case 'medication_reminder':
        // Navigate to medications page
        break;
      case 'symptom_alert':
        // Navigate to symptoms page
        break;
      case 'doctor_message':
        // Navigate to messages page
        break;
      default:
        // Navigate to notifications page
        break;
    }
  }

  Future<void> _handleBackgroundMessage(Map<String, dynamic> data) async {
    print('🔔 Background message received: $data');
    
    // Refresh notifications when app comes to foreground
    await _ref.read(notificationProvider.notifier).loadNotifications(refresh: true);
  }

  Future<void> refreshNotificationToken() async {
    try {
      final fcmToken = await NotificationService.getFCMToken();
      if (fcmToken != null) {
        await _storageService.saveFCMToken(fcmToken);
        // TODO: Send token to backend
        print('🔄 FCM Token refreshed');
      }
    } catch (e) {
      print('❌ Failed to refresh FCM token: $e');
    }
  }

  Future<void> rescheduleAllReminders() async {
    try {
      final medications = _ref.read(patientMedicationProvider).medications;
      await MedicationReminderService.rescheduleAllMedications(medications);
      print('🔄 All medication reminders rescheduled');
    } catch (e) {
      print('❌ Failed to reschedule reminders: $e');
    }
  }
}

final appInitializationServiceProvider = Provider<AppInitializationService>((ref) {
  return AppInitializationService(
    ref.read(notificationServiceProvider),
    ref.read(storageServiceProvider),
    ref,
  );
});
