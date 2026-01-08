import '../entities/device_info_entity.br.dart';
import '../entities/media_query_info_entity.br.dart';
import '../entities/package_info_entity.br.dart';
import '../entities/platform_info_entity.br.dart';

/// Repository interface for system information
/// No Flutter dependencies - Pure Dart
abstract class SystemInfoRepository {
  /// Get device information (async because it queries native platform)
  Future<DeviceInfoEntity> getDeviceInfo();

  /// Get package/app information
  Future<PackageInfoEntity> getPackageInfo();

  /// Get platform information
  Future<PlatformInfoEntity> getPlatformInfo();

  /// Get MediaQuery information (requires BuildContext in implementation)
  Future<MediaQueryInfoEntity> getMediaQueryInfo();
}
