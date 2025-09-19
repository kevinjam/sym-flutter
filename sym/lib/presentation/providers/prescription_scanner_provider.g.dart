// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_scanner_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$prescriptionScannerServiceHash() =>
    r'db54fff0f51b7d6fe901e703b493fc27abb8f57e';

/// See also [prescriptionScannerService].
@ProviderFor(prescriptionScannerService)
final prescriptionScannerServiceProvider =
    AutoDisposeProvider<PrescriptionScannerService>.internal(
  prescriptionScannerService,
  name: r'prescriptionScannerServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$prescriptionScannerServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PrescriptionScannerServiceRef
    = AutoDisposeProviderRef<PrescriptionScannerService>;
String _$prescriptionScannerNotifierHash() =>
    r'71d1d88a7f8058ec580adc0a7721e72f26eccbd0';

/// See also [PrescriptionScannerNotifier].
@ProviderFor(PrescriptionScannerNotifier)
final prescriptionScannerNotifierProvider = AutoDisposeNotifierProvider<
    PrescriptionScannerNotifier, AsyncValue<PrescriptionScanResult?>>.internal(
  PrescriptionScannerNotifier.new,
  name: r'prescriptionScannerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$prescriptionScannerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PrescriptionScannerNotifier
    = AutoDisposeNotifier<AsyncValue<PrescriptionScanResult?>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
