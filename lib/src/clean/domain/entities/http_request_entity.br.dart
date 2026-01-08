import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_request_entity.br.freezed.dart';
part 'http_request_entity.br.g.dart';

/// Domain entity representing an HTTP request
/// No Flutter dependencies - Pure Dart
@freezed
class HttpRequestEntity with _$HttpRequestEntity {
  const factory HttpRequestEntity({
    Map<String, dynamic>? headers,
    Map<String, dynamic>? parameters,
    Object? body,
    DateTime? time,
    Map<String, dynamic>? additionalData,
  }) = _HttpRequestEntity;

  factory HttpRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$HttpRequestEntityFromJson(json);
}
