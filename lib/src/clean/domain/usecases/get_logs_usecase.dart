import '../entities/log_event_entity.br.dart';
import '../repositories/log_repository.dart';

/// Use case pour récupérer la liste actuelle des logs
class GetLogsUseCase {
  final LogRepository _repository;

  GetLogsUseCase(this._repository);

  List<LogEventEntity> call() {
    return _repository.getLogs();
  }
}
