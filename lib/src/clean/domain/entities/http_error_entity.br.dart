import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_error_entity.br.freezed.dart';
part 'http_error_entity.br.g.dart';

/// Domain entity representing an HTTP error
/// No Flutter dependencies - Pure Dart
@freezed
class HttpErrorEntity with _$HttpErrorEntity {
  const factory HttpErrorEntity({
    Object? error,
    @JsonKey(includeFromJson: false, includeToJson: false) StackTrace? stackTrace,
    DateTime? time,
    Map<String, dynamic>? additionalData,
  }) = _HttpErrorEntity;

  const HttpErrorEntity._();

  /// Check if error contains meaningful data
  bool containsData() =>
      error != null || stackTrace != null || additionalData != null;

  factory HttpErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$HttpErrorEntityFromJson(json);
}
