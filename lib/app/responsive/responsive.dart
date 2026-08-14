import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:pushupaicoach/core/enums/device_type.dart';

import 'responsive_breakpoints.dart';

/// Provides adaptive sizing utilities for responsive layouts.
/// This class calculates spacing, typography, radius, icon sizes,
/// and layout measurements based on the current screen size while
/// keeping values within a controlled range using `clamp()`.

class Responsive {
  /// Creates a responsive helper using the current screen size.
  const Responsive({
    required this.screenSize,
  });

  /// Current screen size.
  final Size screenSize;

  /// Current screen width.
  double get width => screenSize.width;

  /// Current screen height.
  double get height => screenSize.height;

  /// Current device category.
  DeviceType get deviceType => AppBreakpoints.deviceType(width);

  /// Returns true if the device is a compact phone.
  bool get isCompact => deviceType == DeviceType.compact;

  /// Returns true if the device is a standard phone.
  bool get isPhone => deviceType == DeviceType.phone;

  /// Returns true if the device is a large phone.
  bool get isLargePhone => deviceType == DeviceType.largePhone;

  /// Returns true if the device is a tablet or foldable in portrait mode.
  bool get isTablet => deviceType == DeviceType.tablet;

  /// Returns true if the device is a desktop or expanded foldable.
  bool get isDesktop => deviceType == DeviceType.desktop;

  /// Returns true for any mobile device.
  bool get isMobile => isCompact || isPhone || isLargePhone;

  /// Returns true if the device is a foldable or large adaptive layout.
  bool get isFoldable =>
      width >= AppBreakpoints.tablet &&
          width < AppBreakpoints.desktop;

  /// Returns true when the UI should use a compact layout.
  bool get useCompactLayout => isCompact;

  /// Returns true when the UI should use an expanded layout.
  bool get useExpandedLayout => isTablet || isDesktop;

  /// Base design width used for scaling calculations.
  static const double _designWidth = 390;

  /// Returns the width scaling factor adjusted for the current device type.
  ///
  /// Tablets and desktop layouts use a reduced scaling factor to prevent
  /// excessively large UI elements.
  double get _scaleFactor {
    final factor = width / _designWidth;

    switch (deviceType) {
      case DeviceType.compact:
      case DeviceType.phone:
      case DeviceType.largePhone:
        return factor;

      case DeviceType.tablet:
        return factor * 0.75;

      case DeviceType.desktop:
        return factor * 0.70;
    }
  }

  /// Returns adaptive spacing.
  double space(double value) {
    return _clamp(value, min: 0.85, max: 1.30);
  }

  /// Returns adaptive font size.
  double font(double value) {
    return _clamp(value, min: 0.90, max: 1.20);
  }

  /// Returns adaptive border radius.
  double radius(double value) {
    return _clamp(value, min: 0.90, max: 1.25);
  }

  /// Returns adaptive icon size.
  double icon(double value) {
    return _clamp(value, min: 0.90, max: 1.20);
  }

  /// Returns adaptive width.
  double widthValue(double value) {
    return value * _scaleFactor;
  }

  /// Returns adaptive height.
  double heightValue(double value) {
    final factor = height / 844;
    final scaled = value * factor;
    return math.max(value * 0.90, math.min(value * 1.20, scaled));
  }

  /// Returns a percentage of the screen width
  double wp(double percent) => width * percent;

  /// Returns a percentage of the screen height.
  double hp(double percent) => height * percent;

  /// Internal clamp helper used by adaptive scaling methods.
  double _clamp(
      double value, {
        required double min,
        required double max,
      }) {
    final scaled = value * _scaleFactor;
    return math.max(value * min, math.min(value * max, scaled));
  }
}