/// An annotation to define a value object with optional constraints.
/// 
/// [type]: The data type of the value object (e.g., String, int).
/// [min]: The minimum value for numeric types.
/// [max]: The maximum value for numeric types.
/// [minLength]: The minimum length for string types.
/// [maxLength]: The maximum length for string types.
/// 
/// Example usage:
/// ```dart
/// import 'package:simple_value_object_annotation/value_object_annotation.dart';
/// 
/// @ValueObject(String, minLength: 3, maxLength: 50)
/// class Username {}
/// ```
class ValueObject {
  /// The data type of the value object (e.g., String, int).
  final Type type;
  /// The minimum value for numeric types.
  final num? min;
  /// The maximum value for numeric types.
  final num? max;
  /// The minimum length for string types.
  final int? minLength;
  /// The maximum length for string types.
  final int? maxLength;

  /// Ctor for ValueObject annotation.
  const ValueObject(
    this.type, {
    this.min,
    this.max,
    this.minLength,
    this.maxLength,
  });
}
