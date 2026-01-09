import 'package:flutter_debug_overlay/src/clean/domain/entities/http_interaction_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/http_log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/add_http_interaction_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpLogRepository extends Mock implements HttpLogRepository {}

class FakeHttpInteractionEntity extends Fake implements HttpInteractionEntity {}

void main() {
  late MockHttpLogRepository mockRepository;
  late AddHttpInteractionUseCase useCase;

  setUpAll(() {
    registerFallbackValue(FakeHttpInteractionEntity());
  });

  setUp(() {
    mockRepository = MockHttpLogRepository();
    useCase = AddHttpInteractionUseCase(mockRepository);
  });

  group('AddHttpInteractionUseCase', () {
    test('should call repository.addInteraction with correct entity', () {
      // Arrange
      final interaction = HttpInteractionEntity(
        id: 1,
        uri: Uri.parse('https://example.com/api'),
        method: 'GET',
      );

      when(() => mockRepository.addInteraction(any()))
          .thenReturn(null);

      // Act
      useCase(interaction);

      // Assert
      verify(() => mockRepository.addInteraction(interaction)).called(1);
    });

    test('should forward call to repository without modification', () {
      // Arrange
      final interaction = HttpInteractionEntity(
        id: 42,
        uri: Uri.parse('https://api.example.com/users'),
        method: 'POST',
      );

      when(() => mockRepository.addInteraction(any()))
          .thenReturn(null);

      // Act
      useCase(interaction);

      // Assert
      verify(() => mockRepository.addInteraction(interaction)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
