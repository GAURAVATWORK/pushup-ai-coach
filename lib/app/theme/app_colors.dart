import 'package:flutter/material.dart';

abstract final class AppColors {
  // Prevent instantiation.
  AppColors._();

  // ---------------------------------------------------------------------------
  // Brand colors
  // ---------------------------------------------------------------------------

  /// Primary brand color used for buttons, highlights, and key actions.
  static const Color primary = Color(0xFFF97316);

  /// Secondary orange accent used for gradients and emphasis.
  static const Color primaryLight = Color(0xFFFB923C);

  /// Darker orange used for pressed states and deeper accents.
  static const Color primaryDark = Color(0xFFEA580C);

  // ---------------------------------------------------------------------------
  // Background colors
  // ---------------------------------------------------------------------------

  /// Main application background.
  static const Color background = Color(0xFF070B10);

  /// Secondary background for sections.
  static const Color backgroundSecondary = Color(0xFF0D131B);

  /// Surface color for cards and elevated components.
  static const Color surface = Color(0xFF111827);

  /// Elevated surface for dialogs and overlays.
  static const Color surfaceElevated = Color(0xFF17212B);

  // ---------------------------------------------------------------------------
  // Text colors
  // ---------------------------------------------------------------------------

  /// Primary text color.
  static const Color textPrimary = Color(0xFFFFFFFF);

  /// Secondary text color.
  static const Color textSecondary = Color(0xFFB8C1CC);

  /// Tertiary text color.
  static const Color textTertiary = Color(0xFF7B8794);

  /// Disabled text color.
  static const Color textDisabled = Color(0xFF5C6773);

  // ---------------------------------------------------------------------------
  // Border & divider colors
  // ---------------------------------------------------------------------------

  /// Standard border color.
  static const Color border = Color(0xFF243040);

  /// Subtle border color.
  static const Color borderLight = Color(0xFF1A2430);

  /// Divider color.
  static const Color divider = Color(0xFF1F2937);

  // ---------------------------------------------------------------------------
  // Status colors
  // ---------------------------------------------------------------------------

  /// Success state color.
  static const Color success = Color(0xFF22C55E);

  /// Warning state color.
  static const Color warning = Color(0xFFF59E0B);

  /// Error state color.
  static const Color error = Color(0xFFEF4444);

  /// Information state color.
  static const Color info = Color(0xFF3B82F6);

  // ---------------------------------------------------------------------------
  // Workout colors
  // ---------------------------------------------------------------------------

  /// Color for correctly performed repetitions.
  static const Color formGood = Color(0xFF22C55E);

  /// Color for partially correct form.
  static const Color formWarning = Color(0xFFF59E0B);

  /// Color for incorrect form detection.
  static const Color formBad = Color(0xFFEF4444);

  /// AI skeleton overlay color.
  static const Color skeleton = Color(0xFFFB923C);

  /// AI glow effect color.
  static const Color aiGlow = Color(0x66F97316);

  // ---------------------------------------------------------------------------
  // Chart colors
  // ---------------------------------------------------------------------------

  /// Weekly performance chart color.
  static const Color chartPrimary = Color(0xFFF97316);

  /// Secondary chart series.
  static const Color chartSecondary = Color(0xFF3B82F6);

  /// Grid line color.
  static const Color chartGrid = Color(0xFF1F2937);

  // ---------------------------------------------------------------------------
  // Utility colors
  // ---------------------------------------------------------------------------

  /// Transparent color.
  static const Color transparent = Colors.transparent;

  /// White color reference.
  static const Color white = Colors.white;

  /// Black color reference.
  static const Color black = Colors.black;
}