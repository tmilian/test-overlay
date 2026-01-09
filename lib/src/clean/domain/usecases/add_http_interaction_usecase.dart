import '../entities/http_interaction_entity.br.dart';
import '../repositories/http_log_repository.dart';

/// Use case pour ajouter une interaction HTTP
class AddHttpInteractionUseCase {
  final HttpLogRepository _repository;

  AddHttpInteractionUseCase(this._repository);

  void call(HttpInteractionEntity interaction) {
    _repository.addInteraction(interaction);
  }
}
