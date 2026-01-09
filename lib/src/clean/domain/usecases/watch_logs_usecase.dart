import '../entities/log_event_entity.br.dart';
import '../repositories/log_repository.dart';

/// Use case pour observer les logs via un stream
class WatchLogsUseCase {
  final LogRepository _repository;

  WatchLogsUseCase(this._repository);

  Stream<List<LogEventEntity>> call() {
    return _repository.watchLogs();
  }
}
