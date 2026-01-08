// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_response_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpResponseEntityImpl _$$HttpResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$HttpResponseEntityImpl(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      statusMessage: json['statusMessage'] as String?,
      headers: json['headers'] as Map<String, dynamic>?,
      body: json['body'],
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$HttpResponseEntityImplToJson(
        _$HttpResponseEntityImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
      'headers': instance.headers,
      'body': instance.body,
      'time': instance.time?.toIso8601String(),
      'additionalData': instance.additionalData,
    };
