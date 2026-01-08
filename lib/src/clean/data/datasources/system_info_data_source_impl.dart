import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../domain/entities/device_info_entity.br.dart';
import '../../domain/entities/media_query_info_entity.br.dart';
import '../../domain/entities/package_info_entity.br.dart';
import '../../domain/entities/platform_info_entity.br.dart';
import 'system_info_data_source.dart';

/// Implementation of SystemInfoDataSource using platform plugins
/// Uses Flutter plugins (device_info_plus, package_info_plus) but implements pure interface
class SystemInfoDataSourceImpl implements SystemInfoDataSource {
  final DeviceInfoPlugin _deviceInfoPlugin;
  BuildContext? _context;

  SystemInfoDataSourceImpl({
    DeviceInfoPlugin? deviceInfoPlugin,
    BuildContext? context,
  })  : _deviceInfoPlugin = deviceInfoPlugin ?? DeviceInfoPlugin(),
        _context = context;

  /// Set BuildContext for MediaQuery access
  void setContext(BuildContext context) {
    _context = context;
  }

  @override
  Future<DeviceInfoEntity> getDeviceInfo() async {
    try {
      if (Platform.isAndroid) {
        final info = await _deviceInfoPlugin.androidInfo;
        return DeviceInfoEntity(
          platform: 'Android',
          properties: {
            'model': info.model,
            'manufacturer': info.manufacturer,
            'osVersion': info.version.release,
            'sdkVersion': info.version.sdkInt.toString(),
            'isPhysicalDevice': info.isPhysicalDevice,
            'device': info.device,
            'display': info.display,
            'hardware': info.hardware,
            'product': info.product,
            'brand': info.brand,
          },
        );
      } else if (Platform.isIOS) {
        final info = await _deviceInfoPlugin.iosInfo;
        return DeviceInfoEntity(
          platform: 'iOS',
          properties: {
            'model': info.model,
            'manufacturer': 'Apple',
            'osVersion': info.systemVersion,
            'sdkVersion': info.systemVersion,
            'isPhysicalDevice': info.isPhysicalDevice,
            'name': info.name,
            'systemName': info.systemName,
            'utsname': info.utsname.machine,
            'identifierForVendor': info.identifierForVendor,
          },
        );
      } else if (Platform.isMacOS) {
        final info = await _deviceInfoPlugin.macOsInfo;
        return DeviceInfoEntity(
          platform: 'macOS',
          properties: {
            'model': info.model,
            'manufacturer': 'Apple',
            'osVersion': info.osRelease,
            'sdkVersion': info.osRelease,
            'isPhysicalDevice': true,
            'computerName': info.computerName,
            'hostName': info.hostName,
            'arch': info.arch,
            'kernelVersion': info.kernelVersion,
          },
        );
      } else if (Platform.isWindows) {
        final info = await _deviceInfoPlugin.windowsInfo;
        return DeviceInfoEntity(
          platform: 'Windows',
          properties: {
            'model': info.computerName,
            'manufacturer': 'Microsoft',
            'osVersion': info.majorVersion.toString(),
            'sdkVersion': '${info.majorVersion}.${info.minorVersion}',
            'isPhysicalDevice': true,
            'buildNumber': info.buildNumber,
            'platformId': info.platformId,
            'productType': info.productType,
            'systemMemoryInMegabytes': info.systemMemoryInMegabytes,
          },
        );
      } else if (Platform.isLinux) {
        final info = await _deviceInfoPlugin.linuxInfo;
        return DeviceInfoEntity(
          platform: 'Linux',
          properties: {
            'model': info.name,
            'manufacturer': 'Linux',
            'osVersion': info.version ?? 'unknown',
            'sdkVersion': info.version ?? 'unknown',
            'isPhysicalDevice': true,
            'id': info.id,
            'versionId': info.versionId,
            'prettyName': info.prettyName,
            'machineId': info.machineId,
          },
        );
      } else {
        // Web or unknown platform
        return DeviceInfoEntity(
          platform: 'Unknown',
          properties: {
            'model': 'Unknown',
            'manufacturer': 'Unknown',
            'osVersion': 'Unknown',
            'sdkVersion': 'Unknown',
            'isPhysicalDevice': false,
          },
        );
      }
    } catch (e) {
      return DeviceInfoEntity(
        platform: Platform.operatingSystem,
        properties: {
          'model': 'Error',
          'manufacturer': 'Error',
          'osVersion': 'Error',
          'sdkVersion': 'Error',
          'isPhysicalDevice': false,
          'error': e.toString(),
        },
      );
    }
  }

  @override
  Future<PackageInfoEntity> getPackageInfo() async {
    try {
      final info = await PackageInfo.fromPlatform();
      return PackageInfoEntity(
        appName: info.appName,
        packageName: info.packageName,
        version: info.version,
        buildNumber: info.buildNumber,
        buildSignature: info.buildSignature,
      );
    } catch (e) {
      return const PackageInfoEntity(
        appName: 'Error',
        packageName: 'Error',
        version: 'Error',
        buildNumber: 'Error',
      );
    }
  }

  @override
  Future<PlatformInfoEntity> getPlatformInfo() async {
    return PlatformInfoEntity(
      operatingSystem: Platform.operatingSystem,
      operatingSystemVersion: Platform.operatingSystemVersion,
      numberOfProcessors: Platform.numberOfProcessors,
      localeName: Platform.localeName,
      hostname: Platform.localHostname,
    );
  }

  @override
  Future<MediaQueryInfoEntity> getMediaQueryInfo() async {
    if (_context == null) {
      throw StateError(
        'BuildContext not set. Call setContext() before accessing MediaQuery info.',
      );
    }

    final mediaQuery = MediaQuery.of(_context!);
    final size = mediaQuery.size;
    final padding = mediaQuery.padding;
    final viewInsets = mediaQuery.viewInsets;
    final viewPadding = mediaQuery.viewPadding;

    return MediaQueryInfoEntity(
      width: size.width,
      height: size.height,
      devicePixelRatio: mediaQuery.devicePixelRatio,
      orientation: mediaQuery.orientation.name,
      textScaleFactor: mediaQuery.textScaleFactor,
      platformBrightness: mediaQuery.platformBrightness.name,
      padding: {
        'top': padding.top,
        'bottom': padding.bottom,
        'left': padding.left,
        'right': padding.right,
      },
      viewInsets: {
        'top': viewInsets.top,
        'bottom': viewInsets.bottom,
        'left': viewInsets.left,
        'right': viewInsets.right,
      },
      viewPadding: {
        'top': viewPadding.top,
        'bottom': viewPadding.bottom,
        'left': viewPadding.left,
        'right': viewPadding.right,
      },
    );
  }
}
