import '../entities/http_interaction_entity.br.dart';
import '../repositories/http_log_repository.dart';

/// Use case pour récupérer la liste actuelle des interactions HTTP
class GetHttpInteractionsUseCase {
  final HttpLogRepository _repository;

  GetHttpInteractionsUseCase(this._repository);

  List<HttpInteractionEntity> call() {
    return _repository.getInteractions();
  }
}
