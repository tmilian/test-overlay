// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_interaction_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpInteractionEntityImpl _$$HttpInteractionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$HttpInteractionEntityImpl(
      id: (json['id'] as num).toInt(),
      uri: json['uri'] == null ? null : Uri.parse(json['uri'] as String),
      method: json['method'] as String?,
      request: json['request'] == null
          ? null
          : HttpRequestEntity.fromJson(json['request'] as Map<String, dynamic>),
      response: json['response'] == null
          ? null
          : HttpResponseEntity.fromJson(
              json['response'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : HttpErrorEntity.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HttpInteractionEntityImplToJson(
        _$HttpInteractionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uri': instance.uri?.toString(),
      'method': instance.method,
      'request': instance.request,
      'response': instance.response,
      'error': instance.error,
    };
