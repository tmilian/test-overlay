import 'package:flutter_debug_overlay/src/clean/domain/entities/http_error_entity.br.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HttpErrorEntity', () {
    test('should create error entity with all fields null', () {
      const error = HttpErrorEntity();

      expect(error.error, isNull);
      expect(error.stackTrace, isNull);
      expect(error.time, isNull);
      expect(error.additionalData, isNull);
    });

    test('should create error entity with error object', () {
      final exception = Exception('Test error');
      final error = HttpErrorEntity(error: exception);

      expect(error.error, exception);
    });

    test('should create error entity with stackTrace', () {
      final stackTrace = StackTrace.current;
      final error = HttpErrorEntity(stackTrace: stackTrace);

      expect(error.stackTrace, stackTrace);
    });

    test('should create error entity with time', () {
      final time = DateTime.now();
      final error = HttpErrorEntity(time: time);

      expect(error.time, time);
    });

    test('should create error entity with additionalData', () {
      const additionalData = {'key': 'value', 'code': 123};
      const error = HttpErrorEntity(additionalData: additionalData);

      expect(error.additionalData, additionalData);
    });

    group('containsData', () {
      test('should return false when all fields are null', () {
        const error = HttpErrorEntity();
        expect(error.containsData(), isFalse);
      });

      test('should return true when error is not null', () {
        final error = HttpErrorEntity(error: Exception('Test'));
        expect(error.containsData(), isTrue);
      });

      test('should return true when stackTrace is not null', () {
        final error = HttpErrorEntity(stackTrace: StackTrace.current);
        expect(error.containsData(), isTrue);
      });

      test('should return true when additionalData is not null', () {
        const error = HttpErrorEntity(additionalData: {'key': 'value'});
        expect(error.containsData(), isTrue);
      });

      test('should return false when only time is set', () {
        final error = HttpErrorEntity(time: DateTime.now());
        expect(error.containsData(), isFalse);
      });
    });

    test('should support copyWith', () {
      const error = HttpErrorEntity();
      final exception = Exception('Test');
      final updated = error.copyWith(error: exception);

      expect(updated.error, exception);
      expect(updated.stackTrace, isNull);
    });

    test('should support equality', () {
      final exception = Exception('Test');
      final error1 = HttpErrorEntity(error: exception);
      final error2 = HttpErrorEntity(error: exception);
      const error3 = HttpErrorEntity();

      expect(error1, equals(error2));
      expect(error1, isNot(equals(error3)));
    });
  });
}
