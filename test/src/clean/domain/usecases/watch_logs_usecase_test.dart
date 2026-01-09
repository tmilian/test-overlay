import 'package:flutter_debug_overlay/src/clean/domain/entities/log_event_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/repositories/log_repository.dart';
import 'package:flutter_debug_overlay/src/clean/domain/usecases/watch_logs_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLogRepository extends Mock implements LogRepository {}

void main() {
  late MockLogRepository mockRepository;
  late WatchLogsUseCase useCase;

  setUp(() {
    mockRepository = MockLogRepository();
    useCase = WatchLogsUseCase(mockRepository);
  });

  group('WatchLogsUseCase', () {
    test('should return stream from repository', () async {
      // Arrange
      final logs = [
        LogEventEntity(
          level: LogLevel.info,
          message: 'Test log',
          time: DateTime(2024, 1, 1, 12, 0, 0),
        ),
      ];

      when(() => mockRepository.watchLogs())
          .thenAnswer((_) => Stream.value(logs));

      // Act
      final result = useCase();

      // Assert
      expect(result, isA<Stream<List<LogEventEntity>>>());
      expect(await result.first, logs);
      verify(() => mockRepository.watchLogs()).called(1);
    });

    test('should emit multiple values when repository stream emits', () async {
      // Arrange
      final log1 = LogEventEntity(
        level: LogLevel.info,
        message: 'Log 1',
        time: DateTime(2024, 1, 1, 12, 0, 0),
      );
      final log2 = LogEventEntity(
        level: LogLevel.error,
        message: 'Log 2',
        time: DateTime(2024, 1, 1, 12, 0, 1),
      );

      when(() => mockRepository.watchLogs())
          .thenAnswer((_) => Stream.fromIterable([
                [log1],
                [log1, log2],
              ]));

      // Act
      final result = useCase();
      final values = await result.toList();

      // Assert
      expect(values, [
        [log1],
        [log1, log2],
      ]);
      verify(() => mockRepository.watchLogs()).called(1);
    });

    test('should return empty stream when repository returns empty stream', () async {
      // Arrange
      when(() => mockRepository.watchLogs())
          .thenAnswer((_) => Stream.value([]));

      // Act
      final result = useCase();

      // Assert
      expect(await result.first, isEmpty);
      verify(() => mockRepository.watchLogs()).called(1);
    });

    test('should call repository without parameters', () {
      // Arrange
      when(() => mockRepository.watchLogs())
          .thenAnswer((_) => Stream.value([]));

      // Act
      useCase();

      // Assert
      verify(() => mockRepository.watchLogs()).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should handle stream with different log levels', () async {
      // Arrange
      final logs = [
        LogEventEntity(
          level: LogLevel.trace,
          message: 'Trace',
          time: DateTime(2024, 1, 1, 12, 0, 0),
        ),
        LogEventEntity(
          level: LogLevel.debug,
          message: 'Debug',
          time: DateTime(2024, 1, 1, 12, 0, 1),
        ),
        LogEventEntity(
          level: LogLevel.warning,
          message: 'Warning',
          time: DateTime(2024, 1, 1, 12, 0, 2),
        ),
        LogEventEntity(
          level: LogLevel.fatal,
          message: 'Fatal',
          time: DateTime(2024, 1, 1, 12, 0, 3),
        ),
      ];

      when(() => mockRepository.watchLogs())
          .thenAnswer((_) => Stream.value(logs));

      // Act
      final result = useCase();

      // Assert
      final emittedLogs = await result.first;
      expect(emittedLogs, logs);
      expect(emittedLogs.length, 4);
    });
  });
}
