import 'package:flutter_debug_overlay/src/clean/data/datasources/http_log_data_source_impl.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_error_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_interaction_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_response_entity.br.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HttpLogDataSourceImpl', () {
    late HttpLogDataSourceImpl dataSource;

    setUp(() {
      dataSource = HttpLogDataSourceImpl(maxEntries: 3);
    });

    tearDown(() {
      dataSource.dispose();
    });

    test('should start with empty interactions', () {
      expect(dataSource.getInteractions(), isEmpty);
    });

    test('should add interaction', () {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');
      dataSource.addInteraction(interaction);

      final interactions = dataSource.getInteractions();
      expect(interactions, hasLength(1));
      expect(interactions.first.id, 1);
    });

    test('should emit update on interactions stream when adding', () async {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');

      expectLater(
        dataSource.interactionsStream,
        emitsInOrder([
          [interaction],
        ]),
      );

      dataSource.addInteraction(interaction);
    });

    test('should update interaction with response', () {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');
      const response = HttpResponseEntity(statusCode: 200);

      dataSource.addInteraction(interaction);
      final updated = dataSource.updateInteractionWithResponse(1, response);

      expect(updated, isTrue);
      final result = dataSource.getInteraction(1);
      expect(result?.response, response);
    });

    test('should return false when updating non-existent interaction', () {
      const response = HttpResponseEntity(statusCode: 200);
      final updated = dataSource.updateInteractionWithResponse(999, response);

      expect(updated, isFalse);
    });

    test('should update interaction with error', () {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');
      final error = HttpErrorEntity(error: Exception('Network error'));

      dataSource.addInteraction(interaction);
      final updated = dataSource.updateInteractionWithError(1, error);

      expect(updated, isTrue);
      final result = dataSource.getInteraction(1);
      expect(result?.error, error);
    });

    test('should emit update on stream when updating with response', () async {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');
      const response = HttpResponseEntity(statusCode: 200);

      expectLater(
        dataSource.interactionsStream,
        emitsInOrder([
          [interaction],
          [interaction.copyWith(response: response)],
        ]),
      );

      dataSource.addInteraction(interaction);
      await Future.delayed(const Duration(milliseconds: 10));
      dataSource.updateInteractionWithResponse(1, response);
    });

    test('should get interaction by id', () {
      const interaction1 = HttpInteractionEntity(id: 1, method: 'GET');
      const interaction2 = HttpInteractionEntity(id: 2, method: 'POST');

      dataSource.addInteraction(interaction1);
      dataSource.addInteraction(interaction2);

      final result = dataSource.getInteraction(2);
      expect(result?.id, 2);
      expect(result?.method, 'POST');
    });

    test('should return null when interaction not found', () {
      final result = dataSource.getInteraction(999);
      expect(result, isNull);
    });

    test('should clear all interactions', () {
      const interaction1 = HttpInteractionEntity(id: 1, method: 'GET');
      const interaction2 = HttpInteractionEntity(id: 2, method: 'POST');

      dataSource.addInteraction(interaction1);
      dataSource.addInteraction(interaction2);

      expect(dataSource.getInteractions(), hasLength(2));

      dataSource.clear();

      expect(dataSource.getInteractions(), isEmpty);
    });

    test('should emit empty list on stream when clearing', () async {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');

      expectLater(
        dataSource.interactionsStream,
        emitsInOrder([
          [interaction],
          [],
        ]),
      );

      dataSource.addInteraction(interaction);
      await Future.delayed(const Duration(milliseconds: 10));
      dataSource.clear();
    });

    test('should trim to maxEntries (FIFO)', () {
      const interaction1 = HttpInteractionEntity(id: 1, method: 'GET');
      const interaction2 = HttpInteractionEntity(id: 2, method: 'POST');
      const interaction3 = HttpInteractionEntity(id: 3, method: 'PUT');
      const interaction4 = HttpInteractionEntity(id: 4, method: 'DELETE');

      dataSource.addInteraction(interaction1);
      dataSource.addInteraction(interaction2);
      dataSource.addInteraction(interaction3);
      dataSource.addInteraction(interaction4); // Should remove interaction1

      final interactions = dataSource.getInteractions();
      expect(interactions, hasLength(3));
      expect(interactions.map((i) => i.id), [2, 3, 4]);
    });

    test('should maintain order of interactions', () {
      const interaction1 = HttpInteractionEntity(id: 1, method: 'GET');
      const interaction2 = HttpInteractionEntity(id: 2, method: 'POST');
      const interaction3 = HttpInteractionEntity(id: 3, method: 'PUT');

      dataSource.addInteraction(interaction1);
      dataSource.addInteraction(interaction2);
      dataSource.addInteraction(interaction3);

      final interactions = dataSource.getInteractions();
      expect(interactions.map((i) => i.id), [1, 2, 3]);
    });

    test('should not emit after dispose', () async {
      const interaction = HttpInteractionEntity(id: 1, method: 'GET');

      dataSource.dispose();
      dataSource.addInteraction(interaction);

      // Should not throw or emit
      await Future.delayed(const Duration(milliseconds: 10));
      expect(dataSource.getInteractions(), hasLength(1));
    });

    test('should handle multiple rapid additions', () {
      for (int i = 0; i < 10; i++) {
        dataSource.addInteraction(HttpInteractionEntity(id: i, method: 'GET'));
      }

      final interactions = dataSource.getInteractions();
      expect(interactions, hasLength(3)); // maxEntries = 3
      expect(interactions.map((i) => i.id), [7, 8, 9]);
    });
  });
}
