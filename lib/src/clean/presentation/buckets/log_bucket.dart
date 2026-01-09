import '../../data/datasources/log_data_source_impl.dart';
import '../../data/repositories/log_repository_impl.dart';
import '../../domain/entities/log_event_entity.br.dart';
import '../../domain/usecases/add_log_usecase.dart';
import '../../domain/usecases/clear_logs_usecase.dart';
import '../../domain/usecases/get_logs_usecase.dart';
import '../../domain/usecases/watch_logs_usecase.dart';

/// Simple façade pour maintenir l'API publique identique
/// Ne maintient AUCUN état - juste un wrapper autour des use cases
class LogBucket {
  // Use cases injectés
  final AddLogUseCase _addLogUseCase;
  final GetLogsUseCase _getLogsUseCase;
  final WatchLogsUseCase _watchLogsUseCase;
  final ClearLogsUseCase _clearLogsUseCase;

  // Factory par défaut - crée tout le stack en interne
  factory LogBucket({int? maxStoredEntries, bool? allowDuplicates}) {
    // 1. Crée data source
    final dataSource = LogDataSourceImpl(
      maxEntries: maxStoredEntries ?? 1000,
    );

    // 2. Crée repository
    final repository = LogRepositoryImpl(dataSource);

    // 3. Crée use cases
    final addLog = AddLogUseCase(repository);
    final getLogs = GetLogsUseCase(repository);
    final watchLogs = WatchLogsUseCase(repository);
    final clearLogs = ClearLogsUseCase(repository);

    // 4. Crée bucket avec use cases
    return LogBucket._internal(
      addLog: addLog,
      getLogs: getLogs,
      watchLogs: watchLogs,
      clearLogs: clearLogs,
    );
  }

  // Constructeur privé avec injection
  LogBucket._internal({
    required AddLogUseCase addLog,
    required GetLogsUseCase getLogs,
    required WatchLogsUseCase watchLogs,
    required ClearLogsUseCase clearLogs,
  })  : _addLogUseCase = addLog,
        _getLogsUseCase = getLogs,
        _watchLogsUseCase = watchLogs,
        _clearLogsUseCase = clearLogs;

  // API publique - simplement délègue aux use cases
  void add(LogEventEntity log) {
    _addLogUseCase(log);
  }

  List<LogEventEntity> get entries {
    return _getLogsUseCase();
  }

  Stream<List<LogEventEntity>> watchLogs() {
    return _watchLogsUseCase();
  }

  void clear() {
    _clearLogsUseCase();
  }
}
