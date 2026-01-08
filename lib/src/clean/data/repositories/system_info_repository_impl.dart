import '../../domain/entities/device_info_entity.br.dart';
import '../../domain/entities/media_query_info_entity.br.dart';
import '../../domain/entities/package_info_entity.br.dart';
import '../../domain/entities/platform_info_entity.br.dart';
import '../../domain/repositories/system_info_repository.dart';
import '../datasources/system_info_data_source.dart';

/// Implementation of SystemInfoRepository that delegates to SystemInfoDataSource
/// No Flutter dependencies - Pure Dart
class SystemInfoRepositoryImpl implements SystemInfoRepository {
  final SystemInfoDataSource _dataSource;

  SystemInfoRepositoryImpl(this._dataSource);

  @override
  Future<DeviceInfoEntity> getDeviceInfo() {
    return _dataSource.getDeviceInfo();
  }

  @override
  Future<PackageInfoEntity> getPackageInfo() {
    return _dataSource.getPackageInfo();
  }

  @override
  Future<PlatformInfoEntity> getPlatformInfo() {
    return _dataSource.getPlatformInfo();
  }

  @override
  Future<MediaQueryInfoEntity> getMediaQueryInfo() {
    return _dataSource.getMediaQueryInfo();
  }
}
