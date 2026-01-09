import '../entities/http_interaction_entity.br.dart';
import '../repositories/http_log_repository.dart';

/// Use case pour observer les interactions HTTP via un stream
class WatchHttpInteractionsUseCase {
  final HttpLogRepository _repository;

  WatchHttpInteractionsUseCase(this._repository);

  Stream<List<HttpInteractionEntity>> call() {
    return _repository.watchInteractions();
  }
}
