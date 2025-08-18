import 'dart:convert';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/timezone.dart' as tz;
import '../../domain/entities/notification.dart';
import '../storage/storage_service.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _localNotifications = 
      FlutterLocalNotificationsPlugin();
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  
  static bool _initialized = false;

  // Initialize notification service
  static Future<void> initialize() async {
    if (_initialized) return;

    await _initializeLocalNotifications();
    await _initializeFirebaseMessaging();
    
    _initialized = true;
  }

  // Initialize local notifications
  static Future<void> _initializeLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
    );

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    // Request permissions
    await _requestNotificationPermissions();
  }

  // Initialize Firebase messaging
  static Future<void> _initializeFirebaseMessaging() async {
    // Request permission for iOS
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    // Get FCM token and save it
    final token = await _firebaseMessaging.getToken();
    if (token != null) {
      await _saveFCMToken(token);
    }

    // Listen for token refresh
    _firebaseMessaging.onTokenRefresh.listen(_saveFCMToken);

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Handle background messages
    FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);

    // Handle notification taps when app is in background/terminated
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);

    // Handle notification tap when app is terminated
    final initialMessage = await _firebaseMessaging.getInitialMessage();
    if (initialMessage != null) {
      _handleNotificationTap(initialMessage);
    }
  }

  // Request notification permissions
  static Future<bool> _requestNotificationPermissions() async {
    if (Platform.isIOS) {
      final status = await Permission.notification.request();
      return status.isGranted;
    } else if (Platform.isAndroid) {
      final status = await Permission.notification.request();
      return status.isGranted;
    }
    return true;
  }

  // Public method to request permissions
  static Future<bool> requestPermissions() async {
    return await _requestNotificationPermissions();
  }

  // Public method to get FCM token
  static Future<String?> getFCMToken() async {
    return await _firebaseMessaging.getToken();
  }

  // Public method to setup message handlers
  static void setupMessageHandlers({
    required Function(Map<String, dynamic>) onMessageTap,
    required Function(Map<String, dynamic>) onBackgroundMessage,
  }) {
    // These are already set up in _initializeFirebaseMessaging
    // This method is for compatibility with the app initialization service
  }

  // Save FCM token to backend
  static Future<void> _saveFCMToken(String token) async {
    try {
      final storage = StorageService();
      await storage.saveFCMToken(token);
      
      // TODO: Send token to backend API
      print('FCM Token: $token');
    } catch (e) {
      print('Error saving FCM token: $e');
    }
  }

  // Handle foreground messages
  static Future<void> _handleForegroundMessage(RemoteMessage message) async {
    print('Received foreground message: ${message.messageId}');
    
    // Show local notification when app is in foreground
    await _showLocalNotification(
      id: message.hashCode,
      title: message.notification?.title ?? 'New Notification',
      body: message.notification?.body ?? '',
      payload: jsonEncode(message.data),
    );
  }

  // Handle background messages
  static Future<void> _handleBackgroundMessage(RemoteMessage message) async {
    print('Received background message: ${message.messageId}');
    // Background messages are automatically displayed by the system
  }

  // Handle notification tap
  static void _handleNotificationTap(RemoteMessage message) {
    print('Notification tapped: ${message.messageId}');
    // TODO: Navigate to appropriate screen based on notification type
  }

  // Handle local notification tap
  static void _onNotificationTapped(NotificationResponse response) {
    print('Local notification tapped: ${response.payload}');
    // TODO: Handle local notification tap
  }

  // Show local notification
  static Future<void> _showLocalNotification({
    required int id,
    required String title,
    required String body,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'sym_notifications',
      'SYM Notifications',
      channelDescription: 'Notifications for medication reminders and health updates',
      importance: Importance.high,
      priority: Priority.high,
      showWhen: true,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _localNotifications.show(id, title, body, details, payload: payload);
  }

  // Schedule notification
  static Future<void> scheduleNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledDate,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'sym_notifications',
      'Sym Notifications',
      channelDescription: 'Notifications for Sym app',
      importance: Importance.high,
      priority: Priority.high,
      showWhen: true,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    // Convert DateTime to TZDateTime
    final tz.TZDateTime scheduledTZDate = tz.TZDateTime.from(scheduledDate, tz.local);

    await _localNotifications.zonedSchedule(
      id,
      title,
      body,
      scheduledTZDate,
      details,
      payload: payload,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  // Cancel scheduled notification
  static Future<void> cancelNotification(int id) async {
    await _localNotifications.cancel(id);
  }

  // Cancel all notifications
  static Future<void> cancelAllNotifications() async {
    await _localNotifications.cancelAll();
  }

  // Get pending notifications
  static Future<List<PendingNotificationRequest>> getPendingNotifications() async {
    return await _localNotifications.pendingNotificationRequests();
  }

  // Schedule medication reminders
  static Future<void> scheduleMedicationReminders({
    required String medicationId,
    required String medicationName,
    required List<DateTime> reminderTimes,
  }) async {
    // Cancel existing reminders for this medication
    await cancelMedicationReminders(medicationId);

    // Schedule new reminders
    for (int i = 0; i < reminderTimes.length; i++) {
      final id = _generateNotificationId(medicationId, i);
      await scheduleNotification(
        id: id,
        title: 'Medication Reminder',
        body: 'Time to take your $medicationName',
        scheduledDate: reminderTimes[i],
        payload: jsonEncode({
          'type': 'medication_reminder',
          'medicationId': medicationId,
          'medicationName': medicationName,
        }),
      );
    }
  }

  // Cancel medication reminders
  static Future<void> cancelMedicationReminders(String medicationId) async {
    final pendingNotifications = await getPendingNotifications();
    
    for (final notification in pendingNotifications) {
      if (notification.payload != null) {
        try {
          final data = jsonDecode(notification.payload!);
          if (data['medicationId'] == medicationId) {
            await cancelNotification(notification.id);
          }
        } catch (e) {
          // Ignore parsing errors
        }
      }
    }
  }

  // Generate unique notification ID
  static int _generateNotificationId(String medicationId, int index) {
    return '${medicationId}_$index'.hashCode;
  }
}

final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationService();
});

// Background message handler (must be top-level function)
@pragma('vm:entry-point')
Future<void> _handleBackgroundMessage(RemoteMessage message) async {
  print('Handling background message: ${message.messageId}');
}
