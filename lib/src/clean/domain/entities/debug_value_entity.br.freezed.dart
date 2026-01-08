// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_value_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DebugValueEntity _$DebugValueEntityFromJson(Map<String, dynamic> json) {
  return _DebugValueEntity.fromJson(json);
}

/// @nodoc
mixin _$DebugValueEntity {
  String get name => throw _privateConstructorUsedError;
  String get valueId => throw _privateConstructorUsedError;
  dynamic get currentValue => throw _privateConstructorUsedError;

  /// Serializes this DebugValueEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DebugValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DebugValueEntityCopyWith<DebugValueEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugValueEntityCopyWith<$Res> {
  factory $DebugValueEntityCopyWith(
          DebugValueEntity value, $Res Function(DebugValueEntity) then) =
      _$DebugValueEntityCopyWithImpl<$Res, DebugValueEntity>;
  @useResult
  $Res call({String name, String valueId, dynamic currentValue});
}

/// @nodoc
class _$DebugValueEntityCopyWithImpl<$Res, $Val extends DebugValueEntity>
    implements $DebugValueEntityCopyWith<$Res> {
  _$DebugValueEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DebugValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? valueId = null,
    Object? currentValue = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      valueId: null == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as String,
      currentValue: freezed == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebugValueEntityImplCopyWith<$Res>
    implements $DebugValueEntityCopyWith<$Res> {
  factory _$$DebugValueEntityImplCopyWith(_$DebugValueEntityImpl value,
          $Res Function(_$DebugValueEntityImpl) then) =
      __$$DebugValueEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String valueId, dynamic currentValue});
}

/// @nodoc
class __$$DebugValueEntityImplCopyWithImpl<$Res>
    extends _$DebugValueEntityCopyWithImpl<$Res, _$DebugValueEntityImpl>
    implements _$$DebugValueEntityImplCopyWith<$Res> {
  __$$DebugValueEntityImplCopyWithImpl(_$DebugValueEntityImpl _value,
      $Res Function(_$DebugValueEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DebugValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? valueId = null,
    Object? currentValue = freezed,
  }) {
    return _then(_$DebugValueEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      valueId: null == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as String,
      currentValue: freezed == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DebugValueEntityImpl implements _DebugValueEntity {
  const _$DebugValueEntityImpl(
      {required this.name, required this.valueId, required this.currentValue});

  factory _$DebugValueEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DebugValueEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String valueId;
  @override
  final dynamic currentValue;

  @override
  String toString() {
    return 'DebugValueEntity(name: $name, valueId: $valueId, currentValue: $currentValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebugValueEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.valueId, valueId) || other.valueId == valueId) &&
            const DeepCollectionEquality()
                .equals(other.currentValue, currentValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, valueId,
      const DeepCollectionEquality().hash(currentValue));

  /// Create a copy of DebugValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DebugValueEntityImplCopyWith<_$DebugValueEntityImpl> get copyWith =>
      __$$DebugValueEntityImplCopyWithImpl<_$DebugValueEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DebugValueEntityImplToJson(
      this,
    );
  }
}

abstract class _DebugValueEntity implements DebugValueEntity {
  const factory _DebugValueEntity(
      {required final String name,
      required final String valueId,
      required final dynamic currentValue}) = _$DebugValueEntityImpl;

  factory _DebugValueEntity.fromJson(Map<String, dynamic> json) =
      _$DebugValueEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get valueId;
  @override
  dynamic get currentValue;

  /// Create a copy of DebugValueEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DebugValueEntityImplCopyWith<_$DebugValueEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
