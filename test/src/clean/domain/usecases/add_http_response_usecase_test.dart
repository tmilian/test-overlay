import 'package:flutter_debug_overlay/src/clean/domain/entities/http_response_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/http_log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/add_http_response_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpLogRepository extends Mock implements HttpLogRepository {}

class FakeHttpResponseEntity extends Fake implements HttpResponseEntity {}

void main() {
  late MockHttpLogRepository mockRepository;
  late AddHttpResponseUseCase useCase;

  setUpAll(() {
    registerFallbackValue(FakeHttpResponseEntity());
  });

  setUp(() {
    mockRepository = MockHttpLogRepository();
    useCase = AddHttpResponseUseCase(mockRepository);
  });

  group('AddHttpResponseUseCase', () {
    test('should call repository.addResponse and return true when successful',
        () {
      // Arrange
      const interactionId = 1;
      final response = HttpResponseEntity(
        statusCode: 200,
        time: DateTime(2024, 1, 1, 12, 0, 0),
      );

      when(() => mockRepository.addResponse(any(), any()))
          .thenReturn(true);

      // Act
      final result = useCase(interactionId, response);

      // Assert
      expect(result, true);
      verify(() => mockRepository.addResponse(interactionId, response))
          .called(1);
    });

    test('should return false when repository returns false', () {
      // Arrange
      const interactionId = 99;
      final response = HttpResponseEntity(
        statusCode: 404,
        time: DateTime(2024, 1, 1, 12, 0, 0),
      );

      when(() => mockRepository.addResponse(any(), any()))
          .thenReturn(false);

      // Act
      final result = useCase(interactionId, response);

      // Assert
      expect(result, false);
      verify(() => mockRepository.addResponse(interactionId, response))
          .called(1);
    });

    test('should forward correct parameters to repository', () {
      // Arrange
      const interactionId = 42;
      final response = HttpResponseEntity(
        statusCode: 201,
        time: DateTime(2024, 1, 1, 12, 0, 0),
        body: 'Created',
      );

      when(() => mockRepository.addResponse(any(), any()))
          .thenReturn(true);

      // Act
      useCase(interactionId, response);

      // Assert
      verify(() => mockRepository.addResponse(interactionId, response))
          .called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
