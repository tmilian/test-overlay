// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_event_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogEventEntity _$LogEventEntityFromJson(Map<String, dynamic> json) {
  return _LogEventEntity.fromJson(json);
}

/// @nodoc
mixin _$LogEventEntity {
  LogLevel get level => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  /// Serializes this LogEventEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogEventEntityCopyWith<LogEventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogEventEntityCopyWith<$Res> {
  factory $LogEventEntityCopyWith(
          LogEventEntity value, $Res Function(LogEventEntity) then) =
      _$LogEventEntityCopyWithImpl<$Res, LogEventEntity>;
  @useResult
  $Res call(
      {LogLevel level,
      dynamic message,
      DateTime time,
      Object? error,
      @JsonKey(includeFromJson: false, includeToJson: false)
      StackTrace? stackTrace});
}

/// @nodoc
class _$LogEventEntityCopyWithImpl<$Res, $Val extends LogEventEntity>
    implements $LogEventEntityCopyWith<$Res> {
  _$LogEventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? message = freezed,
    Object? time = null,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogEventEntityImplCopyWith<$Res>
    implements $LogEventEntityCopyWith<$Res> {
  factory _$$LogEventEntityImplCopyWith(_$LogEventEntityImpl value,
          $Res Function(_$LogEventEntityImpl) then) =
      __$$LogEventEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LogLevel level,
      dynamic message,
      DateTime time,
      Object? error,
      @JsonKey(includeFromJson: false, includeToJson: false)
      StackTrace? stackTrace});
}

/// @nodoc
class __$$LogEventEntityImplCopyWithImpl<$Res>
    extends _$LogEventEntityCopyWithImpl<$Res, _$LogEventEntityImpl>
    implements _$$LogEventEntityImplCopyWith<$Res> {
  __$$LogEventEntityImplCopyWithImpl(
      _$LogEventEntityImpl _value, $Res Function(_$LogEventEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? message = freezed,
    Object? time = null,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$LogEventEntityImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogEventEntityImpl extends _LogEventEntity {
  const _$LogEventEntityImpl(
      {required this.level,
      required this.message,
      required this.time,
      this.error,
      @JsonKey(includeFromJson: false, includeToJson: false) this.stackTrace})
      : super._();

  factory _$LogEventEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogEventEntityImplFromJson(json);

  @override
  final LogLevel level;
  @override
  final dynamic message;
  @override
  final DateTime time;
  @override
  final Object? error;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'LogEventEntity(level: $level, message: $message, time: $time, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogEventEntityImpl &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      level,
      const DeepCollectionEquality().hash(message),
      time,
      const DeepCollectionEquality().hash(error),
      stackTrace);

  /// Create a copy of LogEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogEventEntityImplCopyWith<_$LogEventEntityImpl> get copyWith =>
      __$$LogEventEntityImplCopyWithImpl<_$LogEventEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogEventEntityImplToJson(
      this,
    );
  }
}

abstract class _LogEventEntity extends LogEventEntity {
  const factory _LogEventEntity(
      {required final LogLevel level,
      required final dynamic message,
      required final DateTime time,
      final Object? error,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final StackTrace? stackTrace}) = _$LogEventEntityImpl;
  const _LogEventEntity._() : super._();

  factory _LogEventEntity.fromJson(Map<String, dynamic> json) =
      _$LogEventEntityImpl.fromJson;

  @override
  LogLevel get level;
  @override
  dynamic get message;
  @override
  DateTime get time;
  @override
  Object? get error;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  StackTrace? get stackTrace;

  /// Create a copy of LogEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogEventEntityImplCopyWith<_$LogEventEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
