import '../../domain/entities/log_event_entity.br.dart';
import '../../domain/repositories/log_repository.dart';
import '../datasources/log_data_source.dart';

/// Implementation of LogRepository that delegates to LogDataSource
/// No Flutter dependencies - Pure Dart
class LogRepositoryImpl implements LogRepository {
  final LogDataSource _dataSource;

  LogRepositoryImpl(this._dataSource);

  @override
  Stream<List<LogEventEntity>> watchLogs() {
    return _dataSource.logsStream;
  }

  @override
  void addLog(LogEventEntity event) {
    _dataSource.addLog(event);
  }

  @override
  void clear() {
    _dataSource.clear();
  }

  @override
  List<LogEventEntity> getLogs() {
    return _dataSource.getLogs();
  }
}
