import 'package:flutter_debug_overlay/src/clean/domain/entities/http_error_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/http_log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/add_http_error_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpLogRepository extends Mock implements HttpLogRepository {}

class FakeHttpErrorEntity extends Fake implements HttpErrorEntity {}

void main() {
  late MockHttpLogRepository mockRepository;
  late AddHttpErrorUseCase useCase;

  setUpAll(() {
    registerFallbackValue(FakeHttpErrorEntity());
  });

  setUp(() {
    mockRepository = MockHttpLogRepository();
    useCase = AddHttpErrorUseCase(mockRepository);
  });

  group('AddHttpErrorUseCase', () {
    test('should call repository.addError and return true when successful', () {
      // Arrange
      const interactionId = 1;
      final error = HttpErrorEntity(
        error: 'Network error',
        time: DateTime(2024, 1, 1, 12, 0, 0),
      );

      when(() => mockRepository.addError(any(), any()))
          .thenReturn(true);

      // Act
      final result = useCase(interactionId, error);

      // Assert
      expect(result, true);
      verify(() => mockRepository.addError(interactionId, error)).called(1);
    });

    test('should return false when repository returns false', () {
      // Arrange
      const interactionId = 99;
      final error = HttpErrorEntity(
        error: 'Timeout',
        time: DateTime(2024, 1, 1, 12, 0, 0),
      );

      when(() => mockRepository.addError(any(), any()))
          .thenReturn(false);

      // Act
      final result = useCase(interactionId, error);

      // Assert
      expect(result, false);
      verify(() => mockRepository.addError(interactionId, error)).called(1);
    });

    test('should forward correct parameters to repository', () {
      // Arrange
      const interactionId = 42;
      final error = HttpErrorEntity(
        error: 'Connection refused',
        time: DateTime(2024, 1, 1, 12, 0, 0),
        stackTrace: StackTrace.current,
      );

      when(() => mockRepository.addError(any(), any()))
          .thenReturn(true);

      // Act
      useCase(interactionId, error);

      // Assert
      verify(() => mockRepository.addError(interactionId, error)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
