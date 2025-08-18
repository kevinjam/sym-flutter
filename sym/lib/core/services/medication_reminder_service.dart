import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/patient_medication.dart';
import '../../presentation/providers/patient_medication_provider.dart';
import 'notification_service.dart';

class MedicationReminderService {
  static Future<void> scheduleMedicationReminders(PatientMedication medication) async {
    if (!medication.isActive || medication.schedule.isEmpty) {
      return;
    }

    final reminderTimes = <DateTime>[];
    final now = DateTime.now();
    
    // Calculate next 7 days of reminders
    for (int day = 0; day < 7; day++) {
      final targetDate = now.add(Duration(days: day));
      
      for (final scheduleItem in medication.schedule) {
        if (scheduleItem.isActive) {
          final timeParts = scheduleItem.time.split(':');
          final hour = int.parse(timeParts[0]);
          final minute = int.parse(timeParts[1]);
          
          final reminderTime = DateTime(
            targetDate.year,
            targetDate.month,
            targetDate.day,
            hour,
            minute,
          );
          
          // Only schedule future reminders
          if (reminderTime.isAfter(now)) {
            reminderTimes.add(reminderTime);
          }
        }
      }
    }

    // Schedule notifications
    await NotificationService.scheduleMedicationReminders(
      medicationId: medication.id,
      medicationName: medication.medicationId, // This should be medication name
      reminderTimes: reminderTimes,
    );
  }

  static Future<void> cancelMedicationReminders(String medicationId) async {
    await NotificationService.cancelMedicationReminders(medicationId);
  }

  static Future<void> rescheduleAllMedications(List<PatientMedication> medications) async {
    // Cancel all existing medication reminders
    for (final medication in medications) {
      await cancelMedicationReminders(medication.id);
    }

    // Schedule new reminders for active medications
    for (final medication in medications) {
      if (medication.isActive) {
        await scheduleMedicationReminders(medication);
      }
    }
  }

  static Future<void> handleMedicationTaken(String medicationId) async {
    // Mark as taken and potentially reschedule next reminder
    // This could update adherence tracking
    print('Medication taken: $medicationId');
  }

  static Future<void> handleMedicationSkipped(String medicationId) async {
    // Handle skipped medication
    print('Medication skipped: $medicationId');
  }
}

final medicationReminderServiceProvider = Provider<MedicationReminderService>((ref) {
  return MedicationReminderService();
});
