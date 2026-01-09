import 'package:flutter_debug_overlay/src/clean/domain/entities/log_event_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/get_logs_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLogRepository extends Mock implements LogRepository {}

void main() {
  late MockLogRepository mockRepository;
  late GetLogsUseCase useCase;

  setUp(() {
    mockRepository = MockLogRepository();
    useCase = GetLogsUseCase(mockRepository);
  });

  group('GetLogsUseCase', () {
    test('should return list of logs from repository', () {
      // Arrange
      final expectedLogs = [
        LogEventEntity(
          level: LogLevel.info,
          message: 'Log 1',
          time: DateTime(2024, 1, 1, 12, 0, 0),
        ),
        LogEventEntity(
          level: LogLevel.error,
          message: 'Log 2',
          time: DateTime(2024, 1, 1, 12, 0, 1),
        ),
      ];

      when(() => mockRepository.getLogs()).thenReturn(expectedLogs);

      // Act
      final result = useCase();

      // Assert
      expect(result, expectedLogs);
      verify(() => mockRepository.getLogs()).called(1);
    });

    test('should return empty list when no logs', () {
      // Arrange
      when(() => mockRepository.getLogs()).thenReturn([]);

      // Act
      final result = useCase();

      // Assert
      expect(result, isEmpty);
      verify(() => mockRepository.getLogs()).called(1);
    });

    test('should call repository without parameters', () {
      // Arrange
      when(() => mockRepository.getLogs()).thenReturn([]);

      // Act
      useCase();

      // Assert
      verify(() => mockRepository.getLogs()).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should return logs with different levels', () {
      // Arrange
      final expectedLogs = [
        LogEventEntity(
          level: LogLevel.trace,
          message: 'Trace log',
          time: DateTime(2024, 1, 1, 12, 0, 0),
        ),
        LogEventEntity(
          level: LogLevel.debug,
          message: 'Debug log',
          time: DateTime(2024, 1, 1, 12, 0, 1),
        ),
        LogEventEntity(
          level: LogLevel.warning,
          message: 'Warning log',
          time: DateTime(2024, 1, 1, 12, 0, 2),
        ),
        LogEventEntity(
          level: LogLevel.fatal,
          message: 'Fatal log',
          time: DateTime(2024, 1, 1, 12, 0, 3),
        ),
      ];

      when(() => mockRepository.getLogs()).thenReturn(expectedLogs);

      // Act
      final result = useCase();

      // Assert
      expect(result, expectedLogs);
      expect(result.length, 4);
    });
  });
}
