import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/scanned_prescription.dart';

part 'scanned_prescription_service.g.dart';

@RestApi()
abstract class ScannedPrescriptionService {
  factory ScannedPrescriptionService(Dio dio, {String baseUrl}) = _ScannedPrescriptionService;

  @GET('/api/scanned-prescriptions')
  Future<ScannedPrescriptionResponse> getScannedPrescriptions();

  @POST('/api/scanned-prescriptions')
  Future<ScannedPrescriptionResponse> saveScannedPrescription(
    @Body() Map<String, dynamic> prescriptionData,
  );

  @POST('/api/scanned-prescriptions/{id}/convert')
  Future<ConvertToMedicationResponse> convertToMedication(
    @Path('id') String id,
    @Body() ConvertToMedicationRequest request,
  );

  @DELETE('/api/scanned-prescriptions/{id}')
  Future<ScannedPrescriptionResponse> deleteScannedPrescription(
    @Path('id') String id,
  );
}
