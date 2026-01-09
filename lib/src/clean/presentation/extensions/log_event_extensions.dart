import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/log_event_entity.br.dart';

/// UI extensions for LogEventEntity
/// Maps domain color categories to Flutter MaterialColors
extension LogEventUiExtensions on LogEventEntity {
  /// Get MaterialColor for log level
  MaterialColor get levelColor {
    switch (levelColorCategory) {
      case LogLevelColorCategory.pink:
        return Colors.pink;
      case LogLevelColorCategory.red:
        return Colors.red;
      case LogLevelColorCategory.orange:
        return Colors.orange;
      case LogLevelColorCategory.blue:
        return Colors.blue;
      case LogLevelColorCategory.blueGrey:
        return Colors.blueGrey;
      case LogLevelColorCategory.grey:
        return Colors.grey;
    }
  }

  /// Format time for display
  String get timeFormatted {
    final formatter = DateFormat('HH:mm:ss.SSS');
    return formatter.format(time);
  }

  /// Get short level name
  String get levelName {
    switch (level) {
      case LogLevel.fatal:
        return 'FATAL';
      case LogLevel.error:
        return 'ERROR';
      case LogLevel.warning:
        return 'WARN';
      case LogLevel.info:
        return 'INFO';
      case LogLevel.debug:
        return 'DEBUG';
      case LogLevel.trace:
        return 'TRACE';
      case LogLevel.all:
        return 'ALL';
      case LogLevel.off:
        return 'OFF';
    }
  }

  /// Format message for display
  String get messageFormatted => message.toString();

  /// Check if has error or stackTrace
  bool get hasError => error != null || stackTrace != null;
}
