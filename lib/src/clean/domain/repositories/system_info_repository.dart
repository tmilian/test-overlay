import '../entities/device_info_entity.br.dart';
import '../entities/package_info_entity.br.dart';
import '../entities/platform_info_entity.br.dart';

/// Repository interface for system information
/// No Flutter dependencies - Pure Dart
/// MediaQuery is handled directly in presentation layer (no need for repository)
abstract class SystemInfoRepository {
  /// Get device information (async because it queries native platform)
  Future<DeviceInfoEntity> getDeviceInfo();

  /// Get package/app information
  Future<PackageInfoEntity> getPackageInfo();

  /// Get platform information
  Future<PlatformInfoEntity> getPlatformInfo();
}
