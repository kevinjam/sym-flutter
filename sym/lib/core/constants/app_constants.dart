class AppConstants {
  // API Configuration
  // For iOS Simulator, use your machine's IP address
  // static const String baseUrl = 'http://192.168.1.4:9000'; // Your machine's IP for iOS Simulator
  static const String baseUrl = 'https://sym-backend.onrender.com'; // Local development
  // static const String baseUrl = 'http://192.168.1.6:9000'; // iOS Simulator
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);
  
  // Retry Configuration
  static const int maxRetries = 3;
  static const Duration retryDelay = Duration(seconds: 2);
  
  // Notification Configuration
  static const String notificationChannelId = 'medication_reminders';
  static const String notificationChannelName = 'Medication Reminders';
  static const String notificationChannelDescription = 'Notifications for medication schedules';
  
  // Hive Box Names
  static const String userBoxName = 'user_box';
  static const String medicationBoxName = 'medication_box';
  static const String symptomBoxName = 'symptom_box';
  static const String symptomLogBoxName = 'symptom_log_box';
  static const String syncQueueBoxName = 'sync_queue_box';
  static const String settingsBoxName = 'settings_box';
  
  // Background Sync
  static const String backgroundSyncTaskName = 'background_sync';
  static const Duration syncInterval = Duration(hours: 1);
  
  // Cache Configuration
  static const Duration cacheExpiry = Duration(hours: 24);
  
  // Pagination
  static const int defaultPageSize = 20;
  
  // Validation
  static const int minPasswordLength = 8;
  static const int maxMedicationNameLength = 100;
  static const int maxSymptomNameLength = 100;
}
