import '../repositories/log_repository.dart';

/// Use case pour effacer tous les logs
class ClearLogsUseCase {
  final LogRepository _repository;

  ClearLogsUseCase(this._repository);

  void call() {
    _repository.clear();
  }
}
