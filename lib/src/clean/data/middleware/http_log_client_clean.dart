import 'dart:async';

import 'package:http/http.dart' as http;

import '../../domain/entities/http_error_entity.br.dart';
import '../../domain/entities/http_interaction_entity.br.dart';
import '../../domain/entities/http_request_entity.br.dart';
import '../../domain/entities/http_response_entity.br.dart';
import '../../domain/repositories/http_log_repository.dart';

/// Clean Architecture HTTP Client that logs all requests/responses
/// Wraps the standard http.Client and delegates to HttpLogRepository
class HttpLogClientClean extends http.BaseClient {
  final http.Client _inner;
  final HttpLogRepository _repository;
  int _idCounter = 0;

  HttpLogClientClean(
    this._inner,
    this._repository,
  );

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final id = _idCounter++;
    final requestTime = DateTime.now();

    // Log request
    final interaction = HttpInteractionEntity(
      id: id,
      uri: request.url,
      method: request.method,
      request: HttpRequestEntity(
        headers: request.headers,
        time: requestTime,
      ),
    );
    _repository.addInteraction(interaction);

    try {
      // Send request
      final response = await _inner.send(request);
      final responseTime = DateTime.now();

      // Read response body
      final bytes = await response.stream.toBytes();
      final bodyString = String.fromCharCodes(bytes);

      // Log response
      _repository.addResponse(
        id,
        HttpResponseEntity(
          statusCode: response.statusCode,
          headers: response.headers,
          body: bodyString,
          time: responseTime,
        ),
      );

      // Return new response with same data
      return http.StreamedResponse(
        http.ByteStream.fromBytes(bytes),
        response.statusCode,
        contentLength: response.contentLength,
        request: response.request,
        headers: response.headers,
        isRedirect: response.isRedirect,
        persistentConnection: response.persistentConnection,
        reasonPhrase: response.reasonPhrase,
      );
    } catch (error, stackTrace) {
      // Log error
      _repository.addError(
        id,
        HttpErrorEntity(
          error: error,
          stackTrace: stackTrace,
          time: DateTime.now(),
        ),
      );
      rethrow;
    }
  }
}
