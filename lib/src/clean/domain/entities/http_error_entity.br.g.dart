// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_error_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpErrorEntityImpl _$$HttpErrorEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$HttpErrorEntityImpl(
      error: json['error'],
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$HttpErrorEntityImplToJson(
        _$HttpErrorEntityImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'time': instance.time?.toIso8601String(),
      'additionalData': instance.additionalData,
    };
