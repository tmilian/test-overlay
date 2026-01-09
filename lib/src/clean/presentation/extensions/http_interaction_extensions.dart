import 'package:flutter/material.dart';

import '../../domain/entities/http_interaction_entity.br.dart';

/// UI extensions for HttpInteractionEntity
/// Maps domain color categories to Flutter MaterialColors
extension HttpInteractionUiExtensions on HttpInteractionEntity {
  /// Get MaterialColor for status code
  MaterialColor get statusColor {
    switch (statusColorCategory) {
      case HttpStatusColorCategory.grey:
        return Colors.grey;
      case HttpStatusColorCategory.blue:
        return Colors.blue;
      case HttpStatusColorCategory.green:
        return Colors.green;
      case HttpStatusColorCategory.orange:
        return Colors.orange;
      case HttpStatusColorCategory.red:
        return Colors.red;
    }
  }

  /// Get MaterialColor for duration
  MaterialColor get durationColor {
    switch (durationColorCategory) {
      case HttpDurationColorCategory.grey:
        return Colors.grey;
      case HttpDurationColorCategory.green:
        return Colors.green;
      case HttpDurationColorCategory.orange:
        return Colors.orange;
      case HttpDurationColorCategory.red:
        return Colors.red;
    }
  }

  /// Format duration for display
  String get durationFormatted {
    final d = duration;
    if (d == null) return '-';
    if (d.inMilliseconds < 1000) {
      return '${d.inMilliseconds}ms';
    }
    return '${(d.inMilliseconds / 1000).toStringAsFixed(2)}s';
  }

  /// Format status code for display
  String get statusCodeFormatted {
    final code = response?.statusCode;
    return code?.toString() ?? '-';
  }

  /// Format method for display
  String get methodFormatted => method ?? 'UNKNOWN';

  /// Format URI for display (short version)
  String get uriShort {
    if (uri == null) return '-';
    final path = uri!.path.isEmpty ? '/' : uri!.path;
    return '${uri!.host}$path';
  }
}
