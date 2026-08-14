import 'package:flutter/widgets.dart';

import 'responsive.dart';

/// Extension that provides convenient access to the custom responsive engine.
///
/// This allows widgets to access adaptive sizing utilities directly from the
/// [BuildContext].
///
/// Example:
/// ```dart
/// final r = context.responsive;
///
/// padding: EdgeInsets.all(r.space(16));
/// fontSize: r.font(18);
/// iconSize: r.icon(24);
/// ```
extension ResponsiveExtension on BuildContext {
  /// Returns the [Responsive] helper for the current context.
  Responsive get responsive {
    return Responsive(
      screenSize: MediaQuery.sizeOf(this),
    );
  }
}