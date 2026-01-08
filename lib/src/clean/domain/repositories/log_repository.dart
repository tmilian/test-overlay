import '../entities/log_event_entity.br.dart';

/// Repository interface for log events
/// No Flutter dependencies - Pure Dart
abstract class LogRepository {
  /// Stream of all log events (reactive)
  /// Emits a new list whenever logs are added or cleared
  Stream<List<LogEventEntity>> watchLogs();

  /// Add a new log event
  void addLog(LogEventEntity event);

  /// Clear all logs
  void clear();

  /// Get current snapshot of logs
  /// Use this for one-time queries; prefer watchLogs() for reactive updates
  List<LogEventEntity> getLogs();
}
