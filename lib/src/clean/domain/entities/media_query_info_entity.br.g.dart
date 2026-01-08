// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_query_info_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaQueryInfoEntityImpl _$$MediaQueryInfoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaQueryInfoEntityImpl(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      devicePixelRatio: (json['devicePixelRatio'] as num).toDouble(),
      orientation: json['orientation'] as String,
      textScaleFactor: (json['textScaleFactor'] as num).toDouble(),
      platformBrightness: json['platformBrightness'] as String,
      padding: json['padding'] as Map<String, dynamic>?,
      viewInsets: json['viewInsets'] as Map<String, dynamic>?,
      viewPadding: json['viewPadding'] as Map<String, dynamic>?,
      systemGestureInsets: json['systemGestureInsets'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MediaQueryInfoEntityImplToJson(
        _$MediaQueryInfoEntityImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'devicePixelRatio': instance.devicePixelRatio,
      'orientation': instance.orientation,
      'textScaleFactor': instance.textScaleFactor,
      'platformBrightness': instance.platformBrightness,
      'padding': instance.padding,
      'viewInsets': instance.viewInsets,
      'viewPadding': instance.viewPadding,
      'systemGestureInsets': instance.systemGestureInsets,
    };
