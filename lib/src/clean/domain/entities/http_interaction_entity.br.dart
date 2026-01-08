import 'package:freezed_annotation/freezed_annotation.dart';

import 'http_error_entity.br.dart';
import 'http_request_entity.br.dart';
import 'http_response_entity.br.dart';

part 'http_interaction_entity.br.freezed.dart';
part 'http_interaction_entity.br.g.dart';

/// Domain entity representing an HTTP interaction (request + response/error)
/// No Flutter dependencies - Pure Dart
@freezed
class HttpInteractionEntity with _$HttpInteractionEntity {
  const factory HttpInteractionEntity({
    required int id,
    Uri? uri,
    String? method,
    HttpRequestEntity? request,
    HttpResponseEntity? response,
    HttpErrorEntity? error,
  }) = _HttpInteractionEntity;

  const HttpInteractionEntity._();

  /// Computed property: duration between request and response
  /// Pure dart computation - no Flutter dependencies
  Duration? get duration =>
      request?.time != null && responseTime != null
          ? responseTime!.difference(request!.time!)
          : null;

  /// Computed property: time when response or error was received
  DateTime? get responseTime => response?.time ?? error?.time;

  /// Semantic color category for HTTP status codes
  /// Returns enum instead of MaterialColor (no Flutter dependency)
  HttpStatusColorCategory get statusColorCategory =>
      _calculateStatusColorCategory(response?.statusCode);

  /// Semantic color category for response duration
  /// Returns enum instead of MaterialColor (no Flutter dependency)
  HttpDurationColorCategory get durationColorCategory =>
      _calculateDurationColorCategory(duration);

  static HttpStatusColorCategory _calculateStatusColorCategory(
      int? statusCode) {
    if (statusCode == null) return HttpStatusColorCategory.grey;
    if (statusCode < 200) return HttpStatusColorCategory.blue;
    if (statusCode < 300) return HttpStatusColorCategory.green;
    if (statusCode < 400) return HttpStatusColorCategory.blue;
    if (statusCode < 500) return HttpStatusColorCategory.orange;
    return HttpStatusColorCategory.red;
  }

  static HttpDurationColorCategory _calculateDurationColorCategory(
      Duration? duration) {
    if (duration == null) return HttpDurationColorCategory.grey;
    if (duration.inMilliseconds < 150) {
      return HttpDurationColorCategory.green;
    }
    if (duration.inMilliseconds < 500) {
      return HttpDurationColorCategory.orange;
    }
    return HttpDurationColorCategory.red;
  }

  factory HttpInteractionEntity.fromJson(Map<String, dynamic> json) =>
      _$HttpInteractionEntityFromJson(json);
}

/// Semantic color categories for HTTP status codes
/// Pure domain enum - no Flutter MaterialColor dependency
enum HttpStatusColorCategory {
  grey,
  blue,
  green,
  orange,
  red,
}

/// Semantic color categories for HTTP response duration
/// Pure domain enum - no Flutter MaterialColor dependency
enum HttpDurationColorCategory {
  grey,
  green,
  orange,
  red,
}
