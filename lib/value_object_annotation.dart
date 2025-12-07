/// An annotation to define a value object with optional constraints.
///
/// [T]: The data type of the value object (e.g., String, int).
/// [min]: The minimum value for numeric types.
/// [max]: The maximum value for numeric types.
/// [minLength]: The minimum length for string types.
/// [maxLength]: The maximum length for string types.
/// [comparable]: Whether the value object should implement comparison operators.
///
/// Example usage:
/// ```dart
/// import 'package:simple_value_object_annotation/value_object_annotation.dart';
///
/// @ValueObject(String, minLength: 3, maxLength: 50)
/// class Username {}
/// ```
class ValueObject<T> {
  /// The minimum value for numeric types.
  final num? min;

  /// The maximum value for numeric types.
  final num? max;

  /// The minimum length for string types.
  final int? minLength;

  /// The maximum length for string types.
  final int? maxLength;

  /// A map of predefined constant values for the value object.
  final Map<String, T>? presets;

  /// Ctor for ValueObject annotation.
  const ValueObject({
    this.min,
    this.max,
    this.minLength,
    this.maxLength,
    this.presets,
  });
}
