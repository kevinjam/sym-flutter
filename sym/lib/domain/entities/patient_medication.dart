import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_medication.freezed.dart';
part 'patient_medication.g.dart';

@freezed
class PatientMedication with _$PatientMedication {
  const factory PatientMedication({
    required String id,
    required String patientId,
    required String medicationId,
    String? prescribedBy,
    required MedicationDosage dosage,
    @Default([]) List<MedicationSchedule> schedule,
    @Default('medium') String priority,
    required DateTime startDate,
    DateTime? endDate,
    @Default(true) bool isActive,
    @Default('active') String status,
    String? reasonForStopping,
    String? stoppedBy,
    DateTime? stoppedAt,
    @Default(0) int adherenceScore,
    @Default(0) int totalDoses,
    @Default(0) int takenDoses,
    @Default(0) int missedDoses,
    DateTime? lastTaken,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
    // Populated fields
    Medication? medication,
    User? prescribedByUser,
  }) = _PatientMedication;

  factory PatientMedication.fromJson(Map<String, dynamic> json) => _$PatientMedicationFromJson(json);
}

@freezed
class MedicationDosage with _$MedicationDosage {
  const factory MedicationDosage({
    required double amount,
    required String unit,
    required String frequency,
    String? instructions,
  }) = _MedicationDosage;

  factory MedicationDosage.fromJson(Map<String, dynamic> json) => _$MedicationDosageFromJson(json);
}

@freezed
class MedicationSchedule with _$MedicationSchedule {
  const factory MedicationSchedule({
    required String time,
    required bool isActive,
  }) = _MedicationSchedule;

  factory MedicationSchedule.fromJson(Map<String, dynamic> json) => _$MedicationScheduleFromJson(json);
}

@freezed
class Medication with _$Medication {
  const factory Medication({
    required String id,
    required String name,
    String? genericName,
    required String category,
    String? description,
    required String dosageForm,
    required String strength,
    String? manufacturer,
    bool? isApproved,
    List<SideEffect>? sideEffects,
    List<Interaction>? interactions,
  }) = _Medication;

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
}

@freezed
class SideEffect with _$SideEffect {
  const factory SideEffect({
    required String name,
    required String severity,
    String? description,
  }) = _SideEffect;

  factory SideEffect.fromJson(Map<String, dynamic> json) => _$SideEffectFromJson(json);
}

@freezed
class Interaction with _$Interaction {
  const factory Interaction({
    required String medicationName,
    required String description,
    required String severity,
  }) = _Interaction;

  factory Interaction.fromJson(Map<String, dynamic> json) => _$InteractionFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// Request models
@freezed
class AddPatientMedicationRequest with _$AddPatientMedicationRequest {
  const factory AddPatientMedicationRequest({
    required String medicationId,
    required MedicationDosage dosage,
    required List<MedicationSchedule> schedule,
    String? priority,
    DateTime? startDate,
    DateTime? endDate,
    String? notes,
  }) = _AddPatientMedicationRequest;

  factory AddPatientMedicationRequest.fromJson(Map<String, dynamic> json) => _$AddPatientMedicationRequestFromJson(json);
}

// Response models
@freezed
class PatientMedicationResponse with _$PatientMedicationResponse {
  const factory PatientMedicationResponse({
    required String message,
    required PatientMedication patientMedication,
  }) = _PatientMedicationResponse;

  factory PatientMedicationResponse.fromJson(Map<String, dynamic> json) => _$PatientMedicationResponseFromJson(json);
}

@freezed
class PatientMedicationsResponse with _$PatientMedicationsResponse {
  const factory PatientMedicationsResponse({
    required List<PatientMedication> medications,
  }) = _PatientMedicationsResponse;

  factory PatientMedicationsResponse.fromJson(Map<String, dynamic> json) => _$PatientMedicationsResponseFromJson(json);
}
