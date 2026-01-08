import '../../domain/entities/http_error_entity.br.dart';
import '../../domain/entities/http_interaction_entity.br.dart';
import '../../domain/entities/http_response_entity.br.dart';

/// Data source interface for HTTP log interactions
/// No Flutter dependencies - Pure Dart
abstract class HttpLogDataSource {
  /// Stream of all HTTP interactions (reactive)
  Stream<List<HttpInteractionEntity>> get interactionsStream;

  /// Add a new HTTP interaction
  void addInteraction(HttpInteractionEntity interaction);

  /// Update an existing interaction with response
  /// Returns true if interaction was found and updated
  bool updateInteractionWithResponse(int id, HttpResponseEntity response);

  /// Update an existing interaction with error
  /// Returns true if interaction was found and updated
  bool updateInteractionWithError(int id, HttpErrorEntity error);

  /// Get a specific interaction by ID
  /// Returns null if not found
  HttpInteractionEntity? getInteraction(int id);

  /// Clear all interactions
  void clear();

  /// Get current snapshot of interactions
  List<HttpInteractionEntity> getInteractions();

  /// Dispose resources (close streams)
  void dispose();
}
