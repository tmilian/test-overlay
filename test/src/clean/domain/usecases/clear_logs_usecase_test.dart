import 'package:flutter_debug_overlay/src/clean/domain/repositories/log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/clear_logs_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLogRepository extends Mock implements LogRepository {}

void main() {
  late MockLogRepository mockRepository;
  late ClearLogsUseCase useCase;

  setUp(() {
    mockRepository = MockLogRepository();
    useCase = ClearLogsUseCase(mockRepository);
  });

  group('ClearLogsUseCase', () {
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
