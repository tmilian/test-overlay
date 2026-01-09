import 'package:flutter_debug_overlay/src/clean/domain/entities/log_event_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/add_log_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLogRepository extends Mock implements LogRepository {}

class FakeLogEventEntity extends Fake implements LogEventEntity {}

void main() {
  late MockLogRepository mockRepository;
  late AddLogUseCase useCase;

  setUpAll(() {
    registerFallbackValue(FakeLogEventEntity());
  });

  setUp(() {
    mockRepository = MockLogRepository();
    useCase = AddLogUseCase(mockRepository);
  });

  group('AddLogUseCase', () {
    test('should call repository.addLog with correct entity', () {
      // Arrange
      final log = LogEventEntity(
        level: LogLevel.info,
        message: 'Test log message',
        time: DateTime(2024, 1, 1, 12, 0, 0),
      );

      when(() => mockRepository.addLog(any())).thenReturn(null);

      // Act
      useCase(log);

      // Assert
      verify(() => mockRepository.addLog(log)).called(1);
    });

    test('should forward call to repository without modification', () {
      // Arrange
      final log = LogEventEntity(
        level: LogLevel.error,
        message: 'Error occurred',
        time: DateTime(2024, 1, 1, 12, 0, 0),
        error: 'Exception details',
        stackTrace: StackTrace.current,
      );

      when(() => mockRepository.addLog(any())).thenReturn(null);

      // Act
      useCase(log);

      // Assert
      verify(() => mockRepository.addLog(log)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should handle different log levels', () {
      // Arrange
      final logs = [
        LogEventEntity(
          level: LogLevel.trace,
          message: 'Trace message',
          time: DateTime(2024, 1, 1, 12, 0, 0),
        ),
        LogEventEntity(
          level: LogLevel.debug,
          message: 'Debug message',
          time: DateTime(2024, 1, 1, 12, 0, 1),
        ),
        LogEventEntity(
          level: LogLevel.warning,
          message: 'Warning message',
          time: DateTime(2024, 1, 1, 12, 0, 2),
        ),
        LogEventEntity(
          level: LogLevel.fatal,
          message: 'Fatal message',
          time: DateTime(2024, 1, 1, 12, 0, 3),
        ),
      ];

      when(() => mockRepository.addLog(any())).thenReturn(null);

      // Act
      for (final log in logs) {
        useCase(log);
      }

      // Assert
      for (final log in logs) {
        verify(() => mockRepository.addLog(log)).called(1);
      }
    });
  });
}
