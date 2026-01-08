import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_response_entity.br.freezed.dart';
part 'http_response_entity.br.g.dart';

/// Domain entity representing an HTTP response
/// No Flutter dependencies - Pure Dart
@freezed
class HttpResponseEntity with _$HttpResponseEntity {
  const factory HttpResponseEntity({
    int? statusCode,
    String? statusMessage,
    Map<String, dynamic>? headers,
    Object? body,
    DateTime? time,
    Map<String, dynamic>? additionalData,
  }) = _HttpResponseEntity;

  factory HttpResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$HttpResponseEntityFromJson(json);
}
