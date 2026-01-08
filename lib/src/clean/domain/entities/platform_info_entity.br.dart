import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_info_entity.br.freezed.dart';
part 'platform_info_entity.br.g.dart';

/// Domain entity representing platform information
/// No Flutter dependencies - Pure Dart
@freezed
class PlatformInfoEntity with _$PlatformInfoEntity {
  const factory PlatformInfoEntity({
    required String operatingSystem,
    required String operatingSystemVersion,
    required int numberOfProcessors,
    String? localeName,
    String? hostname,
  }) = _PlatformInfoEntity;

  factory PlatformInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$PlatformInfoEntityFromJson(json);
}
