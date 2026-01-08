// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_request_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpRequestEntityImpl _$$HttpRequestEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$HttpRequestEntityImpl(
      headers: json['headers'] as Map<String, dynamic>?,
      parameters: json['parameters'] as Map<String, dynamic>?,
      body: json['body'],
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$HttpRequestEntityImplToJson(
        _$HttpRequestEntityImpl instance) =>
    <String, dynamic>{
      'headers': instance.headers,
      'parameters': instance.parameters,
      'body': instance.body,
      'time': instance.time?.toIso8601String(),
      'additionalData': instance.additionalData,
    };
