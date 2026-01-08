// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_interaction_entity.br.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HttpInteractionEntity _$HttpInteractionEntityFromJson(
    Map<String, dynamic> json) {
  return _HttpInteractionEntity.fromJson(json);
}

/// @nodoc
mixin _$HttpInteractionEntity {
  int get id => throw _privateConstructorUsedError;
  Uri? get uri => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  HttpRequestEntity? get request => throw _privateConstructorUsedError;
  HttpResponseEntity? get response => throw _privateConstructorUsedError;
  HttpErrorEntity? get error => throw _privateConstructorUsedError;

  /// Serializes this HttpInteractionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HttpInteractionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpInteractionEntityCopyWith<HttpInteractionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpInteractionEntityCopyWith<$Res> {
  factory $HttpInteractionEntityCopyWith(HttpInteractionEntity value,
          $Res Function(HttpInteractionEntity) then) =
      _$HttpInteractionEntityCopyWithImpl<$Res, HttpInteractionEntity>;
  @useResult
  $Res call(
      {int id,
      Uri? uri,
      String? method,
      HttpRequestEntity? request,
      HttpResponseEntity? response,
      HttpErrorEntity? error});

  $HttpRequestEntityCopyWith<$Res>? get request;
  $HttpResponseEntityCopyWith<$Res>? get response;
  $HttpErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$HttpInteractionEntityCopyWithImpl<$Res,
        $Val extends HttpInteractionEntity>
    implements $HttpInteractionEntityCopyWith<$Res> {
  _$HttpInteractionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpInteractionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uri = freezed,
    Object? method = freezed,
    Object? request = freezed,
    Object? response = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as HttpRequestEntity?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponseEntity?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HttpErrorEntity?,
    ) as $Val);
  }

  /// Create a copy of HttpInteractionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HttpRequestEntityCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $HttpRequestEntityCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }

  /// Create a copy of HttpInteractionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HttpResponseEntityCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $HttpResponseEntityCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }

  /// Create a copy of HttpInteractionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HttpErrorEntityCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $HttpErrorEntityCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HttpInteractionEntityImplCopyWith<$Res>
    implements $HttpInteractionEntityCopyWith<$Res> {
  factory _$$HttpInteractionEntityImplCopyWith(
          _$HttpInteractionEntityImpl value,
          $Res Function(_$HttpInteractionEntityImpl) then) =
      __$$HttpInteractionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Uri? uri,
      String? method,
      HttpRequestEntity? request,
      HttpResponseEntity? response,
      HttpErrorEntity? error});

  @override
  $HttpRequestEntityCopyWith<$Res>? get request;
  @override
  $HttpResponseEntityCopyWith<$Res>? get response;
  @override
  $HttpErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$HttpInteractionEntityImplCopyWithImpl<$Res>
    extends _$HttpInteractionEntityCopyWithImpl<$Res,
        _$HttpInteractionEntityImpl>
    implements _$$HttpInteractionEntityImplCopyWith<$Res> {
  __$$HttpInteractionEntityImplCopyWithImpl(_$HttpInteractionEntityImpl _value,
      $Res Function(_$HttpInteractionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpInteractionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uri = freezed,
    Object? method = freezed,
    Object? request = freezed,
    Object? response = freezed,
    Object? error = freezed,
  }) {
    return _then(_$HttpInteractionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as HttpRequestEntity?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponseEntity?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HttpErrorEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HttpInteractionEntityImpl extends _HttpInteractionEntity {
  const _$HttpInteractionEntityImpl(
      {required this.id,
      this.uri,
      this.method,
      this.request,
      this.response,
      this.error})
      : super._();

  factory _$HttpInteractionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpInteractionEntityImplFromJson(json);

  @override
  final int id;
  @override
  final Uri? uri;
  @override
  final String? method;
  @override
  final HttpRequestEntity? request;
  @override
  final HttpResponseEntity? response;
  @override
  final HttpErrorEntity? error;

  @override
  String toString() {
    return 'HttpInteractionEntity(id: $id, uri: $uri, method: $method, request: $request, response: $response, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpInteractionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, uri, method, request, response, error);

  /// Create a copy of HttpInteractionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpInteractionEntityImplCopyWith<_$HttpInteractionEntityImpl>
      get copyWith => __$$HttpInteractionEntityImplCopyWithImpl<
          _$HttpInteractionEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpInteractionEntityImplToJson(
      this,
    );
  }
}

abstract class _HttpInteractionEntity extends HttpInteractionEntity {
  const factory _HttpInteractionEntity(
      {required final int id,
      final Uri? uri,
      final String? method,
      final HttpRequestEntity? request,
      final HttpResponseEntity? response,
      final HttpErrorEntity? error}) = _$HttpInteractionEntityImpl;
  const _HttpInteractionEntity._() : super._();

  factory _HttpInteractionEntity.fromJson(Map<String, dynamic> json) =
      _$HttpInteractionEntityImpl.fromJson;

  @override
  int get id;
  @override
  Uri? get uri;
  @override
  String? get method;
  @override
  HttpRequestEntity? get request;
  @override
  HttpResponseEntity? get response;
  @override
  HttpErrorEntity? get error;

  /// Create a copy of HttpInteractionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpInteractionEntityImplCopyWith<_$HttpInteractionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
