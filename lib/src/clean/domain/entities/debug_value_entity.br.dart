import 'package:freezed_annotation/freezed_annotation.dart';

part 'debug_value_entity.br.freezed.dart';
part 'debug_value_entity.br.g.dart';

/// Domain entity representing a debug value
/// No Flutter dependencies - Pure Dart
@freezed
class DebugValueEntity with _$DebugValueEntity {
  const factory DebugValueEntity({
    required String name,
    required String valueId,
    required dynamic currentValue,
  }) = _DebugValueEntity;

  factory DebugValueEntity.fromJson(Map<String, dynamic> json) =>
      _$DebugValueEntityFromJson(json);
}
