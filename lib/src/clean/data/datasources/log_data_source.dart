import '../../domain/entities/log_event_entity.br.dart';

/// Data source interface for log events
/// No Flutter dependencies - Pure Dart
abstract class LogDataSource {
  /// Stream of all log events (reactive)
  Stream<List<LogEventEntity>> get logsStream;

  /// Add a new log event
  void addLog(LogEventEntity event);

  /// Clear all logs
  void clear();

  /// Get current snapshot of logs
  List<LogEventEntity> getLogs();

  /// Dispose resources (close streams)
  void dispose();
}
