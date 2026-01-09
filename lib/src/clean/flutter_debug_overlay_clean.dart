/// Flutter Debug Overlay - Clean Architecture API
///
/// Drop-in replacement for flutter_debug_overlay with Clean Architecture.
/// Just change the import and everything else stays the same:
///
/// ```dart
/// // Before:
/// // import 'package:flutter_debug_overlay/flutter_debug_overlay.dart';
///
/// // After:
/// import 'package:flutter_debug_overlay/src/clean/flutter_debug_overlay_clean.dart';
///
/// // Usage stays exactly the same:
/// final logBucket = LogBucket();
/// final httpBucket = HttpBucket();
///
/// DebugOverlay.builder(
///   logBucket: logBucket,
///   httpBucket: httpBucket,
/// );
/// ```
library;

// Export public API - Buckets (façades)
export 'presentation/buckets/http_bucket.dart';
export 'presentation/buckets/log_bucket.dart';

// Export entities (API publique utilise les entities immutables)
export 'domain/entities/http_error_entity.br.dart';
export 'domain/entities/http_interaction_entity.br.dart';
export 'domain/entities/http_request_entity.br.dart';
export 'domain/entities/http_response_entity.br.dart';
export 'domain/entities/log_event_entity.br.dart';
