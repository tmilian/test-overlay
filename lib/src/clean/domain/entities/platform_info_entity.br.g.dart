// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_info_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlatformInfoEntityImpl _$$PlatformInfoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PlatformInfoEntityImpl(
      operatingSystem: json['operatingSystem'] as String,
      operatingSystemVersion: json['operatingSystemVersion'] as String,
      numberOfProcessors: (json['numberOfProcessors'] as num).toInt(),
      localeName: json['localeName'] as String?,
      hostname: json['hostname'] as String?,
    );

Map<String, dynamic> _$$PlatformInfoEntityImplToJson(
        _$PlatformInfoEntityImpl instance) =>
    <String, dynamic>{
      'operatingSystem': instance.operatingSystem,
      'operatingSystemVersion': instance.operatingSystemVersion,
      'numberOfProcessors': instance.numberOfProcessors,
      'localeName': instance.localeName,
      'hostname': instance.hostname,
    };
