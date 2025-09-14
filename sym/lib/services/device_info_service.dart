import 'dart:io';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import '../domain/entities/bug_report.dart';

class DeviceInfoService {
  static final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();

  static Future<DeviceInfo> getDeviceInfo() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      final mediaQuery = WidgetsBinding.instance.platformDispatcher.views.first;
      final screenSize = mediaQuery.physicalSize;
      final devicePixelRatio = mediaQuery.devicePixelRatio;
      
      String platform;
      String deviceModel;
      String osVersion;
      String deviceId = 'unknown';

      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfoPlugin.androidInfo;
        platform = 'Android';
        deviceModel = '${androidInfo.brand} ${androidInfo.model}';
        osVersion = 'Android ${androidInfo.version.release} (API ${androidInfo.version.sdkInt})';
        deviceId = androidInfo.id;
      } else if (Platform.isIOS) {
        final iosInfo = await _deviceInfoPlugin.iosInfo;
        platform = 'iOS';
        deviceModel = '${iosInfo.name} ${iosInfo.model}';
        osVersion = 'iOS ${iosInfo.systemVersion}';
        deviceId = iosInfo.identifierForVendor ?? 'unknown';
      } else {
        platform = Platform.operatingSystem;
        deviceModel = 'Unknown Device';
        osVersion = Platform.operatingSystemVersion;
      }

      final screenResolution = '${(screenSize.width / devicePixelRatio).round()}x${(screenSize.height / devicePixelRatio).round()}';

      return DeviceInfo(
        platform: platform,
        deviceModel: deviceModel,
        osVersion: osVersion,
        appVersion: '${packageInfo.version} (${packageInfo.buildNumber})',
        screenResolution: screenResolution,
        deviceId: deviceId,
      );
    } catch (e) {
      // Fallback device info if collection fails
      return DeviceInfo(
        platform: Platform.operatingSystem,
        deviceModel: 'Unknown Device',
        osVersion: Platform.operatingSystemVersion,
        appVersion: 'Unknown',
        screenResolution: 'Unknown',
        deviceId: 'unknown',
      );
    }
  }
}
