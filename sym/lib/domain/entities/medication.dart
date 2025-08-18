import 'package:freezed_annotation/freezed_annotation.dart';

part 'medication.freezed.dart';
part 'medication.g.dart';

@freezed
class Medication with _$Medication {
  const factory Medication({
    required String id,
    required String name,
    required String dosage,
    required List<String> scheduleTimes, // HH:MM format
    required List<String> linkedSymptoms,
    String? description,
    String? category,
    String? dosageForm,
    String? status, // active, paused, stopped, completed
    String? priority, // low, medium, high, critical
    DateTime? startDate,
    DateTime? endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? lastTaken,
    int? totalDoses,
    int? takenDoses,
  }) = _Medication;

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
}

@freezed
class MedicationSchedule with _$MedicationSchedule {
  const factory MedicationSchedule({
    required String id,
    required String medicationId,
    required String time, // HH:MM format
    required List<int> daysOfWeek, // 1-7, Monday-Sunday
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MedicationSchedule;

  factory MedicationSchedule.fromJson(Map<String, dynamic> json) => _$MedicationScheduleFromJson(json);
}

@freezed
class MedicationLog with _$MedicationLog {
  const factory MedicationLog({
    required String id,
    required String medicationId,
    required DateTime timestamp,
    required String status, // taken, missed, skipped
    String? notes,
    DateTime? createdAt,
  }) = _MedicationLog;

  factory MedicationLog.fromJson(Map<String, dynamic> json) => _$MedicationLogFromJson(json);
}

@freezed
class CreateMedicationRequest with _$CreateMedicationRequest {
  const factory CreateMedicationRequest({
    required String name,
    required String dosage,
    required List<String> scheduleTimes,
    required List<String> linkedSymptoms,
    String? description,
    String? category,
    String? dosageForm,
    String? priority,
    DateTime? startDate,
    DateTime? endDate,
  }) = _CreateMedicationRequest;

  factory CreateMedicationRequest.fromJson(Map<String, dynamic> json) => _$CreateMedicationRequestFromJson(json);
}
