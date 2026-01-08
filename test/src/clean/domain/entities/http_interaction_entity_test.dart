import 'package:flutter_debug_overlay/src/clean/domain/entities/http_error_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_interaction_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_request_entity.br.dart';
import 'package:flutter_debug_overlay/src/clean/domain/entities/http_response_entity.br.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HttpInteractionEntity', () {
    test('should calculate duration correctly', () {
      final requestTime = DateTime(2024, 1, 1, 12, 0, 0);
      final responseTime = DateTime(2024, 1, 1, 12, 0, 2);

      final interaction = HttpInteractionEntity(
        id: 1,
        request: HttpRequestEntity(time: requestTime),
        response: HttpResponseEntity(time: responseTime),
      );

      expect(interaction.duration, const Duration(seconds: 2));
    });

    test('should return null duration when request time is null', () {
      final interaction = HttpInteractionEntity(
        id: 1,
        request: const HttpRequestEntity(time: null),
        response: HttpResponseEntity(time: DateTime.now()),
      );

      expect(interaction.duration, isNull);
    });

    test('should return null duration when response time is null', () {
      final interaction = HttpInteractionEntity(
        id: 1,
        request: HttpRequestEntity(time: DateTime.now()),
      );

      expect(interaction.duration, isNull);
    });

    test('should calculate responseTime from response', () {
      final responseTime = DateTime(2024, 1, 1, 12, 0, 0);
      final interaction = HttpInteractionEntity(
        id: 1,
        response: HttpResponseEntity(time: responseTime),
      );

      expect(interaction.responseTime, responseTime);
    });

    test('should calculate responseTime from error when no response', () {
      final errorTime = DateTime(2024, 1, 1, 12, 0, 0);
      final interaction = HttpInteractionEntity(
        id: 1,
        error: HttpErrorEntity(time: errorTime),
      );

      expect(interaction.responseTime, errorTime);
    });

    group('statusColorCategory', () {
      test('should return grey for null status', () {
        const interaction = HttpInteractionEntity(id: 1);
        expect(interaction.statusColorCategory, HttpStatusColorCategory.grey);
      });

      test('should return blue for 1xx status codes', () {
        const interaction = HttpInteractionEntity(
          id: 1,
          response: HttpResponseEntity(statusCode: 100),
        );
        expect(interaction.statusColorCategory, HttpStatusColorCategory.blue);
      });

      test('should return green for 2xx status codes', () {
        const interaction = HttpInteractionEntity(
          id: 1,
          response: HttpResponseEntity(statusCode: 200),
        );
        expect(interaction.statusColorCategory, HttpStatusColorCategory.green);
      });

      test('should return blue for 3xx status codes', () {
        const interaction = HttpInteractionEntity(
          id: 1,
          response: HttpResponseEntity(statusCode: 301),
        );
        expect(
          interaction.statusColorCategory,
          HttpStatusColorCategory.blue,
        );
      });

      test('should return orange for 4xx status codes', () {
        const interaction = HttpInteractionEntity(
          id: 1,
          response: HttpResponseEntity(statusCode: 404),
        );
        expect(interaction.statusColorCategory, HttpStatusColorCategory.orange);
      });

      test('should return red for 5xx status codes', () {
        const interaction = HttpInteractionEntity(
          id: 1,
          response: HttpResponseEntity(statusCode: 500),
        );
        expect(interaction.statusColorCategory, HttpStatusColorCategory.red);
      });
    });

    group('durationColorCategory', () {
      test('should return grey for null duration', () {
        const interaction = HttpInteractionEntity(id: 1);
        expect(
          interaction.durationColorCategory,
          HttpDurationColorCategory.grey,
        );
      });

      test('should return green for duration < 150ms', () {
        final requestTime = DateTime(2024, 1, 1, 12, 0, 0);
        final responseTime = DateTime(2024, 1, 1, 12, 0, 0, 100);

        final interaction = HttpInteractionEntity(
          id: 1,
          request: HttpRequestEntity(time: requestTime),
          response: HttpResponseEntity(time: responseTime),
        );

        expect(
          interaction.durationColorCategory,
          HttpDurationColorCategory.green,
        );
      });

      test('should return orange for duration 150-499ms', () {
        final requestTime = DateTime(2024, 1, 1, 12, 0, 0);
        final responseTime = DateTime(2024, 1, 1, 12, 0, 0, 300);

        final interaction = HttpInteractionEntity(
          id: 1,
          request: HttpRequestEntity(time: requestTime),
          response: HttpResponseEntity(time: responseTime),
        );

        expect(
          interaction.durationColorCategory,
          HttpDurationColorCategory.orange,
        );
      });

      test('should return red for duration >= 500ms', () {
        final requestTime = DateTime(2024, 1, 1, 12, 0, 0);
        final responseTime = DateTime(2024, 1, 1, 12, 0, 0, 500);

        final interaction = HttpInteractionEntity(
          id: 1,
          request: HttpRequestEntity(time: requestTime),
          response: HttpResponseEntity(time: responseTime),
        );

        expect(
          interaction.durationColorCategory,
          HttpDurationColorCategory.red,
        );
      });
    });

    test('should support copyWith', () {
      const interaction = HttpInteractionEntity(id: 1);
      final updated = interaction.copyWith(
        method: 'POST',
        uri: Uri.parse('https://example.com'),
      );

      expect(updated.id, 1);
      expect(updated.method, 'POST');
      expect(updated.uri, Uri.parse('https://example.com'));
    });

    test('should support equality', () {
      const interaction1 = HttpInteractionEntity(id: 1, method: 'GET');
      const interaction2 = HttpInteractionEntity(id: 1, method: 'GET');
      const interaction3 = HttpInteractionEntity(id: 2, method: 'GET');

      expect(interaction1, equals(interaction2));
      expect(interaction1, isNot(equals(interaction3)));
    });
  });
}
