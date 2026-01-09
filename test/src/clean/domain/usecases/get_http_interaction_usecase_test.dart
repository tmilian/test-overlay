import 'package:flutter_debug_overlay/src/clean/domain/entities/http_interaction_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/http_log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/get_http_interaction_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpLogRepository extends Mock implements HttpLogRepository {}

void main() {
  late MockHttpLogRepository mockRepository;
  late GetHttpInteractionUseCase useCase;

  setUp(() {
    mockRepository = MockHttpLogRepository();
    useCase = GetHttpInteractionUseCase(mockRepository);
  });

  group('GetHttpInteractionUseCase', () {
    test('should return interaction from repository when found', () {
      // Arrange
      const interactionId = 1;
      final expectedInteraction = HttpInteractionEntity(
        id: interactionId,
        uri: Uri.parse('https://example.com/api'),
        method: 'GET',
      );

      when(() => mockRepository.getInteraction(any()))
          .thenReturn(expectedInteraction);

      // Act
      final result = useCase(interactionId);

      // Assert
      expect(result, expectedInteraction);
      verify(() => mockRepository.getInteraction(interactionId)).called(1);
    });

    test('should return null when interaction not found', () {
      // Arrange
      const interactionId = 99;

      when(() => mockRepository.getInteraction(any()))
          .thenReturn(null);

      // Act
      final result = useCase(interactionId);

      // Assert
      expect(result, null);
      verify(() => mockRepository.getInteraction(interactionId)).called(1);
    });

    test('should forward correct id to repository', () {
      // Arrange
      const interactionId = 42;

      when(() => mockRepository.getInteraction(any()))
          .thenReturn(null);

      // Act
      useCase(interactionId);

      // Assert
      verify(() => mockRepository.getInteraction(interactionId)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
