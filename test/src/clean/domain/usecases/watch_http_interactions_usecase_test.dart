import 'package:flutter_debug_overlay/src/clean/domain/entities/http_interaction_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/http_log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/watch_http_interactions_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpLogRepository extends Mock implements HttpLogRepository {}

void main() {
  late MockHttpLogRepository mockRepository;
  late WatchHttpInteractionsUseCase useCase;

  setUp(() {
    mockRepository = MockHttpLogRepository();
    useCase = WatchHttpInteractionsUseCase(mockRepository);
  });

  group('WatchHttpInteractionsUseCase', () {
    test('should return stream from repository', () async {
      // Arrange
      final interactions = [
        HttpInteractionEntity(
          id: 1,
          uri: Uri.parse('https://example.com/api'),
          method: 'GET',
        ),
      ];

      when(() => mockRepository.watchInteractions())
          .thenAnswer((_) => Stream.value(interactions));

      // Act
      final result = useCase();

      // Assert
      expect(result, isA<Stream<List<HttpInteractionEntity>>>());
      expect(await result.first, interactions);
      verify(() => mockRepository.watchInteractions()).called(1);
    });

    test('should emit multiple values when repository stream emits', () async {
      // Arrange
      final interaction1 = HttpInteractionEntity(
        id: 1,
        uri: Uri.parse('https://example.com/api/1'),
        method: 'GET',
      );
      final interaction2 = HttpInteractionEntity(
        id: 2,
        uri: Uri.parse('https://example.com/api/2'),
        method: 'POST',
      );

      when(() => mockRepository.watchInteractions())
          .thenAnswer((_) => Stream.fromIterable([
                [interaction1],
                [interaction1, interaction2],
              ]));

      // Act
      final result = useCase();
      final values = await result.toList();

      // Assert
      expect(values, [
        [interaction1],
        [interaction1, interaction2],
      ]);
      verify(() => mockRepository.watchInteractions()).called(1);
    });

    test('should return empty stream when repository returns empty stream', () async {
      // Arrange
      when(() => mockRepository.watchInteractions())
          .thenAnswer((_) => Stream.value([]));

      // Act
      final result = useCase();

      // Assert
      expect(await result.first, isEmpty);
      verify(() => mockRepository.watchInteractions()).called(1);
    });

    test('should call repository without parameters', () {
      // Arrange
      when(() => mockRepository.watchInteractions())
          .thenAnswer((_) => Stream.value([]));

      // Act
      useCase();

      // Assert
      verify(() => mockRepository.watchInteractions()).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
