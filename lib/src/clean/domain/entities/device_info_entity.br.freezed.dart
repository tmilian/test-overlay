// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceInfoEntity _$DeviceInfoEntityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'android':
      return AndroidDeviceInfo.fromJson(json);
    case 'ios':
      return IosDeviceInfo.fromJson(json);
    case 'macOS':
      return MacOSDeviceInfo.fromJson(json);
    case 'windows':
      return WindowsDeviceInfo.fromJson(json);
    case 'linux':
      return LinuxDeviceInfo.fromJson(json);
    case 'web':
      return WebDeviceInfo.fromJson(json);
    case 'unknown':
      return UnknownDeviceInfo.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DeviceInfoEntity',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DeviceInfoEntity {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)
        android,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)
        ios,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)
        macOS,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)
        windows,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)
        linux,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String browserName,
            String? browserVersion)
        web,
    required TResult Function(String platform, String? errorMessage) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult? Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult? Function(String platform, String? errorMessage)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult Function(String platform, String? errorMessage)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IosDeviceInfo value) ios,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WebDeviceInfo value) web,
    required TResult Function(UnknownDeviceInfo value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IosDeviceInfo value)? ios,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WebDeviceInfo value)? web,
    TResult? Function(UnknownDeviceInfo value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IosDeviceInfo value)? ios,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WebDeviceInfo value)? web,
    TResult Function(UnknownDeviceInfo value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DeviceInfoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoEntityCopyWith<$Res> {
  factory $DeviceInfoEntityCopyWith(
          DeviceInfoEntity value, $Res Function(DeviceInfoEntity) then) =
      _$DeviceInfoEntityCopyWithImpl<$Res, DeviceInfoEntity>;
}

/// @nodoc
class _$DeviceInfoEntityCopyWithImpl<$Res, $Val extends DeviceInfoEntity>
    implements $DeviceInfoEntityCopyWith<$Res> {
  _$DeviceInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AndroidDeviceInfoImplCopyWith<$Res> {
  factory _$$AndroidDeviceInfoImplCopyWith(_$AndroidDeviceInfoImpl value,
          $Res Function(_$AndroidDeviceInfoImpl) then) =
      __$$AndroidDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String model,
      String manufacturer,
      String osVersion,
      int sdkVersion,
      bool isPhysicalDevice,
      String device,
      String display,
      String hardware,
      String product,
      String brand});
}

/// @nodoc
class __$$AndroidDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEntityCopyWithImpl<$Res, _$AndroidDeviceInfoImpl>
    implements _$$AndroidDeviceInfoImplCopyWith<$Res> {
  __$$AndroidDeviceInfoImplCopyWithImpl(_$AndroidDeviceInfoImpl _value,
      $Res Function(_$AndroidDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? manufacturer = null,
    Object? osVersion = null,
    Object? sdkVersion = null,
    Object? isPhysicalDevice = null,
    Object? device = null,
    Object? display = null,
    Object? hardware = null,
    Object? product = null,
    Object? brand = null,
  }) {
    return _then(_$AndroidDeviceInfoImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      sdkVersion: null == sdkVersion
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as int,
      isPhysicalDevice: null == isPhysicalDevice
          ? _value.isPhysicalDevice
          : isPhysicalDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      hardware: null == hardware
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AndroidDeviceInfoImpl implements AndroidDeviceInfo {
  const _$AndroidDeviceInfoImpl(
      {required this.model,
      required this.manufacturer,
      required this.osVersion,
      required this.sdkVersion,
      required this.isPhysicalDevice,
      required this.device,
      required this.display,
      required this.hardware,
      required this.product,
      required this.brand,
      final String? $type})
      : $type = $type ?? 'android';

  factory _$AndroidDeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AndroidDeviceInfoImplFromJson(json);

  @override
  final String model;
  @override
  final String manufacturer;
  @override
  final String osVersion;
  @override
  final int sdkVersion;
  @override
  final bool isPhysicalDevice;
  @override
  final String device;
  @override
  final String display;
  @override
  final String hardware;
  @override
  final String product;
  @override
  final String brand;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceInfoEntity.android(model: $model, manufacturer: $manufacturer, osVersion: $osVersion, sdkVersion: $sdkVersion, isPhysicalDevice: $isPhysicalDevice, device: $device, display: $display, hardware: $hardware, product: $product, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidDeviceInfoImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.sdkVersion, sdkVersion) ||
                other.sdkVersion == sdkVersion) &&
            (identical(other.isPhysicalDevice, isPhysicalDevice) ||
                other.isPhysicalDevice == isPhysicalDevice) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.hardware, hardware) ||
                other.hardware == hardware) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, manufacturer, osVersion,
      sdkVersion, isPhysicalDevice, device, display, hardware, product, brand);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidDeviceInfoImplCopyWith<_$AndroidDeviceInfoImpl> get copyWith =>
      __$$AndroidDeviceInfoImplCopyWithImpl<_$AndroidDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)
        android,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)
        ios,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)
        macOS,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)
        windows,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)
        linux,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String browserName,
            String? browserVersion)
        web,
    required TResult Function(String platform, String? errorMessage) unknown,
  }) {
    return android(model, manufacturer, osVersion, sdkVersion, isPhysicalDevice,
        device, display, hardware, product, brand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult? Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult? Function(String platform, String? errorMessage)? unknown,
  }) {
    return android?.call(model, manufacturer, osVersion, sdkVersion,
        isPhysicalDevice, device, display, hardware, product, brand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult Function(String platform, String? errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(model, manufacturer, osVersion, sdkVersion,
          isPhysicalDevice, device, display, hardware, product, brand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IosDeviceInfo value) ios,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WebDeviceInfo value) web,
    required TResult Function(UnknownDeviceInfo value) unknown,
  }) {
    return android(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IosDeviceInfo value)? ios,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WebDeviceInfo value)? web,
    TResult? Function(UnknownDeviceInfo value)? unknown,
  }) {
    return android?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IosDeviceInfo value)? ios,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WebDeviceInfo value)? web,
    TResult Function(UnknownDeviceInfo value)? unknown,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AndroidDeviceInfoImplToJson(
      this,
    );
  }
}

abstract class AndroidDeviceInfo implements DeviceInfoEntity {
  const factory AndroidDeviceInfo(
      {required final String model,
      required final String manufacturer,
      required final String osVersion,
      required final int sdkVersion,
      required final bool isPhysicalDevice,
      required final String device,
      required final String display,
      required final String hardware,
      required final String product,
      required final String brand}) = _$AndroidDeviceInfoImpl;

  factory AndroidDeviceInfo.fromJson(Map<String, dynamic> json) =
      _$AndroidDeviceInfoImpl.fromJson;

  String get model;
  String get manufacturer;
  String get osVersion;
  int get sdkVersion;
  bool get isPhysicalDevice;
  String get device;
  String get display;
  String get hardware;
  String get product;
  String get brand;

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AndroidDeviceInfoImplCopyWith<_$AndroidDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IosDeviceInfoImplCopyWith<$Res> {
  factory _$$IosDeviceInfoImplCopyWith(
          _$IosDeviceInfoImpl value, $Res Function(_$IosDeviceInfoImpl) then) =
      __$$IosDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String model,
      String manufacturer,
      String osVersion,
      bool isPhysicalDevice,
      String name,
      String systemName,
      String utsname,
      String? identifierForVendor});
}

/// @nodoc
class __$$IosDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEntityCopyWithImpl<$Res, _$IosDeviceInfoImpl>
    implements _$$IosDeviceInfoImplCopyWith<$Res> {
  __$$IosDeviceInfoImplCopyWithImpl(
      _$IosDeviceInfoImpl _value, $Res Function(_$IosDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? manufacturer = null,
    Object? osVersion = null,
    Object? isPhysicalDevice = null,
    Object? name = null,
    Object? systemName = null,
    Object? utsname = null,
    Object? identifierForVendor = freezed,
  }) {
    return _then(_$IosDeviceInfoImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isPhysicalDevice: null == isPhysicalDevice
          ? _value.isPhysicalDevice
          : isPhysicalDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      systemName: null == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String,
      utsname: null == utsname
          ? _value.utsname
          : utsname // ignore: cast_nullable_to_non_nullable
              as String,
      identifierForVendor: freezed == identifierForVendor
          ? _value.identifierForVendor
          : identifierForVendor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IosDeviceInfoImpl implements IosDeviceInfo {
  const _$IosDeviceInfoImpl(
      {required this.model,
      required this.manufacturer,
      required this.osVersion,
      required this.isPhysicalDevice,
      required this.name,
      required this.systemName,
      required this.utsname,
      this.identifierForVendor,
      final String? $type})
      : $type = $type ?? 'ios';

  factory _$IosDeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IosDeviceInfoImplFromJson(json);

  @override
  final String model;
  @override
  final String manufacturer;
  @override
  final String osVersion;
  @override
  final bool isPhysicalDevice;
  @override
  final String name;
  @override
  final String systemName;
  @override
  final String utsname;
  @override
  final String? identifierForVendor;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceInfoEntity.ios(model: $model, manufacturer: $manufacturer, osVersion: $osVersion, isPhysicalDevice: $isPhysicalDevice, name: $name, systemName: $systemName, utsname: $utsname, identifierForVendor: $identifierForVendor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IosDeviceInfoImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.isPhysicalDevice, isPhysicalDevice) ||
                other.isPhysicalDevice == isPhysicalDevice) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.systemName, systemName) ||
                other.systemName == systemName) &&
            (identical(other.utsname, utsname) || other.utsname == utsname) &&
            (identical(other.identifierForVendor, identifierForVendor) ||
                other.identifierForVendor == identifierForVendor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, manufacturer, osVersion,
      isPhysicalDevice, name, systemName, utsname, identifierForVendor);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IosDeviceInfoImplCopyWith<_$IosDeviceInfoImpl> get copyWith =>
      __$$IosDeviceInfoImplCopyWithImpl<_$IosDeviceInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)
        android,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)
        ios,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)
        macOS,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)
        windows,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)
        linux,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String browserName,
            String? browserVersion)
        web,
    required TResult Function(String platform, String? errorMessage) unknown,
  }) {
    return ios(model, manufacturer, osVersion, isPhysicalDevice, name,
        systemName, utsname, identifierForVendor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult? Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult? Function(String platform, String? errorMessage)? unknown,
  }) {
    return ios?.call(model, manufacturer, osVersion, isPhysicalDevice, name,
        systemName, utsname, identifierForVendor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult Function(String platform, String? errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (ios != null) {
      return ios(model, manufacturer, osVersion, isPhysicalDevice, name,
          systemName, utsname, identifierForVendor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IosDeviceInfo value) ios,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WebDeviceInfo value) web,
    required TResult Function(UnknownDeviceInfo value) unknown,
  }) {
    return ios(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IosDeviceInfo value)? ios,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WebDeviceInfo value)? web,
    TResult? Function(UnknownDeviceInfo value)? unknown,
  }) {
    return ios?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IosDeviceInfo value)? ios,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WebDeviceInfo value)? web,
    TResult Function(UnknownDeviceInfo value)? unknown,
    required TResult orElse(),
  }) {
    if (ios != null) {
      return ios(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IosDeviceInfoImplToJson(
      this,
    );
  }
}

abstract class IosDeviceInfo implements DeviceInfoEntity {
  const factory IosDeviceInfo(
      {required final String model,
      required final String manufacturer,
      required final String osVersion,
      required final bool isPhysicalDevice,
      required final String name,
      required final String systemName,
      required final String utsname,
      final String? identifierForVendor}) = _$IosDeviceInfoImpl;

  factory IosDeviceInfo.fromJson(Map<String, dynamic> json) =
      _$IosDeviceInfoImpl.fromJson;

  String get model;
  String get manufacturer;
  String get osVersion;
  bool get isPhysicalDevice;
  String get name;
  String get systemName;
  String get utsname;
  String? get identifierForVendor;

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IosDeviceInfoImplCopyWith<_$IosDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MacOSDeviceInfoImplCopyWith<$Res> {
  factory _$$MacOSDeviceInfoImplCopyWith(_$MacOSDeviceInfoImpl value,
          $Res Function(_$MacOSDeviceInfoImpl) then) =
      __$$MacOSDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String model,
      String manufacturer,
      String osVersion,
      bool isPhysicalDevice,
      String computerName,
      String hostName,
      String arch,
      String kernelVersion});
}

/// @nodoc
class __$$MacOSDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEntityCopyWithImpl<$Res, _$MacOSDeviceInfoImpl>
    implements _$$MacOSDeviceInfoImplCopyWith<$Res> {
  __$$MacOSDeviceInfoImplCopyWithImpl(
      _$MacOSDeviceInfoImpl _value, $Res Function(_$MacOSDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? manufacturer = null,
    Object? osVersion = null,
    Object? isPhysicalDevice = null,
    Object? computerName = null,
    Object? hostName = null,
    Object? arch = null,
    Object? kernelVersion = null,
  }) {
    return _then(_$MacOSDeviceInfoImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isPhysicalDevice: null == isPhysicalDevice
          ? _value.isPhysicalDevice
          : isPhysicalDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      computerName: null == computerName
          ? _value.computerName
          : computerName // ignore: cast_nullable_to_non_nullable
              as String,
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      arch: null == arch
          ? _value.arch
          : arch // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MacOSDeviceInfoImpl implements MacOSDeviceInfo {
  const _$MacOSDeviceInfoImpl(
      {required this.model,
      required this.manufacturer,
      required this.osVersion,
      required this.isPhysicalDevice,
      required this.computerName,
      required this.hostName,
      required this.arch,
      required this.kernelVersion,
      final String? $type})
      : $type = $type ?? 'macOS';

  factory _$MacOSDeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacOSDeviceInfoImplFromJson(json);

  @override
  final String model;
  @override
  final String manufacturer;
  @override
  final String osVersion;
  @override
  final bool isPhysicalDevice;
  @override
  final String computerName;
  @override
  final String hostName;
  @override
  final String arch;
  @override
  final String kernelVersion;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceInfoEntity.macOS(model: $model, manufacturer: $manufacturer, osVersion: $osVersion, isPhysicalDevice: $isPhysicalDevice, computerName: $computerName, hostName: $hostName, arch: $arch, kernelVersion: $kernelVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacOSDeviceInfoImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.isPhysicalDevice, isPhysicalDevice) ||
                other.isPhysicalDevice == isPhysicalDevice) &&
            (identical(other.computerName, computerName) ||
                other.computerName == computerName) &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.arch, arch) || other.arch == arch) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, manufacturer, osVersion,
      isPhysicalDevice, computerName, hostName, arch, kernelVersion);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MacOSDeviceInfoImplCopyWith<_$MacOSDeviceInfoImpl> get copyWith =>
      __$$MacOSDeviceInfoImplCopyWithImpl<_$MacOSDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)
        android,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)
        ios,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)
        macOS,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)
        windows,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)
        linux,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String browserName,
            String? browserVersion)
        web,
    required TResult Function(String platform, String? errorMessage) unknown,
  }) {
    return macOS(model, manufacturer, osVersion, isPhysicalDevice, computerName,
        hostName, arch, kernelVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult? Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult? Function(String platform, String? errorMessage)? unknown,
  }) {
    return macOS?.call(model, manufacturer, osVersion, isPhysicalDevice,
        computerName, hostName, arch, kernelVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult Function(String platform, String? errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (macOS != null) {
      return macOS(model, manufacturer, osVersion, isPhysicalDevice,
          computerName, hostName, arch, kernelVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IosDeviceInfo value) ios,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WebDeviceInfo value) web,
    required TResult Function(UnknownDeviceInfo value) unknown,
  }) {
    return macOS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IosDeviceInfo value)? ios,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WebDeviceInfo value)? web,
    TResult? Function(UnknownDeviceInfo value)? unknown,
  }) {
    return macOS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IosDeviceInfo value)? ios,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WebDeviceInfo value)? web,
    TResult Function(UnknownDeviceInfo value)? unknown,
    required TResult orElse(),
  }) {
    if (macOS != null) {
      return macOS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MacOSDeviceInfoImplToJson(
      this,
    );
  }
}

abstract class MacOSDeviceInfo implements DeviceInfoEntity {
  const factory MacOSDeviceInfo(
      {required final String model,
      required final String manufacturer,
      required final String osVersion,
      required final bool isPhysicalDevice,
      required final String computerName,
      required final String hostName,
      required final String arch,
      required final String kernelVersion}) = _$MacOSDeviceInfoImpl;

  factory MacOSDeviceInfo.fromJson(Map<String, dynamic> json) =
      _$MacOSDeviceInfoImpl.fromJson;

  String get model;
  String get manufacturer;
  String get osVersion;
  bool get isPhysicalDevice;
  String get computerName;
  String get hostName;
  String get arch;
  String get kernelVersion;

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MacOSDeviceInfoImplCopyWith<_$MacOSDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WindowsDeviceInfoImplCopyWith<$Res> {
  factory _$$WindowsDeviceInfoImplCopyWith(_$WindowsDeviceInfoImpl value,
          $Res Function(_$WindowsDeviceInfoImpl) then) =
      __$$WindowsDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String model,
      String manufacturer,
      String osVersion,
      bool isPhysicalDevice,
      int buildNumber,
      int platformId,
      int productType,
      int systemMemoryInMegabytes});
}

/// @nodoc
class __$$WindowsDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEntityCopyWithImpl<$Res, _$WindowsDeviceInfoImpl>
    implements _$$WindowsDeviceInfoImplCopyWith<$Res> {
  __$$WindowsDeviceInfoImplCopyWithImpl(_$WindowsDeviceInfoImpl _value,
      $Res Function(_$WindowsDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? manufacturer = null,
    Object? osVersion = null,
    Object? isPhysicalDevice = null,
    Object? buildNumber = null,
    Object? platformId = null,
    Object? productType = null,
    Object? systemMemoryInMegabytes = null,
  }) {
    return _then(_$WindowsDeviceInfoImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isPhysicalDevice: null == isPhysicalDevice
          ? _value.isPhysicalDevice
          : isPhysicalDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int,
      platformId: null == platformId
          ? _value.platformId
          : platformId // ignore: cast_nullable_to_non_nullable
              as int,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as int,
      systemMemoryInMegabytes: null == systemMemoryInMegabytes
          ? _value.systemMemoryInMegabytes
          : systemMemoryInMegabytes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WindowsDeviceInfoImpl implements WindowsDeviceInfo {
  const _$WindowsDeviceInfoImpl(
      {required this.model,
      required this.manufacturer,
      required this.osVersion,
      required this.isPhysicalDevice,
      required this.buildNumber,
      required this.platformId,
      required this.productType,
      required this.systemMemoryInMegabytes,
      final String? $type})
      : $type = $type ?? 'windows';

  factory _$WindowsDeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindowsDeviceInfoImplFromJson(json);

  @override
  final String model;
  @override
  final String manufacturer;
  @override
  final String osVersion;
  @override
  final bool isPhysicalDevice;
  @override
  final int buildNumber;
  @override
  final int platformId;
  @override
  final int productType;
  @override
  final int systemMemoryInMegabytes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceInfoEntity.windows(model: $model, manufacturer: $manufacturer, osVersion: $osVersion, isPhysicalDevice: $isPhysicalDevice, buildNumber: $buildNumber, platformId: $platformId, productType: $productType, systemMemoryInMegabytes: $systemMemoryInMegabytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindowsDeviceInfoImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.isPhysicalDevice, isPhysicalDevice) ||
                other.isPhysicalDevice == isPhysicalDevice) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.platformId, platformId) ||
                other.platformId == platformId) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(
                    other.systemMemoryInMegabytes, systemMemoryInMegabytes) ||
                other.systemMemoryInMegabytes == systemMemoryInMegabytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      manufacturer,
      osVersion,
      isPhysicalDevice,
      buildNumber,
      platformId,
      productType,
      systemMemoryInMegabytes);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindowsDeviceInfoImplCopyWith<_$WindowsDeviceInfoImpl> get copyWith =>
      __$$WindowsDeviceInfoImplCopyWithImpl<_$WindowsDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)
        android,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)
        ios,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)
        macOS,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)
        windows,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)
        linux,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String browserName,
            String? browserVersion)
        web,
    required TResult Function(String platform, String? errorMessage) unknown,
  }) {
    return windows(model, manufacturer, osVersion, isPhysicalDevice,
        buildNumber, platformId, productType, systemMemoryInMegabytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult? Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult? Function(String platform, String? errorMessage)? unknown,
  }) {
    return windows?.call(model, manufacturer, osVersion, isPhysicalDevice,
        buildNumber, platformId, productType, systemMemoryInMegabytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult Function(String platform, String? errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (windows != null) {
      return windows(model, manufacturer, osVersion, isPhysicalDevice,
          buildNumber, platformId, productType, systemMemoryInMegabytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IosDeviceInfo value) ios,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WebDeviceInfo value) web,
    required TResult Function(UnknownDeviceInfo value) unknown,
  }) {
    return windows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IosDeviceInfo value)? ios,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WebDeviceInfo value)? web,
    TResult? Function(UnknownDeviceInfo value)? unknown,
  }) {
    return windows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IosDeviceInfo value)? ios,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WebDeviceInfo value)? web,
    TResult Function(UnknownDeviceInfo value)? unknown,
    required TResult orElse(),
  }) {
    if (windows != null) {
      return windows(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WindowsDeviceInfoImplToJson(
      this,
    );
  }
}

abstract class WindowsDeviceInfo implements DeviceInfoEntity {
  const factory WindowsDeviceInfo(
      {required final String model,
      required final String manufacturer,
      required final String osVersion,
      required final bool isPhysicalDevice,
      required final int buildNumber,
      required final int platformId,
      required final int productType,
      required final int systemMemoryInMegabytes}) = _$WindowsDeviceInfoImpl;

  factory WindowsDeviceInfo.fromJson(Map<String, dynamic> json) =
      _$WindowsDeviceInfoImpl.fromJson;

  String get model;
  String get manufacturer;
  String get osVersion;
  bool get isPhysicalDevice;
  int get buildNumber;
  int get platformId;
  int get productType;
  int get systemMemoryInMegabytes;

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindowsDeviceInfoImplCopyWith<_$WindowsDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LinuxDeviceInfoImplCopyWith<$Res> {
  factory _$$LinuxDeviceInfoImplCopyWith(_$LinuxDeviceInfoImpl value,
          $Res Function(_$LinuxDeviceInfoImpl) then) =
      __$$LinuxDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String model,
      String manufacturer,
      String osVersion,
      bool isPhysicalDevice,
      String id,
      String? versionId,
      String? prettyName,
      String? machineId});
}

/// @nodoc
class __$$LinuxDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEntityCopyWithImpl<$Res, _$LinuxDeviceInfoImpl>
    implements _$$LinuxDeviceInfoImplCopyWith<$Res> {
  __$$LinuxDeviceInfoImplCopyWithImpl(
      _$LinuxDeviceInfoImpl _value, $Res Function(_$LinuxDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? manufacturer = null,
    Object? osVersion = null,
    Object? isPhysicalDevice = null,
    Object? id = null,
    Object? versionId = freezed,
    Object? prettyName = freezed,
    Object? machineId = freezed,
  }) {
    return _then(_$LinuxDeviceInfoImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isPhysicalDevice: null == isPhysicalDevice
          ? _value.isPhysicalDevice
          : isPhysicalDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      versionId: freezed == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String?,
      prettyName: freezed == prettyName
          ? _value.prettyName
          : prettyName // ignore: cast_nullable_to_non_nullable
              as String?,
      machineId: freezed == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinuxDeviceInfoImpl implements LinuxDeviceInfo {
  const _$LinuxDeviceInfoImpl(
      {required this.model,
      required this.manufacturer,
      required this.osVersion,
      required this.isPhysicalDevice,
      required this.id,
      this.versionId,
      this.prettyName,
      this.machineId,
      final String? $type})
      : $type = $type ?? 'linux';

  factory _$LinuxDeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinuxDeviceInfoImplFromJson(json);

  @override
  final String model;
  @override
  final String manufacturer;
  @override
  final String osVersion;
  @override
  final bool isPhysicalDevice;
  @override
  final String id;
  @override
  final String? versionId;
  @override
  final String? prettyName;
  @override
  final String? machineId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceInfoEntity.linux(model: $model, manufacturer: $manufacturer, osVersion: $osVersion, isPhysicalDevice: $isPhysicalDevice, id: $id, versionId: $versionId, prettyName: $prettyName, machineId: $machineId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinuxDeviceInfoImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.isPhysicalDevice, isPhysicalDevice) ||
                other.isPhysicalDevice == isPhysicalDevice) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId) &&
            (identical(other.prettyName, prettyName) ||
                other.prettyName == prettyName) &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, manufacturer, osVersion,
      isPhysicalDevice, id, versionId, prettyName, machineId);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinuxDeviceInfoImplCopyWith<_$LinuxDeviceInfoImpl> get copyWith =>
      __$$LinuxDeviceInfoImplCopyWithImpl<_$LinuxDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)
        android,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)
        ios,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)
        macOS,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)
        windows,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)
        linux,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String browserName,
            String? browserVersion)
        web,
    required TResult Function(String platform, String? errorMessage) unknown,
  }) {
    return linux(model, manufacturer, osVersion, isPhysicalDevice, id,
        versionId, prettyName, machineId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult? Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult? Function(String platform, String? errorMessage)? unknown,
  }) {
    return linux?.call(model, manufacturer, osVersion, isPhysicalDevice, id,
        versionId, prettyName, machineId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult Function(String platform, String? errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (linux != null) {
      return linux(model, manufacturer, osVersion, isPhysicalDevice, id,
          versionId, prettyName, machineId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IosDeviceInfo value) ios,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WebDeviceInfo value) web,
    required TResult Function(UnknownDeviceInfo value) unknown,
  }) {
    return linux(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IosDeviceInfo value)? ios,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WebDeviceInfo value)? web,
    TResult? Function(UnknownDeviceInfo value)? unknown,
  }) {
    return linux?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IosDeviceInfo value)? ios,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WebDeviceInfo value)? web,
    TResult Function(UnknownDeviceInfo value)? unknown,
    required TResult orElse(),
  }) {
    if (linux != null) {
      return linux(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LinuxDeviceInfoImplToJson(
      this,
    );
  }
}

abstract class LinuxDeviceInfo implements DeviceInfoEntity {
  const factory LinuxDeviceInfo(
      {required final String model,
      required final String manufacturer,
      required final String osVersion,
      required final bool isPhysicalDevice,
      required final String id,
      final String? versionId,
      final String? prettyName,
      final String? machineId}) = _$LinuxDeviceInfoImpl;

  factory LinuxDeviceInfo.fromJson(Map<String, dynamic> json) =
      _$LinuxDeviceInfoImpl.fromJson;

  String get model;
  String get manufacturer;
  String get osVersion;
  bool get isPhysicalDevice;
  String get id;
  String? get versionId;
  String? get prettyName;
  String? get machineId;

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinuxDeviceInfoImplCopyWith<_$LinuxDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebDeviceInfoImplCopyWith<$Res> {
  factory _$$WebDeviceInfoImplCopyWith(
          _$WebDeviceInfoImpl value, $Res Function(_$WebDeviceInfoImpl) then) =
      __$$WebDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String model,
      String manufacturer,
      String osVersion,
      bool isPhysicalDevice,
      String browserName,
      String? browserVersion});
}

/// @nodoc
class __$$WebDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEntityCopyWithImpl<$Res, _$WebDeviceInfoImpl>
    implements _$$WebDeviceInfoImplCopyWith<$Res> {
  __$$WebDeviceInfoImplCopyWithImpl(
      _$WebDeviceInfoImpl _value, $Res Function(_$WebDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? manufacturer = null,
    Object? osVersion = null,
    Object? isPhysicalDevice = null,
    Object? browserName = null,
    Object? browserVersion = freezed,
  }) {
    return _then(_$WebDeviceInfoImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isPhysicalDevice: null == isPhysicalDevice
          ? _value.isPhysicalDevice
          : isPhysicalDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      browserName: null == browserName
          ? _value.browserName
          : browserName // ignore: cast_nullable_to_non_nullable
              as String,
      browserVersion: freezed == browserVersion
          ? _value.browserVersion
          : browserVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebDeviceInfoImpl implements WebDeviceInfo {
  const _$WebDeviceInfoImpl(
      {required this.model,
      required this.manufacturer,
      required this.osVersion,
      required this.isPhysicalDevice,
      required this.browserName,
      this.browserVersion,
      final String? $type})
      : $type = $type ?? 'web';

  factory _$WebDeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebDeviceInfoImplFromJson(json);

  @override
  final String model;
  @override
  final String manufacturer;
  @override
  final String osVersion;
  @override
  final bool isPhysicalDevice;
  @override
  final String browserName;
  @override
  final String? browserVersion;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceInfoEntity.web(model: $model, manufacturer: $manufacturer, osVersion: $osVersion, isPhysicalDevice: $isPhysicalDevice, browserName: $browserName, browserVersion: $browserVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebDeviceInfoImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.isPhysicalDevice, isPhysicalDevice) ||
                other.isPhysicalDevice == isPhysicalDevice) &&
            (identical(other.browserName, browserName) ||
                other.browserName == browserName) &&
            (identical(other.browserVersion, browserVersion) ||
                other.browserVersion == browserVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, manufacturer, osVersion,
      isPhysicalDevice, browserName, browserVersion);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebDeviceInfoImplCopyWith<_$WebDeviceInfoImpl> get copyWith =>
      __$$WebDeviceInfoImplCopyWithImpl<_$WebDeviceInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)
        android,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)
        ios,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)
        macOS,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)
        windows,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)
        linux,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String browserName,
            String? browserVersion)
        web,
    required TResult Function(String platform, String? errorMessage) unknown,
  }) {
    return web(model, manufacturer, osVersion, isPhysicalDevice, browserName,
        browserVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult? Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult? Function(String platform, String? errorMessage)? unknown,
  }) {
    return web?.call(model, manufacturer, osVersion, isPhysicalDevice,
        browserName, browserVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult Function(String platform, String? errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (web != null) {
      return web(model, manufacturer, osVersion, isPhysicalDevice, browserName,
          browserVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IosDeviceInfo value) ios,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WebDeviceInfo value) web,
    required TResult Function(UnknownDeviceInfo value) unknown,
  }) {
    return web(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IosDeviceInfo value)? ios,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WebDeviceInfo value)? web,
    TResult? Function(UnknownDeviceInfo value)? unknown,
  }) {
    return web?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IosDeviceInfo value)? ios,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WebDeviceInfo value)? web,
    TResult Function(UnknownDeviceInfo value)? unknown,
    required TResult orElse(),
  }) {
    if (web != null) {
      return web(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebDeviceInfoImplToJson(
      this,
    );
  }
}

abstract class WebDeviceInfo implements DeviceInfoEntity {
  const factory WebDeviceInfo(
      {required final String model,
      required final String manufacturer,
      required final String osVersion,
      required final bool isPhysicalDevice,
      required final String browserName,
      final String? browserVersion}) = _$WebDeviceInfoImpl;

  factory WebDeviceInfo.fromJson(Map<String, dynamic> json) =
      _$WebDeviceInfoImpl.fromJson;

  String get model;
  String get manufacturer;
  String get osVersion;
  bool get isPhysicalDevice;
  String get browserName;
  String? get browserVersion;

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebDeviceInfoImplCopyWith<_$WebDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownDeviceInfoImplCopyWith<$Res> {
  factory _$$UnknownDeviceInfoImplCopyWith(_$UnknownDeviceInfoImpl value,
          $Res Function(_$UnknownDeviceInfoImpl) then) =
      __$$UnknownDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String platform, String? errorMessage});
}

/// @nodoc
class __$$UnknownDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEntityCopyWithImpl<$Res, _$UnknownDeviceInfoImpl>
    implements _$$UnknownDeviceInfoImplCopyWith<$Res> {
  __$$UnknownDeviceInfoImplCopyWithImpl(_$UnknownDeviceInfoImpl _value,
      $Res Function(_$UnknownDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$UnknownDeviceInfoImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnknownDeviceInfoImpl implements UnknownDeviceInfo {
  const _$UnknownDeviceInfoImpl(
      {required this.platform, this.errorMessage, final String? $type})
      : $type = $type ?? 'unknown';

  factory _$UnknownDeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownDeviceInfoImplFromJson(json);

  @override
  final String platform;
  @override
  final String? errorMessage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DeviceInfoEntity.unknown(platform: $platform, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownDeviceInfoImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, platform, errorMessage);

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownDeviceInfoImplCopyWith<_$UnknownDeviceInfoImpl> get copyWith =>
      __$$UnknownDeviceInfoImplCopyWithImpl<_$UnknownDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)
        android,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)
        ios,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)
        macOS,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)
        windows,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)
        linux,
    required TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String browserName,
            String? browserVersion)
        web,
    required TResult Function(String platform, String? errorMessage) unknown,
  }) {
    return unknown(platform, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult? Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult? Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult? Function(String platform, String? errorMessage)? unknown,
  }) {
    return unknown?.call(platform, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            int sdkVersion,
            bool isPhysicalDevice,
            String device,
            String display,
            String hardware,
            String product,
            String brand)?
        android,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String name,
            String systemName,
            String utsname,
            String? identifierForVendor)?
        ios,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String computerName,
            String hostName,
            String arch,
            String kernelVersion)?
        macOS,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            int buildNumber,
            int platformId,
            int productType,
            int systemMemoryInMegabytes)?
        windows,
    TResult Function(
            String model,
            String manufacturer,
            String osVersion,
            bool isPhysicalDevice,
            String id,
            String? versionId,
            String? prettyName,
            String? machineId)?
        linux,
    TResult Function(String model, String manufacturer, String osVersion,
            bool isPhysicalDevice, String browserName, String? browserVersion)?
        web,
    TResult Function(String platform, String? errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(platform, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IosDeviceInfo value) ios,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WebDeviceInfo value) web,
    required TResult Function(UnknownDeviceInfo value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IosDeviceInfo value)? ios,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WebDeviceInfo value)? web,
    TResult? Function(UnknownDeviceInfo value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IosDeviceInfo value)? ios,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WebDeviceInfo value)? web,
    TResult Function(UnknownDeviceInfo value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownDeviceInfoImplToJson(
      this,
    );
  }
}

abstract class UnknownDeviceInfo implements DeviceInfoEntity {
  const factory UnknownDeviceInfo(
      {required final String platform,
      final String? errorMessage}) = _$UnknownDeviceInfoImpl;

  factory UnknownDeviceInfo.fromJson(Map<String, dynamic> json) =
      _$UnknownDeviceInfoImpl.fromJson;

  String get platform;
  String? get errorMessage;

  /// Create a copy of DeviceInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownDeviceInfoImplCopyWith<_$UnknownDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
