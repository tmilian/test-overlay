import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_event_entity.br.freezed.dart';
part 'log_event_entity.br.g.dart';

/// Log level enum
/// No Flutter dependencies - Pure Dart
enum LogLevel {
  all(0),
  trace(1000),
  debug(2000),
  info(3000),
  warning(4000),
  error(5000),
  fatal(6000),
  off(10000);

  final int value;
  const LogLevel(this.value);
}

/// Domain entity representing a log event
/// No Flutter dependencies - Pure Dart
@freezed
class LogEventEntity with _$LogEventEntity {
  const factory LogEventEntity({
    required LogLevel level,
    required dynamic message,
    required DateTime time,
    Object? error,
    @JsonKey(includeFromJson: false, includeToJson: false) StackTrace? stackTrace,
  }) = _LogEventEntity;

  const LogEventEntity._();

  /// Semantic color category for log level
  /// Returns enum instead of MaterialColor (no Flutter dependency)
  LogLevelColorCategory get levelColorCategory =>
      _calculateLevelColorCategory(level);

  static LogLevelColorCategory _calculateLevelColorCategory(LogLevel level) {
    switch (level) {
      case LogLevel.fatal:
        return LogLevelColorCategory.pink;
      case LogLevel.error:
        return LogLevelColorCategory.red;
      case LogLevel.warning:
        return LogLevelColorCategory.orange;
      case LogLevel.info:
        return LogLevelColorCategory.blue;
      case LogLevel.debug:
        return LogLevelColorCategory.blueGrey;
      case LogLevel.trace:
        return LogLevelColorCategory.grey;
      default:
        return LogLevelColorCategory.grey;
    }
  }

  factory LogEventEntity.fromJson(Map<String, dynamic> json) =>
      _$LogEventEntityFromJson(json);
}

/// Semantic color categories for log levels
/// Pure domain enum - no Flutter MaterialColor dependency
enum LogLevelColorCategory {
  pink,
  red,
  orange,
  blue,
  blueGrey,
  grey,
}
