import 'package:freezed_annotation/freezed_annotation.dart';

part 'debug_action_entity.br.freezed.dart';
part 'debug_action_entity.br.g.dart';

/// Domain entity representing a debug action
/// No Flutter dependencies - Pure Dart
@freezed
class DebugActionEntity with _$DebugActionEntity {
  const factory DebugActionEntity({
    required String name,
    required String actionId,
  }) = _DebugActionEntity;

  factory DebugActionEntity.fromJson(Map<String, dynamic> json) =>
      _$DebugActionEntityFromJson(json);
}
