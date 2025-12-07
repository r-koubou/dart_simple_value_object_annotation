/// An annotation to define a value object with optional constraints for code generation.
///
/// [T]: The data type of the value object (e.g., String, int).
///
/// Example usage:
/// ```dart
/// import 'package:simple_value_object_annotation/value_object_annotation.dart';
///
/// @ValueObject<String>(minLength: 5, maxLength: 80)
/// typedef Username = _$Username;
/// ```
class ValueObject<T> {
  /// The minimum value for numeric types.
  /// if null, no minimum constraint is applied.
  final num? min;

  /// The maximum value for numeric types.
  /// if null, no maximum constraint is applied.
  final num? max;

  /// The minimum length for value types.
  /// A code generator assumes that data types possess a `length` property when generating code.
  /// if null, no minimum length constraint is applied.
  final int? minLength;

  /// The maximum length for value types.
  /// A code generator assumes that data types possess a `length` property when generating code.
  /// if null, no maximum length constraint is applied.
  final int? maxLength;

  /// Whether to allow empty values, like empty strings or collections.
  /// A code generator assumes that data types possess a `isEmpty` property when generating code.
  /// if null, validation for emptiness is not applied.
  final bool? allowEmpty;

  /// A map of predefined constant values for the value object.
  final Map<String, T>? presets;

  /// Ctor for ValueObject annotation.
  const ValueObject({
    this.min,
    this.max,
    this.minLength,
    this.maxLength,
    this.allowEmpty,
    this.presets,
  });
}
