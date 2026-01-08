import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info_entity.br.freezed.dart';
part 'device_info_entity.br.g.dart';

/// Domain entity representing device information
/// No Flutter dependencies - Pure Dart
@freezed
class DeviceInfoEntity with _$DeviceInfoEntity {
  const factory DeviceInfoEntity({
    required String platform,
    required Map<String, dynamic> properties,
  }) = _DeviceInfoEntity;

  factory DeviceInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoEntityFromJson(json);
}
