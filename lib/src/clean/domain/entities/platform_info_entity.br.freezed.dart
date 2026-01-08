// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_info_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlatformInfoEntity _$PlatformInfoEntityFromJson(Map<String, dynamic> json) {
  return _PlatformInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$PlatformInfoEntity {
  String get operatingSystem => throw _privateConstructorUsedError;
  String get operatingSystemVersion => throw _privateConstructorUsedError;
  int get numberOfProcessors => throw _privateConstructorUsedError;
  String? get localeName => throw _privateConstructorUsedError;
  String? get hostname => throw _privateConstructorUsedError;

  /// Serializes this PlatformInfoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlatformInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlatformInfoEntityCopyWith<PlatformInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformInfoEntityCopyWith<$Res> {
  factory $PlatformInfoEntityCopyWith(
          PlatformInfoEntity value, $Res Function(PlatformInfoEntity) then) =
      _$PlatformInfoEntityCopyWithImpl<$Res, PlatformInfoEntity>;
  @useResult
  $Res call(
      {String operatingSystem,
      String operatingSystemVersion,
      int numberOfProcessors,
      String? localeName,
      String? hostname});
}

/// @nodoc
class _$PlatformInfoEntityCopyWithImpl<$Res, $Val extends PlatformInfoEntity>
    implements $PlatformInfoEntityCopyWith<$Res> {
  _$PlatformInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlatformInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operatingSystem = null,
    Object? operatingSystemVersion = null,
    Object? numberOfProcessors = null,
    Object? localeName = freezed,
    Object? hostname = freezed,
  }) {
    return _then(_value.copyWith(
      operatingSystem: null == operatingSystem
          ? _value.operatingSystem
          : operatingSystem // ignore: cast_nullable_to_non_nullable
              as String,
      operatingSystemVersion: null == operatingSystemVersion
          ? _value.operatingSystemVersion
          : operatingSystemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfProcessors: null == numberOfProcessors
          ? _value.numberOfProcessors
          : numberOfProcessors // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: freezed == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as String?,
      hostname: freezed == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatformInfoEntityImplCopyWith<$Res>
    implements $PlatformInfoEntityCopyWith<$Res> {
  factory _$$PlatformInfoEntityImplCopyWith(_$PlatformInfoEntityImpl value,
          $Res Function(_$PlatformInfoEntityImpl) then) =
      __$$PlatformInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String operatingSystem,
      String operatingSystemVersion,
      int numberOfProcessors,
      String? localeName,
      String? hostname});
}

/// @nodoc
class __$$PlatformInfoEntityImplCopyWithImpl<$Res>
    extends _$PlatformInfoEntityCopyWithImpl<$Res, _$PlatformInfoEntityImpl>
    implements _$$PlatformInfoEntityImplCopyWith<$Res> {
  __$$PlatformInfoEntityImplCopyWithImpl(_$PlatformInfoEntityImpl _value,
      $Res Function(_$PlatformInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlatformInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operatingSystem = null,
    Object? operatingSystemVersion = null,
    Object? numberOfProcessors = null,
    Object? localeName = freezed,
    Object? hostname = freezed,
  }) {
    return _then(_$PlatformInfoEntityImpl(
      operatingSystem: null == operatingSystem
          ? _value.operatingSystem
          : operatingSystem // ignore: cast_nullable_to_non_nullable
              as String,
      operatingSystemVersion: null == operatingSystemVersion
          ? _value.operatingSystemVersion
          : operatingSystemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfProcessors: null == numberOfProcessors
          ? _value.numberOfProcessors
          : numberOfProcessors // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: freezed == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as String?,
      hostname: freezed == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatformInfoEntityImpl implements _PlatformInfoEntity {
  const _$PlatformInfoEntityImpl(
      {required this.operatingSystem,
      required this.operatingSystemVersion,
      required this.numberOfProcessors,
      this.localeName,
      this.hostname});

  factory _$PlatformInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformInfoEntityImplFromJson(json);

  @override
  final String operatingSystem;
  @override
  final String operatingSystemVersion;
  @override
  final int numberOfProcessors;
  @override
  final String? localeName;
  @override
  final String? hostname;

  @override
  String toString() {
    return 'PlatformInfoEntity(operatingSystem: $operatingSystem, operatingSystemVersion: $operatingSystemVersion, numberOfProcessors: $numberOfProcessors, localeName: $localeName, hostname: $hostname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformInfoEntityImpl &&
            (identical(other.operatingSystem, operatingSystem) ||
                other.operatingSystem == operatingSystem) &&
            (identical(other.operatingSystemVersion, operatingSystemVersion) ||
                other.operatingSystemVersion == operatingSystemVersion) &&
            (identical(other.numberOfProcessors, numberOfProcessors) ||
                other.numberOfProcessors == numberOfProcessors) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, operatingSystem,
      operatingSystemVersion, numberOfProcessors, localeName, hostname);

  /// Create a copy of PlatformInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformInfoEntityImplCopyWith<_$PlatformInfoEntityImpl> get copyWith =>
      __$$PlatformInfoEntityImplCopyWithImpl<_$PlatformInfoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _PlatformInfoEntity implements PlatformInfoEntity {
  const factory _PlatformInfoEntity(
      {required final String operatingSystem,
      required final String operatingSystemVersion,
      required final int numberOfProcessors,
      final String? localeName,
      final String? hostname}) = _$PlatformInfoEntityImpl;

  factory _PlatformInfoEntity.fromJson(Map<String, dynamic> json) =
      _$PlatformInfoEntityImpl.fromJson;

  @override
  String get operatingSystem;
  @override
  String get operatingSystemVersion;
  @override
  int get numberOfProcessors;
  @override
  String? get localeName;
  @override
  String? get hostname;

  /// Create a copy of PlatformInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatformInfoEntityImplCopyWith<_$PlatformInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
