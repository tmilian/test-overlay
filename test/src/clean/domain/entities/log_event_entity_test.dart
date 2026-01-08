import 'package:flutter_debug_overlay/src/clean/domain/entities/log_event_entity.br.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LogEventEntity', () {
    test('should create log event with required fields', () {
      final time = DateTime.now();
      final event = LogEventEntity(
        level: LogLevel.info,
        message: 'Test message',
        time: time,
      );

      expect(event.level, LogLevel.info);
      expect(event.message, 'Test message');
      expect(event.time, time);
      expect(event.error, isNull);
      expect(event.stackTrace, isNull);
    });

    test('should support optional error and stackTrace', () {
      final error = Exception('Test error');
      final stackTrace = StackTrace.current;
      final event = LogEventEntity(
        level: LogLevel.error,
        message: 'Error occurred',
        time: DateTime.now(),
        error: error,
        stackTrace: stackTrace,
      );

      expect(event.error, error);
      expect(event.stackTrace, stackTrace);
    });

    group('levelColorCategory', () {
      test('should return pink for fatal', () {
        final event = LogEventEntity(
          level: LogLevel.fatal,
          message: 'Fatal error',
          time: DateTime.now(),
        );
        expect(event.levelColorCategory, LogLevelColorCategory.pink);
      });

      test('should return red for error', () {
        final event = LogEventEntity(
          level: LogLevel.error,
          message: 'Error',
          time: DateTime.now(),
        );
        expect(event.levelColorCategory, LogLevelColorCategory.red);
      });

      test('should return orange for warning', () {
        final event = LogEventEntity(
          level: LogLevel.warning,
          message: 'Warning',
          time: DateTime.now(),
        );
        expect(event.levelColorCategory, LogLevelColorCategory.orange);
      });

      test('should return blue for info', () {
        final event = LogEventEntity(
          level: LogLevel.info,
          message: 'Info',
          time: DateTime.now(),
        );
        expect(event.levelColorCategory, LogLevelColorCategory.blue);
      });

      test('should return blueGrey for debug', () {
        final event = LogEventEntity(
          level: LogLevel.debug,
          message: 'Debug',
          time: DateTime.now(),
        );
        expect(event.levelColorCategory, LogLevelColorCategory.blueGrey);
      });

      test('should return grey for trace', () {
        final event = LogEventEntity(
          level: LogLevel.trace,
          message: 'Trace',
          time: DateTime.now(),
        );
        expect(event.levelColorCategory, LogLevelColorCategory.grey);
      });

      test('should return grey for all', () {
        final event = LogEventEntity(
          level: LogLevel.all,
          message: 'All',
          time: DateTime.now(),
        );
        expect(event.levelColorCategory, LogLevelColorCategory.grey);
      });

      test('should return grey for off', () {
        final event = LogEventEntity(
          level: LogLevel.off,
          message: 'Off',
          time: DateTime.now(),
        );
        expect(event.levelColorCategory, LogLevelColorCategory.grey);
      });
    });

    group('LogLevel', () {
      test('should have correct numeric values', () {
        expect(LogLevel.all.value, 0);
        expect(LogLevel.trace.value, 1000);
        expect(LogLevel.debug.value, 2000);
        expect(LogLevel.info.value, 3000);
        expect(LogLevel.warning.value, 4000);
        expect(LogLevel.error.value, 5000);
        expect(LogLevel.fatal.value, 6000);
        expect(LogLevel.off.value, 10000);
      });

      test('should be ordered by severity', () {
        expect(LogLevel.all.value < LogLevel.trace.value, isTrue);
        expect(LogLevel.trace.value < LogLevel.debug.value, isTrue);
        expect(LogLevel.debug.value < LogLevel.info.value, isTrue);
        expect(LogLevel.info.value < LogLevel.warning.value, isTrue);
        expect(LogLevel.warning.value < LogLevel.error.value, isTrue);
        expect(LogLevel.error.value < LogLevel.fatal.value, isTrue);
        expect(LogLevel.fatal.value < LogLevel.off.value, isTrue);
      });
    });

    test('should support copyWith', () {
      final event = LogEventEntity(
        level: LogLevel.info,
        message: 'Original',
        time: DateTime.now(),
      );

      final updated = event.copyWith(
        level: LogLevel.error,
        message: 'Updated',
      );

      expect(updated.level, LogLevel.error);
      expect(updated.message, 'Updated');
      expect(updated.time, event.time);
    });

    test('should support equality', () {
      final time = DateTime.now();
      final event1 = LogEventEntity(
        level: LogLevel.info,
        message: 'Test',
        time: time,
      );
      final event2 = LogEventEntity(
        level: LogLevel.info,
        message: 'Test',
        time: time,
      );
      final event3 = LogEventEntity(
        level: LogLevel.error,
        message: 'Test',
        time: time,
      );

      expect(event1, equals(event2));
      expect(event1, isNot(equals(event3)));
    });
  });
}
