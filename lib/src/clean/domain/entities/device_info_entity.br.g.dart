// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_entity.br.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AndroidDeviceInfoImpl _$$AndroidDeviceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AndroidDeviceInfoImpl(
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      osVersion: json['osVersion'] as String,
      sdkVersion: (json['sdkVersion'] as num).toInt(),
      isPhysicalDevice: json['isPhysicalDevice'] as bool,
      device: json['device'] as String,
      display: json['display'] as String,
      hardware: json['hardware'] as String,
      product: json['product'] as String,
      brand: json['brand'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AndroidDeviceInfoImplToJson(
        _$AndroidDeviceInfoImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'osVersion': instance.osVersion,
      'sdkVersion': instance.sdkVersion,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'device': instance.device,
      'display': instance.display,
      'hardware': instance.hardware,
      'product': instance.product,
      'brand': instance.brand,
      'runtimeType': instance.$type,
    };

_$IosDeviceInfoImpl _$$IosDeviceInfoImplFromJson(Map<String, dynamic> json) =>
    _$IosDeviceInfoImpl(
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      osVersion: json['osVersion'] as String,
      isPhysicalDevice: json['isPhysicalDevice'] as bool,
      name: json['name'] as String,
      systemName: json['systemName'] as String,
      utsname: json['utsname'] as String,
      identifierForVendor: json['identifierForVendor'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IosDeviceInfoImplToJson(_$IosDeviceInfoImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'osVersion': instance.osVersion,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'name': instance.name,
      'systemName': instance.systemName,
      'utsname': instance.utsname,
      'identifierForVendor': instance.identifierForVendor,
      'runtimeType': instance.$type,
    };

_$MacOSDeviceInfoImpl _$$MacOSDeviceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$MacOSDeviceInfoImpl(
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      osVersion: json['osVersion'] as String,
      isPhysicalDevice: json['isPhysicalDevice'] as bool,
      computerName: json['computerName'] as String,
      hostName: json['hostName'] as String,
      arch: json['arch'] as String,
      kernelVersion: json['kernelVersion'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MacOSDeviceInfoImplToJson(
        _$MacOSDeviceInfoImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'osVersion': instance.osVersion,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'computerName': instance.computerName,
      'hostName': instance.hostName,
      'arch': instance.arch,
      'kernelVersion': instance.kernelVersion,
      'runtimeType': instance.$type,
    };

_$WindowsDeviceInfoImpl _$$WindowsDeviceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$WindowsDeviceInfoImpl(
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      osVersion: json['osVersion'] as String,
      isPhysicalDevice: json['isPhysicalDevice'] as bool,
      buildNumber: (json['buildNumber'] as num).toInt(),
      platformId: (json['platformId'] as num).toInt(),
      productType: (json['productType'] as num).toInt(),
      systemMemoryInMegabytes: (json['systemMemoryInMegabytes'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WindowsDeviceInfoImplToJson(
        _$WindowsDeviceInfoImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'osVersion': instance.osVersion,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'buildNumber': instance.buildNumber,
      'platformId': instance.platformId,
      'productType': instance.productType,
      'systemMemoryInMegabytes': instance.systemMemoryInMegabytes,
      'runtimeType': instance.$type,
    };

_$LinuxDeviceInfoImpl _$$LinuxDeviceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$LinuxDeviceInfoImpl(
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      osVersion: json['osVersion'] as String,
      isPhysicalDevice: json['isPhysicalDevice'] as bool,
      id: json['id'] as String,
      versionId: json['versionId'] as String?,
      prettyName: json['prettyName'] as String?,
      machineId: json['machineId'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LinuxDeviceInfoImplToJson(
        _$LinuxDeviceInfoImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'osVersion': instance.osVersion,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'id': instance.id,
      'versionId': instance.versionId,
      'prettyName': instance.prettyName,
      'machineId': instance.machineId,
      'runtimeType': instance.$type,
    };

_$WebDeviceInfoImpl _$$WebDeviceInfoImplFromJson(Map<String, dynamic> json) =>
    _$WebDeviceInfoImpl(
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      osVersion: json['osVersion'] as String,
      isPhysicalDevice: json['isPhysicalDevice'] as bool,
      browserName: json['browserName'] as String,
      browserVersion: json['browserVersion'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WebDeviceInfoImplToJson(_$WebDeviceInfoImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'osVersion': instance.osVersion,
      'isPhysicalDevice': instance.isPhysicalDevice,
      'browserName': instance.browserName,
      'browserVersion': instance.browserVersion,
      'runtimeType': instance.$type,
    };

_$UnknownDeviceInfoImpl _$$UnknownDeviceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$UnknownDeviceInfoImpl(
      platform: json['platform'] as String,
      errorMessage: json['errorMessage'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownDeviceInfoImplToJson(
        _$UnknownDeviceInfoImpl instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'errorMessage': instance.errorMessage,
      'runtimeType': instance.$type,
    };
