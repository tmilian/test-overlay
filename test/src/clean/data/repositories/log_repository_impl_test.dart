import 'package:flutter_debug_overlay/src/clean/data/datasources/log_data_source.dart';
import 'package:flutter_debug_overlay/src/clean/data/repositories/log_repository_impl.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/log_event_entity.br.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLogDataSource extends Mock implements LogDataSource {}

void main() {
  group('LogRepositoryImpl', () {
    late MockLogDataSource mockDataSource;
    late LogRepositoryImpl repository;

    setUpAll(() {
      registerFallbackValue(
        LogEventEntity(
          level: LogLevel.info,
          message: '',
          time: DateTime.now(),
        ),
      );
    });

    setUp(() {
      mockDataSource = MockLogDataSource();
      repository = LogRepositoryImpl(mockDataSource);
    });

    test('should delegate watchLogs to data source', () {
      final log = LogEventEntity(
        level: LogLevel.info,
        message: 'Test log',
        time: DateTime.now(),
      );
      final stream = Stream.value([log]);
      when(() => mockDataSource.logsStream).thenAnswer((_) => stream);

      final result = repository.watchLogs();

      expect(result, stream);
      verify(() => mockDataSource.logsStream).called(1);
    });

    test('should delegate addLog to data source', () {
      final log = LogEventEntity(
        level: LogLevel.info,
        message: 'Test log',
        time: DateTime.now(),
      );
      when(() => mockDataSource.addLog(any())).thenReturn(null);

      repository.addLog(log);

      verify(() => mockDataSource.addLog(log)).called(1);
    });

    test('should delegate clear to data source', () {
      when(() => mockDataSource.clear()).thenReturn(null);

      repository.clear();

      verify(() => mockDataSource.clear()).called(1);
    });

    test('should delegate getLogs to data source', () {
      final logs = [
        LogEventEntity(
          level: LogLevel.info,
          message: 'Log 1',
          time: DateTime.now(),
        ),
        LogEventEntity(
          level: LogLevel.error,
          message: 'Log 2',
          time: DateTime.now(),
        ),
      ];
      when(() => mockDataSource.getLogs()).thenReturn(logs);

      final result = repository.getLogs();

      expect(result, logs);
      verify(() => mockDataSource.getLogs()).called(1);
    });

    test('should return empty list when no logs', () {
      when(() => mockDataSource.getLogs()).thenReturn([]);

      final result = repository.getLogs();

      expect(result, isEmpty);
    });

    test('should handle stream of multiple log updates', () async {
      final log1 = LogEventEntity(
        level: LogLevel.info,
        message: 'Log 1',
        time: DateTime.now(),
      );
      final log2 = LogEventEntity(
        level: LogLevel.error,
        message: 'Log 2',
        time: DateTime.now(),
      );

      final stream = Stream.fromIterable([
        [log1],
        [log1, log2],
      ]);
      when(() => mockDataSource.logsStream).thenAnswer((_) => stream);

      final result = repository.watchLogs();

      await expectLater(
        result,
        emitsInOrder([
          [log1],
          [log1, log2],
        ]),
      );
    });
  });
}
