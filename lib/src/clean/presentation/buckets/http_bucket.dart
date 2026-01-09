import '../../data/datasources/http_log_data_source_impl.dart';
import '../../data/repositories/http_log_repository_impl.dart';
import '../../domain/entities/http_error_entity.br.dart';
import '../../domain/entities/http_interaction_entity.br.dart';
import '../../domain/entities/http_response_entity.br.dart';
import '../../domain/usecases/add_http_error_usecase.dart';
import '../../domain/usecases/add_http_interaction_usecase.dart';
import '../../domain/usecases/add_http_response_usecase.dart';
import '../../domain/usecases/clear_http_interactions_usecase.dart';
import '../../domain/usecases/get_http_interaction_usecase.dart';
import '../../domain/usecases/get_http_interactions_usecase.dart';
import '../../domain/usecases/watch_http_interactions_usecase.dart';

/// Simple façade pour maintenir l'API publique identique
/// Ne maintient AUCUN état - juste un wrapper autour des use cases
class HttpBucket {
  // Use cases injectés
  final AddHttpInteractionUseCase _addInteractionUseCase;
  final AddHttpResponseUseCase _addResponseUseCase;
  final AddHttpErrorUseCase _addErrorUseCase;
  final GetHttpInteractionUseCase _getHttpInteractionUseCase;
  final GetHttpInteractionsUseCase _getHttpInteractionsUseCase;
  final WatchHttpInteractionsUseCase _watchInteractionsUseCase;
  final ClearHttpInteractionsUseCase _clearInteractionsUseCase;

  // Factory par défaut - crée tout le stack en interne
  factory HttpBucket({int? maxStoredEntries, bool? allowDuplicates}) {
    // 1. Crée data source
    final dataSource = HttpLogDataSourceImpl(
      maxEntries: maxStoredEntries ?? 1000,
    );

    // 2. Crée repository
    final repository = HttpLogRepositoryImpl(dataSource);

    // 3. Crée use cases
    final addInteraction = AddHttpInteractionUseCase(repository);
    final addResponse = AddHttpResponseUseCase(repository);
    final addError = AddHttpErrorUseCase(repository);
    final getInteraction = GetHttpInteractionUseCase(repository);
    final getInteractions = GetHttpInteractionsUseCase(repository);
    final watchInteractions = WatchHttpInteractionsUseCase(repository);
    final clearInteractions = ClearHttpInteractionsUseCase(repository);

    // 4. Crée bucket avec use cases
    return HttpBucket._internal(
      addInteraction: addInteraction,
      addResponse: addResponse,
      addError: addError,
      getInteraction: getInteraction,
      getInteractions: getInteractions,
      watchInteractions: watchInteractions,
      clearInteractions: clearInteractions,
    );
  }

  // Constructeur privé avec injection
  HttpBucket._internal({
    required AddHttpInteractionUseCase addInteraction,
    required AddHttpResponseUseCase addResponse,
    required AddHttpErrorUseCase addError,
    required GetHttpInteractionUseCase getInteraction,
    required GetHttpInteractionsUseCase getInteractions,
    required WatchHttpInteractionsUseCase watchInteractions,
    required ClearHttpInteractionsUseCase clearInteractions,
  })  : _addInteractionUseCase = addInteraction,
        _addResponseUseCase = addResponse,
        _addErrorUseCase = addError,
        _getHttpInteractionUseCase = getInteraction,
        _getHttpInteractionsUseCase = getInteractions,
        _watchInteractionsUseCase = watchInteractions,
        _clearInteractionsUseCase = clearInteractions;

  // API publique - simplement délègue aux use cases
  void add(HttpInteractionEntity interaction) {
    _addInteractionUseCase(interaction);
  }

  bool addResponse(int id, HttpResponseEntity response) {
    return _addResponseUseCase(id, response);
  }

  bool addError(int id, HttpErrorEntity error) {
    return _addErrorUseCase(id, error);
  }

  HttpInteractionEntity? getHttpInteraction(int id) {
    return _getHttpInteractionUseCase(id);
  }

  List<HttpInteractionEntity> get entries {
    return _getHttpInteractionsUseCase();
  }

  Stream<List<HttpInteractionEntity>> watchInteractions() {
    return _watchInteractionsUseCase();
  }

  void clear() {
    _clearInteractionsUseCase();
  }
}
