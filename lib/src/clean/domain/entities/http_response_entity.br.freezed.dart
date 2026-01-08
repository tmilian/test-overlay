// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_response_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HttpResponseEntity _$HttpResponseEntityFromJson(Map<String, dynamic> json) {
  return _HttpResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$HttpResponseEntity {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get statusMessage => throw _privateConstructorUsedError;
  Map<String, dynamic>? get headers => throw _privateConstructorUsedError;
  Object? get body => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalData =>
      throw _privateConstructorUsedError;

  /// Serializes this HttpResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HttpResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpResponseEntityCopyWith<HttpResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpResponseEntityCopyWith<$Res> {
  factory $HttpResponseEntityCopyWith(
          HttpResponseEntity value, $Res Function(HttpResponseEntity) then) =
      _$HttpResponseEntityCopyWithImpl<$Res, HttpResponseEntity>;
  @useResult
  $Res call(
      {int? statusCode,
      String? statusMessage,
      Map<String, dynamic>? headers,
      Object? body,
      DateTime? time,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class _$HttpResponseEntityCopyWithImpl<$Res, $Val extends HttpResponseEntity>
    implements $HttpResponseEntityCopyWith<$Res> {
  _$HttpResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
    Object? headers = freezed,
    Object? body = freezed,
    Object? time = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
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
abstract class _$$HttpResponseEntityImplCopyWith<$Res>
    implements $HttpResponseEntityCopyWith<$Res> {
  factory _$$HttpResponseEntityImplCopyWith(_$HttpResponseEntityImpl value,
          $Res Function(_$HttpResponseEntityImpl) then) =
      __$$HttpResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? statusCode,
      String? statusMessage,
      Map<String, dynamic>? headers,
      Object? body,
      DateTime? time,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class __$$HttpResponseEntityImplCopyWithImpl<$Res>
    extends _$HttpResponseEntityCopyWithImpl<$Res, _$HttpResponseEntityImpl>
    implements _$$HttpResponseEntityImplCopyWith<$Res> {
  __$$HttpResponseEntityImplCopyWithImpl(_$HttpResponseEntityImpl _value,
      $Res Function(_$HttpResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
    Object? headers = freezed,
    Object? body = freezed,
    Object? time = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$HttpResponseEntityImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
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
class _$HttpResponseEntityImpl implements _HttpResponseEntity {
  const _$HttpResponseEntityImpl(
      {this.statusCode,
      this.statusMessage,
      final Map<String, dynamic>? headers,
      this.body,
      this.time,
      final Map<String, dynamic>? additionalData})
      : _headers = headers,
        _additionalData = additionalData;

  factory _$HttpResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpResponseEntityImplFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? statusMessage;
  final Map<String, dynamic>? _headers;
  @override
  Map<String, dynamic>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
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
    return 'HttpResponseEntity(statusCode: $statusCode, statusMessage: $statusMessage, headers: $headers, body: $body, time: $time, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpResponseEntityImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      statusCode,
      statusMessage,
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(body),
      time,
      const DeepCollectionEquality().hash(_additionalData));

  /// Create a copy of HttpResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpResponseEntityImplCopyWith<_$HttpResponseEntityImpl> get copyWith =>
      __$$HttpResponseEntityImplCopyWithImpl<_$HttpResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _HttpResponseEntity implements HttpResponseEntity {
  const factory _HttpResponseEntity(
      {final int? statusCode,
      final String? statusMessage,
      final Map<String, dynamic>? headers,
      final Object? body,
      final DateTime? time,
      final Map<String, dynamic>? additionalData}) = _$HttpResponseEntityImpl;

  factory _HttpResponseEntity.fromJson(Map<String, dynamic> json) =
      _$HttpResponseEntityImpl.fromJson;

  @override
  int? get statusCode;
  @override
  String? get statusMessage;
  @override
  Map<String, dynamic>? get headers;
  @override
  Object? get body;
  @override
  DateTime? get time;
  @override
  Map<String, dynamic>? get additionalData;

  /// Create a copy of HttpResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpResponseEntityImplCopyWith<_$HttpResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
