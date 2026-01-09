import '../../domain/entities/device_info_entity.br.dart';
import '../../domain/entities/media_query_info_entity.br.dart';
import '../../domain/entities/package_info_entity.br.dart';
import '../../domain/entities/platform_info_entity.br.dart';

/// UI extensions for DeviceInfoEntity
extension DeviceInfoUiExtensions on DeviceInfoEntity {
  /// Get device model
  String get deviceModel {
    return map(
      android: (info) => info.model,
      ios: (info) => info.model,
      macOS: (info) => info.model,
      windows: (info) => info.model,
      linux: (info) => info.model,
      web: (info) => info.model,
      unknown: (_) => 'Unknown',
    );
  }

  /// Get OS version
  String get osVersionFormatted {
    return map(
      android: (info) => info.osVersion,
      ios: (info) => info.osVersion,
      macOS: (info) => info.osVersion,
      windows: (info) => info.osVersion,
      linux: (info) => info.osVersion,
      web: (info) => info.osVersion,
      unknown: (_) => 'Unknown',
    );
  }

  /// Get manufacturer
  String get manufacturerName {
    return map(
      android: (info) => info.manufacturer,
      ios: (info) => info.manufacturer,
      macOS: (info) => info.manufacturer,
      windows: (info) => info.manufacturer,
      linux: (info) => info.manufacturer,
      web: (info) => info.manufacturer,
      unknown: (_) => 'Unknown',
    );
  }

  /// Get platform name
  String get platformName {
    return map(
      android: (_) => 'Android',
      ios: (_) => 'iOS',
      macOS: (_) => 'macOS',
      windows: (_) => 'Windows',
      linux: (_) => 'Linux',
      web: (_) => 'Web',
      unknown: (info) => info.platform,
    );
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
