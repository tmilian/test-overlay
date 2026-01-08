import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_info_entity.br.freezed.dart';
part 'package_info_entity.br.g.dart';

/// Domain entity representing package/app information
/// No Flutter dependencies - Pure Dart
@freezed
class PackageInfoEntity with _$PackageInfoEntity {
  const factory PackageInfoEntity({
    required String appName,
    required String packageName,
    required String version,
    required String buildNumber,
    String? buildSignature,
    String? installerStore,
  }) = _PackageInfoEntity;

  factory PackageInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$PackageInfoEntityFromJson(json);
}
