import '../../domain/entities/http_error_entity.br.dart';
import '../../domain/entities/http_interaction_entity.br.dart';
import '../../domain/entities/http_response_entity.br.dart';
import '../../domain/repositories/http_log_repository.dart';
import '../datasources/http_log_data_source.dart';

/// Implementation of HttpLogRepository that delegates to HttpLogDataSource
/// No Flutter dependencies - Pure Dart
class HttpLogRepositoryImpl implements HttpLogRepository {
  final HttpLogDataSource _dataSource;

  HttpLogRepositoryImpl(this._dataSource);

  @override
  Stream<List<HttpInteractionEntity>> watchInteractions() {
    return _dataSource.interactionsStream;
  }

  @override
  void addInteraction(HttpInteractionEntity interaction) {
    _dataSource.addInteraction(interaction);
  }

  @override
  bool addResponse(int id, HttpResponseEntity response) {
    return _dataSource.updateInteractionWithResponse(id, response);
  }

  @override
  bool addError(int id, HttpErrorEntity error) {
    return _dataSource.updateInteractionWithError(id, error);
  }

  @override
  HttpInteractionEntity? getInteraction(int id) {
    return _dataSource.getInteraction(id);
  }

  @override
  void clear() {
    _dataSource.clear();
  }

  @override
  List<HttpInteractionEntity> getInteractions() {
    return _dataSource.getInteractions();
  }
}
