import 'package:flutter_debug_overlay/src/clean/domain/repositories/http_log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/clear_http_interactions_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpLogRepository extends Mock implements HttpLogRepository {}

void main() {
  late MockHttpLogRepository mockRepository;
  late ClearHttpInteractionsUseCase useCase;

  setUp(() {
    mockRepository = MockHttpLogRepository();
    useCase = ClearHttpInteractionsUseCase(mockRepository);
  });

  group('ClearHttpInteractionsUseCase', () {
    test('should call repository.clear', () {
      // Arrange
      when(() => mockRepository.clear()).thenReturn(null);

      // Act
      useCase();

      // Assert
      verify(() => mockRepository.clear()).called(1);
    });

    test('should call repository without parameters', () {
      // Arrange
      when(() => mockRepository.clear()).thenReturn(null);

      // Act
      useCase();

      // Assert
      verify(() => mockRepository.clear()).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
