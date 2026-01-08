import 'dart:async';
import 'dart:collection';

import '../../domain/entities/log_event_entity.br.dart';
import 'log_data_source.dart';

/// Implementation of LogDataSource using Queue and StreamController
/// No Flutter dependencies - Pure Dart
class LogDataSourceImpl implements LogDataSource {
  final int maxEntries;

  final Queue<LogEventEntity> _logs = Queue();
  final StreamController<List<LogEventEntity>> _controller =
      StreamController<List<LogEventEntity>>.broadcast();

  LogDataSourceImpl({this.maxEntries = 1000});

  @override
  Stream<List<LogEventEntity>> get logsStream => _controller.stream;

  @override
  void addLog(LogEventEntity event) {
    _logs.add(event);
    _trimToMaxEntries();
    _emitUpdate();
  }

  @override
  void clear() {
    _logs.clear();
    _emitUpdate();
  }

  @override
  List<LogEventEntity> getLogs() {
    return _logs.toList();
  }

  @override
  void dispose() {
    _controller.close();
  }

  /// Trim queue to maxEntries (FIFO)
  void _trimToMaxEntries() {
    while (_logs.length > maxEntries) {
      _logs.removeFirst();
    }
  }

  /// Emit current state to stream
  void _emitUpdate() {
    if (!_controller.isClosed) {
      _controller.add(_logs.toList());
    }
  }
}
