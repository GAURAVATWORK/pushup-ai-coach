/// Represents the supported device categories used by the custom
/// responsive engine.
///
/// The application uses these categories to adapt layouts, spacing,
/// typography, and UI components across different screen sizes.
enum DeviceType {
  /// Small devices such as older Android phones and compact iPhones.
  compact,

  /// Standard mobile phones.
  phone,

  /// Large phones and small foldables in phone mode.
  largePhone,

  /// Tablets and foldables in portrait mode.
  tablet,

  /// Desktop and foldables in expanded landscape mode.
  desktop,
}