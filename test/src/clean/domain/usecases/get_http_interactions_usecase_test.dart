import 'package:flutter_debug_overlay/src/clean/domain/entities/http_interaction_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/http_log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/get_http_interactions_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpLogRepository extends Mock implements HttpLogRepository {}

void main() {
  late MockHttpLogRepository mockRepository;
  late GetHttpInteractionsUseCase useCase;

  setUp(() {
    mockRepository = MockHttpLogRepository();
    useCase = GetHttpInteractionsUseCase(mockRepository);
  });

  group('GetHttpInteractionsUseCase', () {
    test('should return list of interactions from repository', () {
      // Arrange
      final expectedInteractions = [
        HttpInteractionEntity(
          id: 1,
          uri: Uri.parse('https://example.com/api/1'),
          method: 'GET',
        ),
        HttpInteractionEntity(
          id: 2,
          uri: Uri.parse('https://example.com/api/2'),
          method: 'POST',
        ),
      ];

      when(() => mockRepository.getInteractions())
          .thenReturn(expectedInteractions);

      // Act
      final result = useCase();

      // Assert
      expect(result, expectedInteractions);
      verify(() => mockRepository.getInteractions()).called(1);
    });

    test('should return empty list when no interactions', () {
      // Arrange
      when(() => mockRepository.getInteractions())
          .thenReturn([]);

      // Act
      final result = useCase();

      // Assert
      expect(result, isEmpty);
      verify(() => mockRepository.getInteractions()).called(1);
    });

    test('should call repository without parameters', () {
      // Arrange
      when(() => mockRepository.getInteractions())
          .thenReturn([]);

      // Act
      useCase();

      // Assert
      verify(() => mockRepository.getInteractions()).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
