import 'dart:async';
import 'dart:collection';

import '../../domain/entities/http_error_entity.br.dart';
import '../../domain/entities/http_interaction_entity.br.dart';
import '../../domain/entities/http_response_entity.br.dart';
import 'http_log_data_source.dart';

/// Implementation of HttpLogDataSource using Queue and StreamController
/// No Flutter dependencies - Pure Dart
class HttpLogDataSourceImpl implements HttpLogDataSource {
  final int maxEntries;

  final Queue<HttpInteractionEntity> _interactions = Queue();
  final StreamController<List<HttpInteractionEntity>> _controller =
      StreamController<List<HttpInteractionEntity>>.broadcast();

  HttpLogDataSourceImpl({this.maxEntries = 1000});

  @override
  Stream<List<HttpInteractionEntity>> get interactionsStream =>
      _controller.stream;

  @override
  void addInteraction(HttpInteractionEntity interaction) {
    _interactions.add(interaction);
    _trimToMaxEntries();
    _emitUpdate();
  }

  @override
  bool updateInteractionWithResponse(int id, HttpResponseEntity response) {
    final index = _interactions.toList().indexWhere((i) => i.id == id);
    if (index == -1) return false;

    final list = _interactions.toList();
    final updated = list[index].copyWith(response: response);
    list[index] = updated;

    _interactions.clear();
    _interactions.addAll(list);
    _emitUpdate();
    return true;
  }

  @override
  bool updateInteractionWithError(int id, HttpErrorEntity error) {
    final index = _interactions.toList().indexWhere((i) => i.id == id);
    if (index == -1) return false;

    final list = _interactions.toList();
    final updated = list[index].copyWith(error: error);
    list[index] = updated;

    _interactions.clear();
    _interactions.addAll(list);
    _emitUpdate();
    return true;
  }

  @override
  HttpInteractionEntity? getInteraction(int id) {
    try {
      return _interactions.firstWhere((i) => i.id == id);
    } catch (_) {
      return null;
    }
  }

  @override
  void clear() {
    _interactions.clear();
    _emitUpdate();
  }

  @override
  List<HttpInteractionEntity> getInteractions() {
    return _interactions.toList();
  }

  @override
  void dispose() {
    _controller.close();
  }

  /// Trim queue to maxEntries (FIFO)
  void _trimToMaxEntries() {
    while (_interactions.length > maxEntries) {
      _interactions.removeFirst();
    }
  }

  /// Emit current state to stream
  void _emitUpdate() {
    if (!_controller.isClosed) {
      _controller.add(_interactions.toList());
    }
  }
}
