// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_request_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HttpRequestEntity _$HttpRequestEntityFromJson(Map<String, dynamic> json) {
  return _HttpRequestEntity.fromJson(json);
}

/// @nodoc
mixin _$HttpRequestEntity {
  Map<String, dynamic>? get headers => throw _privateConstructorUsedError;
  Map<String, dynamic>? get parameters => throw _privateConstructorUsedError;
  Object? get body => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalData =>
      throw _privateConstructorUsedError;

  /// Serializes this HttpRequestEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HttpRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpRequestEntityCopyWith<HttpRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpRequestEntityCopyWith<$Res> {
  factory $HttpRequestEntityCopyWith(
          HttpRequestEntity value, $Res Function(HttpRequestEntity) then) =
      _$HttpRequestEntityCopyWithImpl<$Res, HttpRequestEntity>;
  @useResult
  $Res call(
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? parameters,
      Object? body,
      DateTime? time,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class _$HttpRequestEntityCopyWithImpl<$Res, $Val extends HttpRequestEntity>
    implements $HttpRequestEntityCopyWith<$Res> {
  _$HttpRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? parameters = freezed,
    Object? body = freezed,
    Object? time = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      body: freezed == body ? _value.body : body,
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
abstract class _$$HttpRequestEntityImplCopyWith<$Res>
    implements $HttpRequestEntityCopyWith<$Res> {
  factory _$$HttpRequestEntityImplCopyWith(_$HttpRequestEntityImpl value,
          $Res Function(_$HttpRequestEntityImpl) then) =
      __$$HttpRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? parameters,
      Object? body,
      DateTime? time,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class __$$HttpRequestEntityImplCopyWithImpl<$Res>
    extends _$HttpRequestEntityCopyWithImpl<$Res, _$HttpRequestEntityImpl>
    implements _$$HttpRequestEntityImplCopyWith<$Res> {
  __$$HttpRequestEntityImplCopyWithImpl(_$HttpRequestEntityImpl _value,
      $Res Function(_$HttpRequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? parameters = freezed,
    Object? body = freezed,
    Object? time = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$HttpRequestEntityImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      body: freezed == body ? _value.body : body,
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
class _$HttpRequestEntityImpl implements _HttpRequestEntity {
  const _$HttpRequestEntityImpl(
      {final Map<String, dynamic>? headers,
      final Map<String, dynamic>? parameters,
      this.body,
      this.time,
      final Map<String, dynamic>? additionalData})
      : _headers = headers,
        _parameters = parameters,
        _additionalData = additionalData;

  factory _$HttpRequestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpRequestEntityImplFromJson(json);

  final Map<String, dynamic>? _headers;
  @override
  Map<String, dynamic>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _parameters;
  @override
  Map<String, dynamic>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Object? body;
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
    return 'HttpRequestEntity(headers: $headers, parameters: $parameters, body: $body, time: $time, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestEntityImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(body),
      time,
      const DeepCollectionEquality().hash(_additionalData));

  /// Create a copy of HttpRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpRequestEntityImplCopyWith<_$HttpRequestEntityImpl> get copyWith =>
      __$$HttpRequestEntityImplCopyWithImpl<_$HttpRequestEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpRequestEntityImplToJson(
      this,
    );
  }
}

abstract class _HttpRequestEntity implements HttpRequestEntity {
  const factory _HttpRequestEntity(
      {final Map<String, dynamic>? headers,
      final Map<String, dynamic>? parameters,
      final Object? body,
      final DateTime? time,
      final Map<String, dynamic>? additionalData}) = _$HttpRequestEntityImpl;

  factory _HttpRequestEntity.fromJson(Map<String, dynamic> json) =
      _$HttpRequestEntityImpl.fromJson;

  @override
  Map<String, dynamic>? get headers;
  @override
  Map<String, dynamic>? get parameters;
  @override
  Object? get body;
  @override
  DateTime? get time;
  @override
  Map<String, dynamic>? get additionalData;

  /// Create a copy of HttpRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpRequestEntityImplCopyWith<_$HttpRequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
