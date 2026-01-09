import '../entities/http_interaction_entity.br.dart';
import '../repositories/http_log_repository.dart';

/// Use case pour récupérer une interaction HTTP par son ID
class GetHttpInteractionUseCase {
  final HttpLogRepository _repository;

  GetHttpInteractionUseCase(this._repository);

  HttpInteractionEntity? call(int id) {
    return _repository.getInteraction(id);
  }
}
