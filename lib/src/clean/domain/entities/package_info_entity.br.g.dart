// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_info_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageInfoEntityImpl _$$PackageInfoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageInfoEntityImpl(
      appName: json['appName'] as String,
      packageName: json['packageName'] as String,
      version: json['version'] as String,
      buildNumber: json['buildNumber'] as String,
      buildSignature: json['buildSignature'] as String?,
      installerStore: json['installerStore'] as String?,
    );

Map<String, dynamic> _$$PackageInfoEntityImplToJson(
        _$PackageInfoEntityImpl instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'packageName': instance.packageName,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'buildSignature': instance.buildSignature,
      'installerStore': instance.installerStore,
    };
