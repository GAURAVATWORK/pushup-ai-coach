
import 'package:pushupaicoach/core/enums/device_type.dart';

/// Centralized breakpoint values for responsive layout decisions.

abstract final class AppBreakpoints {
  /// Maximum width for compact phones.
  static const double compact = 360;

  /// Maximum width for standard phones.
  static const double phone = 480;

  /// Maximum width for large phones.
  static const double largePhone = 768;

  /// Maximum width for tablets.
  static const double tablet = 1024;

  /// Minimum width for desktop and expanded foldable layouts.
  static const double desktop = 1024;

  /// Returns the appropriate [DeviceType] for the given screen width.
  ///
  /// This method is used by the responsive engine to determine
  /// layout behavior and scaling rules throughout the application.
  static DeviceType deviceType(double width) {
    if (width < compact) return DeviceType.compact;
    if (width < phone) return DeviceType.phone;
    if (width < largePhone) return DeviceType.largePhone;
    if (width < tablet) return DeviceType.tablet;
    return DeviceType.desktop;
  }
}