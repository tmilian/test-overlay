import '../entities/http_error_entity.br.dart';
import '../repositories/http_log_repository.dart';

/// Use case pour ajouter une erreur à une interaction HTTP
class AddHttpErrorUseCase {
  final HttpLogRepository _repository;

  AddHttpErrorUseCase(this._repository);

  bool call(int id, HttpErrorEntity error) {
    return _repository.addError(id, error);
  }
}
