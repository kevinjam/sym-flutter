import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/prescription_scan_result.dart';

part 'prescription_scanner_service.g.dart';

@RestApi()
abstract class PrescriptionScannerService {
  factory PrescriptionScannerService(Dio dio, {String baseUrl}) = _PrescriptionScannerService;

  @POST('/api/prescription/scan')
  @MultiPart()
  Future<PrescriptionScanResponse> scanPrescription(
    @Part() File image,
  );

  @GET('/api/prescription/test')
  Future<PrescriptionScanResponse> testScanner();
}
