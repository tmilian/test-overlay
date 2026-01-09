import '../../domain/entities/device_info_entity.br.dart';
import '../../domain/entities/package_info_entity.br.dart';
import '../../domain/entities/platform_info_entity.br.dart';

/// Data source interface for system information
/// No Flutter dependencies - Pure Dart
/// Implementation uses platform plugins for device/package/platform info
/// MediaQuery is handled directly in presentation layer (no need for data source)
abstract class SystemInfoDataSource {
  /// Get device information (async because it queries native platform)
  Future<DeviceInfoEntity> getDeviceInfo();

  /// Get package/app information
  Future<PackageInfoEntity> getPackageInfo();

  /// Get platform information
  Future<PlatformInfoEntity> getPlatformInfo();
}
