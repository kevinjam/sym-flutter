import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_symptom.freezed.dart';
part 'patient_symptom.g.dart';

@freezed
class PatientSymptom with _$PatientSymptom {
  const factory PatientSymptom({
    @JsonKey(name: '_id') required String id,
    required String patientId,
    @JsonKey(fromJson: _patientMedicationIdFromJson) String? patientMedicationId,
    required String name,
    String? description,
    required String severity,
    String? category,
    required DateTime onsetDate,
    String? duration,
    @Default(false) bool isResolved,
    DateTime? resolvedDate,
    @Default(false) bool reportedToDoctor,
    String? doctorNotes,
    String? doctorId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PatientSymptom;

  factory PatientSymptom.fromJson(Map<String, dynamic> json) => _$PatientSymptomFromJson(json);
}

// Helper function to handle patientMedicationId parsing
String? _patientMedicationIdFromJson(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is Map<String, dynamic>) {
    // If it's a medication object, extract the _id field
    return value['_id'] as String?;
  }
  return null;
}

// Request models
@freezed
class ReportSymptomRequest with _$ReportSymptomRequest {
  const factory ReportSymptomRequest({
    String? patientMedicationId,
    required String name,
    String? description,
    required String severity,
    String? category,
    String? duration,
  }) = _ReportSymptomRequest;

  factory ReportSymptomRequest.fromJson(Map<String, dynamic> json) => _$ReportSymptomRequestFromJson(json);
}

// Response models
@freezed
class PatientSymptomResponse with _$PatientSymptomResponse {
  const factory PatientSymptomResponse({
    required String message,
    required PatientSymptom symptom,
  }) = _PatientSymptomResponse;

  factory PatientSymptomResponse.fromJson(Map<String, dynamic> json) => _$PatientSymptomResponseFromJson(json);
}

@freezed
class PatientSymptomsResponse with _$PatientSymptomsResponse {
  const factory PatientSymptomsResponse({
    required List<PatientSymptom> symptoms,
  }) = _PatientSymptomsResponse;

  factory PatientSymptomsResponse.fromJson(Map<String, dynamic> json) => _$PatientSymptomsResponseFromJson(json);
}
