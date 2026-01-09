import '../../domain/entities/device_info_entity.br.dart';
import '../../domain/entities/media_query_info_entity.br.dart';
import '../../domain/entities/package_info_entity.br.dart';
import '../../domain/entities/platform_info_entity.br.dart';

/// UI extensions for DeviceInfoEntity
extension DeviceInfoUiExtensions on DeviceInfoEntity {
  /// Get device model
  String get deviceModel {
    return properties['model']?.toString() ?? 'Unknown';
  }

  /// Get OS version
  String get osVersion {
    return properties['osVersion']?.toString() ?? 'Unknown';
  }

  /// Get manufacturer
  String get manufacturer {
    return properties['manufacturer']?.toString() ?? 'Unknown';
  }
}

/// UI extensions for PackageInfoEntity
extension PackageInfoUiExtensions on PackageInfoEntity {
  /// Get formatted app version
  String get versionFormatted {
    return '$version ($buildNumber)';
  }
}

/// UI extensions for MediaQueryInfoEntity
extension MediaQueryInfoUiExtensions on MediaQueryInfoEntity {
  /// Get screen size formatted
  String get screenSizeFormatted {
    return '${width.toStringAsFixed(0)} x ${height.toStringAsFixed(0)}';
  }

  /// Get device pixel ratio formatted
  String get pixelRatioFormatted {
    return devicePixelRatio.toStringAsFixed(2);
  }
}

/// UI extensions for PlatformInfoEntity
extension PlatformInfoUiExtensions on PlatformInfoEntity {
  /// Get OS name with version
  String get osFullName {
    return '$operatingSystem $operatingSystemVersion';
  }
}
