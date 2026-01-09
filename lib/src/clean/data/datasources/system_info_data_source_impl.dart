import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../domain/entities/device_info_entity.br.dart';
import '../../domain/entities/package_info_entity.br.dart';
import '../../domain/entities/platform_info_entity.br.dart';
import 'system_info_data_source.dart';

/// Implementation of SystemInfoDataSource using platform plugins
/// No Flutter UI dependencies - only uses platform plugins
/// MediaQuery is handled directly in presentation layer
class SystemInfoDataSourceImpl implements SystemInfoDataSource {
  final DeviceInfoPlugin _deviceInfoPlugin;

  SystemInfoDataSourceImpl({
    DeviceInfoPlugin? deviceInfoPlugin,
  }) : _deviceInfoPlugin = deviceInfoPlugin ?? DeviceInfoPlugin();

  @override
  Future<DeviceInfoEntity> getDeviceInfo() async {
    try {
      if (Platform.isAndroid) {
        final info = await _deviceInfoPlugin.androidInfo;
        return DeviceInfoEntity.android(
          model: info.model,
          manufacturer: info.manufacturer,
          osVersion: info.version.release,
          sdkVersion: info.version.sdkInt,
          isPhysicalDevice: info.isPhysicalDevice,
          device: info.device,
          display: info.display,
          hardware: info.hardware,
          product: info.product,
          brand: info.brand,
        );
      } else if (Platform.isIOS) {
        final info = await _deviceInfoPlugin.iosInfo;
        return DeviceInfoEntity.ios(
          model: info.model,
          manufacturer: 'Apple',
          osVersion: info.systemVersion,
          isPhysicalDevice: info.isPhysicalDevice,
          name: info.name,
          systemName: info.systemName,
          utsname: info.utsname.machine,
          identifierForVendor: info.identifierForVendor,
        );
      } else if (Platform.isMacOS) {
        final info = await _deviceInfoPlugin.macOsInfo;
        return DeviceInfoEntity.macOS(
          model: info.model,
          manufacturer: 'Apple',
          osVersion: info.osRelease,
          isPhysicalDevice: true,
          computerName: info.computerName,
          hostName: info.hostName,
          arch: info.arch,
          kernelVersion: info.kernelVersion,
        );
      } else if (Platform.isWindows) {
        final info = await _deviceInfoPlugin.windowsInfo;
        return DeviceInfoEntity.windows(
          model: info.computerName,
          manufacturer: 'Microsoft',
          osVersion: info.majorVersion.toString(),
          isPhysicalDevice: true,
          buildNumber: info.buildNumber,
          platformId: info.platformId,
          productType: info.productType,
          systemMemoryInMegabytes: info.systemMemoryInMegabytes,
        );
      } else if (Platform.isLinux) {
        final info = await _deviceInfoPlugin.linuxInfo;
        return DeviceInfoEntity.linux(
          model: info.name,
          manufacturer: 'Linux',
          osVersion: info.version ?? 'unknown',
          isPhysicalDevice: true,
          id: info.id,
          versionId: info.versionId,
          prettyName: info.prettyName,
          machineId: info.machineId,
        );
      } else {
        // Web or unknown platform
        return DeviceInfoEntity.unknown(
          platform: Platform.operatingSystem,
        );
      }
    } catch (e) {
      return DeviceInfoEntity.unknown(
        platform: Platform.operatingSystem,
        errorMessage: e.toString(),
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
}
