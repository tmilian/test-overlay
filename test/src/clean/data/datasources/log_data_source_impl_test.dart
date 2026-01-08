import 'package:flutter_debug_overlay/src/clean/data/datasources/log_data_source_impl.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/log_event_entity.br.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LogDataSourceImpl', () {
    late LogDataSourceImpl dataSource;

    setUp(() {
      dataSource = LogDataSourceImpl(maxEntries: 3);
    });

    tearDown(() {
      dataSource.dispose();
    });

    test('should start with empty logs', () {
      expect(dataSource.getLogs(), isEmpty);
    });

    test('should add log event', () {
      final log = LogEventEntity(
        level: LogLevel.info,
        message: 'Test log',
        time: DateTime.now(),
      );

      dataSource.addLog(log);

      final logs = dataSource.getLogs();
      expect(logs, hasLength(1));
      expect(logs.first.message, 'Test log');
    });

    test('should emit update on logs stream when adding', () async {
      final log = LogEventEntity(
        level: LogLevel.info,
        message: 'Test log',
        time: DateTime.now(),
      );

      expectLater(
        dataSource.logsStream,
        emitsInOrder([
          [log],
        ]),
      );

      dataSource.addLog(log);
    });

    test('should add multiple logs', () {
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

      dataSource.addLog(log1);
      dataSource.addLog(log2);

      final logs = dataSource.getLogs();
      expect(logs, hasLength(2));
      expect(logs[0].message, 'Log 1');
      expect(logs[1].message, 'Log 2');
    });

    test('should clear all logs', () {
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

      dataSource.addLog(log1);
      dataSource.addLog(log2);

      expect(dataSource.getLogs(), hasLength(2));

      dataSource.clear();

      expect(dataSource.getLogs(), isEmpty);
    });

    test('should emit empty list on stream when clearing', () async {
      final log = LogEventEntity(
        level: LogLevel.info,
        message: 'Test log',
        time: DateTime.now(),
      );

      expectLater(
        dataSource.logsStream,
        emitsInOrder([
          [log],
          [],
        ]),
      );

      dataSource.addLog(log);
      await Future.delayed(const Duration(milliseconds: 10));
      dataSource.clear();
    });

    test('should trim to maxEntries (FIFO)', () {
      final log1 = LogEventEntity(
        level: LogLevel.info,
        message: 'Log 1',
        time: DateTime.now(),
      );
      final log2 = LogEventEntity(
        level: LogLevel.info,
        message: 'Log 2',
        time: DateTime.now(),
      );
      final log3 = LogEventEntity(
        level: LogLevel.info,
        message: 'Log 3',
        time: DateTime.now(),
      );
      final log4 = LogEventEntity(
        level: LogLevel.info,
        message: 'Log 4',
        time: DateTime.now(),
      );

      dataSource.addLog(log1);
      dataSource.addLog(log2);
      dataSource.addLog(log3);
      dataSource.addLog(log4); // Should remove log1

      final logs = dataSource.getLogs();
      expect(logs, hasLength(3));
      expect(logs.map((l) => l.message), ['Log 2', 'Log 3', 'Log 4']);
    });

    test('should maintain order of logs', () {
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
      final log3 = LogEventEntity(
        level: LogLevel.warning,
        message: 'Log 3',
        time: DateTime.now(),
      );

      dataSource.addLog(log1);
      dataSource.addLog(log2);
      dataSource.addLog(log3);

      final logs = dataSource.getLogs();
      expect(logs.map((l) => l.message), ['Log 1', 'Log 2', 'Log 3']);
    });

    test('should not emit after dispose', () async {
      final log = LogEventEntity(
        level: LogLevel.info,
        message: 'Test log',
        time: DateTime.now(),
      );

      dataSource.dispose();
      dataSource.addLog(log);

      // Should not throw or emit
      await Future.delayed(const Duration(milliseconds: 10));
      expect(dataSource.getLogs(), hasLength(1));
    });

    test('should handle multiple rapid additions', () {
      for (int i = 0; i < 10; i++) {
        dataSource.addLog(
          LogEventEntity(
            level: LogLevel.info,
            message: 'Log $i',
            time: DateTime.now(),
          ),
        );
      }

      final logs = dataSource.getLogs();
      expect(logs, hasLength(3)); // maxEntries = 3
      expect(logs.map((l) => l.message), ['Log 7', 'Log 8', 'Log 9']);
    });

    test('should handle logs with different levels', () {
      final debugLog = LogEventEntity(
        level: LogLevel.debug,
        message: 'Debug',
        time: DateTime.now(),
      );
      final infoLog = LogEventEntity(
        level: LogLevel.info,
        message: 'Info',
        time: DateTime.now(),
      );
      final errorLog = LogEventEntity(
        level: LogLevel.error,
        message: 'Error',
        time: DateTime.now(),
      );

      dataSource.addLog(debugLog);
      dataSource.addLog(infoLog);
      dataSource.addLog(errorLog);

      final logs = dataSource.getLogs();
      expect(logs, hasLength(3));
      expect(logs[0].level, LogLevel.debug);
      expect(logs[1].level, LogLevel.info);
      expect(logs[2].level, LogLevel.error);
    });

    test('should emit updates for each addition', () async {
      final log1 = LogEventEntity(
        level: LogLevel.info,
        message: 'Log 1',
        time: DateTime.now(),
      );
      final log2 = LogEventEntity(
        level: LogLevel.info,
        message: 'Log 2',
        time: DateTime.now(),
      );

      expectLater(
        dataSource.logsStream,
        emitsInOrder([
          [log1],
          [log1, log2],
        ]),
      );

      dataSource.addLog(log1);
      await Future.delayed(const Duration(milliseconds: 10));
      dataSource.addLog(log2);
    });
  });
}
