import '../entities/log_event_entity.br.dart';
import '../repositories/log_repository.dart';

/// Use case pour ajouter un log
class AddLogUseCase {
  final LogRepository _repository;

  AddLogUseCase(this._repository);

  void call(LogEventEntity log) {
    _repository.addLog(log);
  }
}
