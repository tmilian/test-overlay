import '../entities/http_error_entity.br.dart';
import '../entities/http_interaction_entity.br.dart';
import '../entities/http_response_entity.br.dart';

/// Repository interface for HTTP log interactions
/// No Flutter dependencies - Pure Dart
abstract class HttpLogRepository {
  /// Stream of all HTTP interactions (reactive)
  /// Emits a new list whenever interactions are added, updated, or cleared
  Stream<List<HttpInteractionEntity>> watchInteractions();

  /// Add a new HTTP interaction
  void addInteraction(HttpInteractionEntity interaction);

  /// Update an existing interaction with response
  /// Returns true if interaction was found and updated
  bool addResponse(int id, HttpResponseEntity response);

  /// Update an existing interaction with error
  /// Returns true if interaction was found and updated
  bool addError(int id, HttpErrorEntity error);

  /// Get a specific interaction by ID
  /// Returns null if not found
  HttpInteractionEntity? getInteraction(int id);

  /// Clear all interactions
  void clear();

  /// Get current snapshot of interactions
  /// Use this for one-time queries; prefer watchInteractions() for reactive updates
  List<HttpInteractionEntity> getInteractions();
}
