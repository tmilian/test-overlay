import '../../domain/entities/device_info_entity.br.dart';
import '../../domain/entities/media_query_info_entity.br.dart';
import '../../domain/entities/package_info_entity.br.dart';
import '../../domain/entities/platform_info_entity.br.dart';

/// Data source interface for system information
/// No Flutter dependencies for the interface - Pure Dart
/// Implementation may use platform plugins
abstract class SystemInfoDataSource {
  /// Get device information (async because it queries native platform)
  Future<DeviceInfoEntity> getDeviceInfo();

  /// Get package/app information
  Future<PackageInfoEntity> getPackageInfo();

  /// Get platform information
  Future<PlatformInfoEntity> getPlatformInfo();

  /// Get MediaQuery information
  /// Implementation will require BuildContext to access MediaQuery
  Future<MediaQueryInfoEntity> getMediaQueryInfo();
}
