// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_info_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageInfoEntity _$PackageInfoEntityFromJson(Map<String, dynamic> json) {
  return _PackageInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$PackageInfoEntity {
  String get appName => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  String? get buildSignature => throw _privateConstructorUsedError;
  String? get installerStore => throw _privateConstructorUsedError;

  /// Serializes this PackageInfoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageInfoEntityCopyWith<PackageInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageInfoEntityCopyWith<$Res> {
  factory $PackageInfoEntityCopyWith(
          PackageInfoEntity value, $Res Function(PackageInfoEntity) then) =
      _$PackageInfoEntityCopyWithImpl<$Res, PackageInfoEntity>;
  @useResult
  $Res call(
      {String appName,
      String packageName,
      String version,
      String buildNumber,
      String? buildSignature,
      String? installerStore});
}

/// @nodoc
class _$PackageInfoEntityCopyWithImpl<$Res, $Val extends PackageInfoEntity>
    implements $PackageInfoEntityCopyWith<$Res> {
  _$PackageInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? buildSignature = freezed,
    Object? installerStore = freezed,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildSignature: freezed == buildSignature
          ? _value.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      installerStore: freezed == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageInfoEntityImplCopyWith<$Res>
    implements $PackageInfoEntityCopyWith<$Res> {
  factory _$$PackageInfoEntityImplCopyWith(_$PackageInfoEntityImpl value,
          $Res Function(_$PackageInfoEntityImpl) then) =
      __$$PackageInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appName,
      String packageName,
      String version,
      String buildNumber,
      String? buildSignature,
      String? installerStore});
}

/// @nodoc
class __$$PackageInfoEntityImplCopyWithImpl<$Res>
    extends _$PackageInfoEntityCopyWithImpl<$Res, _$PackageInfoEntityImpl>
    implements _$$PackageInfoEntityImplCopyWith<$Res> {
  __$$PackageInfoEntityImplCopyWithImpl(_$PackageInfoEntityImpl _value,
      $Res Function(_$PackageInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? buildSignature = freezed,
    Object? installerStore = freezed,
  }) {
    return _then(_$PackageInfoEntityImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildSignature: freezed == buildSignature
          ? _value.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      installerStore: freezed == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageInfoEntityImpl implements _PackageInfoEntity {
  const _$PackageInfoEntityImpl(
      {required this.appName,
      required this.packageName,
      required this.version,
      required this.buildNumber,
      this.buildSignature,
      this.installerStore});

  factory _$PackageInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageInfoEntityImplFromJson(json);

  @override
  final String appName;
  @override
  final String packageName;
  @override
  final String version;
  @override
  final String buildNumber;
  @override
  final String? buildSignature;
  @override
  final String? installerStore;

  @override
  String toString() {
    return 'PackageInfoEntity(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, installerStore: $installerStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageInfoEntityImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.buildSignature, buildSignature) ||
                other.buildSignature == buildSignature) &&
            (identical(other.installerStore, installerStore) ||
                other.installerStore == installerStore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appName, packageName, version,
      buildNumber, buildSignature, installerStore);

  /// Create a copy of PackageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageInfoEntityImplCopyWith<_$PackageInfoEntityImpl> get copyWith =>
      __$$PackageInfoEntityImplCopyWithImpl<_$PackageInfoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _PackageInfoEntity implements PackageInfoEntity {
  const factory _PackageInfoEntity(
      {required final String appName,
      required final String packageName,
      required final String version,
      required final String buildNumber,
      final String? buildSignature,
      final String? installerStore}) = _$PackageInfoEntityImpl;

  factory _PackageInfoEntity.fromJson(Map<String, dynamic> json) =
      _$PackageInfoEntityImpl.fromJson;

  @override
  String get appName;
  @override
  String get packageName;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  String? get buildSignature;
  @override
  String? get installerStore;

  /// Create a copy of PackageInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageInfoEntityImplCopyWith<_$PackageInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
