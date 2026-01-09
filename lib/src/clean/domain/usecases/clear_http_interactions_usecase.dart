import '../repositories/http_log_repository.dart';

/// Use case pour effacer toutes les interactions HTTP
class ClearHttpInteractionsUseCase {
  final HttpLogRepository _repository;

  ClearHttpInteractionsUseCase(this._repository);

  void call() {
    _repository.clear();
  }
}
