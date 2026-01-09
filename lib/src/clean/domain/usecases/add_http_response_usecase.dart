import '../entities/http_response_entity.br.dart';
import '../repositories/http_log_repository.dart';

/// Use case pour ajouter une réponse à une interaction HTTP
class AddHttpResponseUseCase {
  final HttpLogRepository _repository;

  AddHttpResponseUseCase(this._repository);

  bool call(int id, HttpResponseEntity response) {
    return _repository.addResponse(id, response);
  }
}
