import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_query_info_entity.br.freezed.dart';
part 'media_query_info_entity.br.g.dart';

/// Domain entity representing MediaQuery information
/// No Flutter dependencies - Pure Dart
@freezed
class MediaQueryInfoEntity with _$MediaQueryInfoEntity {
  const factory MediaQueryInfoEntity({
    required double width,
    required double height,
    required double devicePixelRatio,
    required String orientation,
    required double textScaleFactor,
    required String platformBrightness,
    Map<String, dynamic>? padding,
    Map<String, dynamic>? viewInsets,
    Map<String, dynamic>? viewPadding,
    Map<String, dynamic>? systemGestureInsets,
  }) = _MediaQueryInfoEntity;

  factory MediaQueryInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$MediaQueryInfoEntityFromJson(json);
}
