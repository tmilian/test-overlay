import 'package:flutter_debug_overlay/src/clean/data/datasources/http_log_data_source.dart';
import 'package:flutter_debug_overlay/src/clean/data/repositories/http_log_repository_impl.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_error_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_interaction_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_response_entity.br.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpLogDataSource extends Mock implements HttpLogDataSource {}

void main() {
  group('HttpLogRepositoryImpl', () {
    late MockHttpLogDataSource mockDataSource;
    late HttpLogRepositoryImpl repository;

    setUpAll(() {
      registerFallbackValue(const HttpInteractionEntity(id: 0));
      registerFallbackValue(const HttpResponseEntity());
      registerFallbackValue(const HttpErrorEntity());
    });

    setUp(() {
      mockDataSource = MockHttpLogDataSource();
      repository = HttpLogRepositoryImpl(mockDataSource);
    });

    test('should delegate watchInteractions to data source', () {
      final stream = Stream.value([
        const HttpInteractionEntity(id: 1, method: 'GET'),
      ]);
      when(() => mockDataSource.interactionsStream).thenAnswer((_) => stream);

      final result = repository.watchInteractions();

      expect(result, stream);
      verify(() => mockDataSource.interactionsStream).called(1);
    });

    test('should delegate addInteraction to data source', () {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');
      when(() => mockDataSource.addInteraction(any())).thenReturn(null);

      repository.addInteraction(interaction);

      verify(() => mockDataSource.addInteraction(interaction)).called(1);
    });

    test('should delegate addResponse to data source', () {
      const response = HttpResponseEntity(statusCode: 200);
      when(() => mockDataSource.updateInteractionWithResponse(any(), any()))
          .thenReturn(true);

      final result = repository.addResponse(1, response);

      expect(result, isTrue);
      verify(() => mockDataSource.updateInteractionWithResponse(1, response))
          .called(1);
    });

    test('should delegate addError to data source', () {
      final error = HttpErrorEntity(error: Exception('Network error'));
      when(() => mockDataSource.updateInteractionWithError(any(), any()))
          .thenReturn(true);

      final result = repository.addError(1, error);

      expect(result, isTrue);
      verify(() => mockDataSource.updateInteractionWithError(1, error))
          .called(1);
    });

    test('should delegate getInteraction to data source', () {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');
      when(() => mockDataSource.getInteraction(any())).thenReturn(interaction);

      final result = repository.getInteraction(1);

      expect(result, interaction);
      verify(() => mockDataSource.getInteraction(1)).called(1);
    });

    test('should delegate clear to data source', () {
      when(() => mockDataSource.clear()).thenReturn(null);

      repository.clear();

      verify(() => mockDataSource.clear()).called(1);
    });

    test('should delegate getInteractions to data source', () {
      const interactions = [
        HttpInteractionEntity(id: 1, method: 'GET'),
        HttpInteractionEntity(id: 2, method: 'POST'),
      ];
      when(() => mockDataSource.getInteractions()).thenReturn(interactions);

      final result = repository.getInteractions();

      expect(result, interactions);
      verify(() => mockDataSource.getInteractions()).called(1);
    });

    test('should return false when addResponse fails', () {
      const response = HttpResponseEntity(statusCode: 404);
      when(() => mockDataSource.updateInteractionWithResponse(any(), any()))
          .thenReturn(false);

      final result = repository.addResponse(999, response);

      expect(result, isFalse);
    });

    test('should return false when addError fails', () {
      final error = HttpErrorEntity(error: Exception('Error'));
      when(() => mockDataSource.updateInteractionWithError(any(), any()))
          .thenReturn(false);

      final result = repository.addError(999, error);

      expect(result, isFalse);
    });

    test('should return null when getInteraction not found', () {
      when(() => mockDataSource.getInteraction(any())).thenReturn(null);

      final result = repository.getInteraction(999);

      expect(result, isNull);
    });
  });
}
