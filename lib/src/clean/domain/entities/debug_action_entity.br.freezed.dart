// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_action_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DebugActionEntity _$DebugActionEntityFromJson(Map<String, dynamic> json) {
  return _DebugActionEntity.fromJson(json);
}

/// @nodoc
mixin _$DebugActionEntity {
  String get name => throw _privateConstructorUsedError;
  String get actionId => throw _privateConstructorUsedError;

  /// Serializes this DebugActionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DebugActionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DebugActionEntityCopyWith<DebugActionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugActionEntityCopyWith<$Res> {
  factory $DebugActionEntityCopyWith(
          DebugActionEntity value, $Res Function(DebugActionEntity) then) =
      _$DebugActionEntityCopyWithImpl<$Res, DebugActionEntity>;
  @useResult
  $Res call({String name, String actionId});
}

/// @nodoc
class _$DebugActionEntityCopyWithImpl<$Res, $Val extends DebugActionEntity>
    implements $DebugActionEntityCopyWith<$Res> {
  _$DebugActionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DebugActionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? actionId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      actionId: null == actionId
          ? _value.actionId
          : actionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebugActionEntityImplCopyWith<$Res>
    implements $DebugActionEntityCopyWith<$Res> {
  factory _$$DebugActionEntityImplCopyWith(_$DebugActionEntityImpl value,
          $Res Function(_$DebugActionEntityImpl) then) =
      __$$DebugActionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String actionId});
}

/// @nodoc
class __$$DebugActionEntityImplCopyWithImpl<$Res>
    extends _$DebugActionEntityCopyWithImpl<$Res, _$DebugActionEntityImpl>
    implements _$$DebugActionEntityImplCopyWith<$Res> {
  __$$DebugActionEntityImplCopyWithImpl(_$DebugActionEntityImpl _value,
      $Res Function(_$DebugActionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DebugActionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? actionId = null,
  }) {
    return _then(_$DebugActionEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      actionId: null == actionId
          ? _value.actionId
          : actionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DebugActionEntityImpl implements _DebugActionEntity {
  const _$DebugActionEntityImpl({required this.name, required this.actionId});

  factory _$DebugActionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DebugActionEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String actionId;

  @override
  String toString() {
    return 'DebugActionEntity(name: $name, actionId: $actionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebugActionEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.actionId, actionId) ||
                other.actionId == actionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, actionId);

  /// Create a copy of DebugActionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DebugActionEntityImplCopyWith<_$DebugActionEntityImpl> get copyWith =>
      __$$DebugActionEntityImplCopyWithImpl<_$DebugActionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DebugActionEntityImplToJson(
      this,
    );
  }
}

abstract class _DebugActionEntity implements DebugActionEntity {
  const factory _DebugActionEntity(
      {required final String name,
      required final String actionId}) = _$DebugActionEntityImpl;

  factory _DebugActionEntity.fromJson(Map<String, dynamic> json) =
      _$DebugActionEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get actionId;

  /// Create a copy of DebugActionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DebugActionEntityImplCopyWith<_$DebugActionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
