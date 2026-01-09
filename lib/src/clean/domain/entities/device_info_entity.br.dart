import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info_entity.br.freezed.dart';
part 'device_info_entity.br.g.dart';

/// Domain entity representing device information using union types
/// Type-safe approach - each platform has its specific properties
/// No Flutter dependencies - Pure Dart
@freezed
class DeviceInfoEntity with _$DeviceInfoEntity {
  const factory DeviceInfoEntity.android({
    required String model,
    required String manufacturer,
    required String osVersion,
    required int sdkVersion,
    required bool isPhysicalDevice,
    required String device,
    required String display,
    required String hardware,
    required String product,
    required String brand,
  }) = AndroidDeviceInfo;

  const factory DeviceInfoEntity.ios({
    required String model,
    required String manufacturer,
    required String osVersion,
    required bool isPhysicalDevice,
    required String name,
    required String systemName,
    required String utsname,
    String? identifierForVendor,
  }) = IosDeviceInfo;

  const factory DeviceInfoEntity.macOS({
    required String model,
    required String manufacturer,
    required String osVersion,
    required bool isPhysicalDevice,
    required String computerName,
    required String hostName,
    required String arch,
    required String kernelVersion,
  }) = MacOSDeviceInfo;

  const factory DeviceInfoEntity.windows({
    required String model,
    required String manufacturer,
    required String osVersion,
    required bool isPhysicalDevice,
    required int buildNumber,
    required int platformId,
    required int productType,
    required int systemMemoryInMegabytes,
  }) = WindowsDeviceInfo;

  const factory DeviceInfoEntity.linux({
    required String model,
    required String manufacturer,
    required String osVersion,
    required bool isPhysicalDevice,
    required String id,
    String? versionId,
    String? prettyName,
    String? machineId,
  }) = LinuxDeviceInfo;

  const factory DeviceInfoEntity.web({
    required String model,
    required String manufacturer,
    required String osVersion,
    required bool isPhysicalDevice,
    required String browserName,
    String? browserVersion,
  }) = WebDeviceInfo;

  const factory DeviceInfoEntity.unknown({
    required String platform,
    String? errorMessage,
  }) = UnknownDeviceInfo;

  factory DeviceInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoEntityFromJson(json);
}
