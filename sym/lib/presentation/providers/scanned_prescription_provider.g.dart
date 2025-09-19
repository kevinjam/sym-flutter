// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_prescription_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scannedPrescriptionServiceHash() =>
    r'cb45423563fc029787f7487bd57f30f77e7e78d4';

/// See also [scannedPrescriptionService].
@ProviderFor(scannedPrescriptionService)
final scannedPrescriptionServiceProvider =
    AutoDisposeProvider<ScannedPrescriptionService>.internal(
  scannedPrescriptionService,
  name: r'scannedPrescriptionServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$scannedPrescriptionServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ScannedPrescriptionServiceRef
    = AutoDisposeProviderRef<ScannedPrescriptionService>;
String _$scannedPrescriptionNotifierHash() =>
    r'1ec07f686f6abc26bd715288d37db5769d0449de';

/// See also [ScannedPrescriptionNotifier].
@ProviderFor(ScannedPrescriptionNotifier)
final scannedPrescriptionNotifierProvider = AutoDisposeNotifierProvider<
    ScannedPrescriptionNotifier,
    AsyncValue<List<ScannedPrescription>>>.internal(
  ScannedPrescriptionNotifier.new,
  name: r'scannedPrescriptionNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$scannedPrescriptionNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ScannedPrescriptionNotifier
    = AutoDisposeNotifier<AsyncValue<List<ScannedPrescription>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
