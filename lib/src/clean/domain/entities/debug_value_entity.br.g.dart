// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_value_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DebugValueEntityImpl _$$DebugValueEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DebugValueEntityImpl(
      name: json['name'] as String,
      valueId: json['valueId'] as String,
      currentValue: json['currentValue'],
    );

Map<String, dynamic> _$$DebugValueEntityImplToJson(
        _$DebugValueEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'valueId': instance.valueId,
      'currentValue': instance.currentValue,
    };
