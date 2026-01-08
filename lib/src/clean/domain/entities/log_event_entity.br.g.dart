// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_event_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogEventEntityImpl _$$LogEventEntityImplFromJson(Map<String, dynamic> json) =>
    _$LogEventEntityImpl(
      level: $enumDecode(_$LogLevelEnumMap, json['level']),
      message: json['message'],
      time: DateTime.parse(json['time'] as String),
      error: json['error'],
    );

Map<String, dynamic> _$$LogEventEntityImplToJson(
        _$LogEventEntityImpl instance) =>
    <String, dynamic>{
      'level': _$LogLevelEnumMap[instance.level]!,
      'message': instance.message,
      'time': instance.time.toIso8601String(),
      'error': instance.error,
    };

const _$LogLevelEnumMap = {
  LogLevel.all: 'all',
  LogLevel.trace: 'trace',
  LogLevel.debug: 'debug',
  LogLevel.info: 'info',
  LogLevel.warning: 'warning',
  LogLevel.error: 'error',
  LogLevel.fatal: 'fatal',
  LogLevel.off: 'off',
};
