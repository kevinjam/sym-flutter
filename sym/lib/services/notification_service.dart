import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/timezone.dart' as tz;
import '../core/constants/app_constants.dart';
import '../domain/entities/medication.dart';
import '../core/errors/result.dart';
import '../core/errors/failures.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();
  
  Future<Result<void>> initialize() async {
    return ResultUtils.tryCatch(
      () async {
        // Android initialization
        const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
        
        // iOS initialization
        const iosSettings = DarwinInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
        );
        
        const initSettings = InitializationSettings(
          android: androidSettings,
          iOS: iosSettings,
        );
        
        await _notifications.initialize(
          initSettings,
          onDidReceiveNotificationResponse: _onNotificationTapped,
        );
        
        // Request permissions
        await _requestPermissions();
        
        // Create notification channel for Android
        await _createNotificationChannel();
      },
      onError: (error) => Failure.notificationError(error.toString()),
    );
  }
  
  Future<void> _requestPermissions() async {
    // Request notification permission
    await Permission.notification.request();
    
    // Request exact alarm permission for Android 12+
    if (await Permission.scheduleExactAlarm.isDenied) {
      await Permission.scheduleExactAlarm.request();
    }
  }
  
  Future<void> _createNotificationChannel() async {
    const androidChannel = AndroidNotificationChannel(
      AppConstants.notificationChannelId,
      AppConstants.notificationChannelName,
      description: AppConstants.notificationChannelDescription,
      importance: Importance.high,
      playSound: true,
      enableVibration: true,
    );
    
    await _notifications
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidChannel);
  }
  
  static void _onNotificationTapped(NotificationResponse response) {
    // Handle notification tap
    final payload = response.payload;
    if (payload != null) {
      // Parse payload and navigate accordingly
      // This could trigger medication taken action or navigate to specific screen
    }
  }
  
  Future<Result<void>> scheduleMedicationReminders(Medication medication) async {
    return ResultUtils.tryCatch(
      () async {
        // Cancel existing notifications for this medication
        await cancelMedicationReminders(medication.id);
        
        // Schedule new notifications for each time
        for (int i = 0; i < medication.scheduleTimes.length; i++) {
          final time = medication.scheduleTimes[i];
          final timeParts = time.split(':');
          final hour = int.parse(timeParts[0]);
          final minute = int.parse(timeParts[1]);
          
          // Generate unique notification ID
          final notificationId = _generateNotificationId(medication.id, i);
          
          await _scheduleRepeatingNotification(
            notificationId,
            'Medication Reminder',
            'Time to take ${medication.name} (${medication.dosage})',
            hour,
            minute,
            medication.toJson(),
          );
        }
      },
      onError: (error) => Failure.notificationError(error.toString()),
    );
  }
  
  Future<void> _scheduleRepeatingNotification(
    int id,
    String title,
    String body,
    int hour,
    int minute,
    Map<String, dynamic> payload,
  ) async {
    await _notifications.zonedSchedule(
      id,
      title,
      body,
      _nextInstanceOfTime(hour, minute),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          AppConstants.notificationChannelId,
          AppConstants.notificationChannelName,
          channelDescription: AppConstants.notificationChannelDescription,
          importance: Importance.high,
          priority: Priority.high,
          ongoing: true, // Makes notification persistent
          autoCancel: false,
          actions: [
            AndroidNotificationAction(
              'mark_taken',
              'Mark Taken',
              showsUserInterface: true,
            ),
            AndroidNotificationAction(
              'snooze',
              'Snooze',
              showsUserInterface: false,
            ),
          ],
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          categoryIdentifier: 'medication_reminder',
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
      payload: payload.toString(),
    );
  }
  
  tz.TZDateTime _nextInstanceOfTime(int hour, int minute) {
    final now = tz.TZDateTime.now(tz.local);
    var scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );
    
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    
    return scheduledDate;
  }
  
  int _generateNotificationId(String medicationId, int scheduleIndex) {
    // Generate a unique ID based on medication ID and schedule index
    return (medicationId.hashCode + scheduleIndex) % 2147483647;
  }
  
  Future<Result<void>> cancelMedicationReminders(String medicationId) async {
    return ResultUtils.tryCatch(
      () async {
        // Get all pending notifications
        final pendingNotifications = await _notifications.pendingNotificationRequests();
        
        // Cancel notifications for this medication
        for (final notification in pendingNotifications) {
          if (notification.payload?.contains(medicationId) == true) {
            await _notifications.cancel(notification.id);
          }
        }
      },
      onError: (error) => Failure.notificationError(error.toString()),
    );
  }
  
  Future<Result<void>> cancelAllNotifications() async {
    return ResultUtils.tryCatch(
      () async {
        await _notifications.cancelAll();
      },
      onError: (error) => Failure.notificationError(error.toString()),
    );
  }
  
  Future<Result<void>> showInstantNotification(
    String title,
    String body, {
    String? payload,
  }) async {
    return ResultUtils.tryCatch(
      () async {
        await _notifications.show(
          DateTime.now().millisecondsSinceEpoch % 2147483647,
          title,
          body,
          const NotificationDetails(
            android: AndroidNotificationDetails(
              AppConstants.notificationChannelId,
              AppConstants.notificationChannelName,
              channelDescription: AppConstants.notificationChannelDescription,
              importance: Importance.high,
              priority: Priority.high,
            ),
            iOS: DarwinNotificationDetails(
              presentAlert: true,
              presentBadge: true,
              presentSound: true,
            ),
          ),
          payload: payload,
        );
      },
      onError: (error) => Failure.notificationError(error.toString()),
    );
  }
  
  Future<Result<List<PendingNotificationRequest>>> getPendingNotifications() async {
    return ResultUtils.tryCatch(
      () async {
        return await _notifications.pendingNotificationRequests();
      },
      onError: (error) => Failure.notificationError(error.toString()),
    );
  }
}

final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationService();
});
