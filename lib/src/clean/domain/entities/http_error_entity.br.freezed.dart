// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_error_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HttpErrorEntity _$HttpErrorEntityFromJson(Map<String, dynamic> json) {
  return _HttpErrorEntity.fromJson(json);
}

/// @nodoc
mixin _$HttpErrorEntity {
  Object? get error => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalData =>
      throw _privateConstructorUsedError;

  /// Serializes this HttpErrorEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HttpErrorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpErrorEntityCopyWith<HttpErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpErrorEntityCopyWith<$Res> {
  factory $HttpErrorEntityCopyWith(
          HttpErrorEntity value, $Res Function(HttpErrorEntity) then) =
      _$HttpErrorEntityCopyWithImpl<$Res, HttpErrorEntity>;
  @useResult
  $Res call(
      {Object? error,
      @JsonKey(includeFromJson: false, includeToJson: false)
      StackTrace? stackTrace,
      DateTime? time,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class _$HttpErrorEntityCopyWithImpl<$Res, $Val extends HttpErrorEntity>
    implements $HttpErrorEntityCopyWith<$Res> {
  _$HttpErrorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpErrorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? time = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpErrorEntityImplCopyWith<$Res>
    implements $HttpErrorEntityCopyWith<$Res> {
  factory _$$HttpErrorEntityImplCopyWith(_$HttpErrorEntityImpl value,
          $Res Function(_$HttpErrorEntityImpl) then) =
      __$$HttpErrorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Object? error,
      @JsonKey(includeFromJson: false, includeToJson: false)
      StackTrace? stackTrace,
      DateTime? time,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class __$$HttpErrorEntityImplCopyWithImpl<$Res>
    extends _$HttpErrorEntityCopyWithImpl<$Res, _$HttpErrorEntityImpl>
    implements _$$HttpErrorEntityImplCopyWith<$Res> {
  __$$HttpErrorEntityImplCopyWithImpl(
      _$HttpErrorEntityImpl _value, $Res Function(_$HttpErrorEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpErrorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? time = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$HttpErrorEntityImpl(
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      additionalData: freezed == additionalData
          ? _value._additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HttpErrorEntityImpl extends _HttpErrorEntity {
  const _$HttpErrorEntityImpl(
      {this.error,
      @JsonKey(includeFromJson: false, includeToJson: false) this.stackTrace,
      this.time,
      final Map<String, dynamic>? additionalData})
      : _additionalData = additionalData,
        super._();

  factory _$HttpErrorEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpErrorEntityImplFromJson(json);

  @override
  final Object? error;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final StackTrace? stackTrace;
  @override
  final DateTime? time;
  final Map<String, dynamic>? _additionalData;
  @override
  Map<String, dynamic>? get additionalData {
    final value = _additionalData;
    if (value == null) return null;
    if (_additionalData is EqualUnmodifiableMapView) return _additionalData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HttpErrorEntity(error: $error, stackTrace: $stackTrace, time: $time, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpErrorEntityImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      stackTrace,
      time,
      const DeepCollectionEquality().hash(_additionalData));

  /// Create a copy of HttpErrorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpErrorEntityImplCopyWith<_$HttpErrorEntityImpl> get copyWith =>
      __$$HttpErrorEntityImplCopyWithImpl<_$HttpErrorEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpErrorEntityImplToJson(
      this,
    );
  }
}

abstract class _HttpErrorEntity extends HttpErrorEntity {
  const factory _HttpErrorEntity(
      {final Object? error,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final StackTrace? stackTrace,
      final DateTime? time,
      final Map<String, dynamic>? additionalData}) = _$HttpErrorEntityImpl;
  const _HttpErrorEntity._() : super._();

  factory _HttpErrorEntity.fromJson(Map<String, dynamic> json) =
      _$HttpErrorEntityImpl.fromJson;

  @override
  Object? get error;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  StackTrace? get stackTrace;
  @override
  DateTime? get time;
  @override
  Map<String, dynamic>? get additionalData;

  /// Create a copy of HttpErrorEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpErrorEntityImplCopyWith<_$HttpErrorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
