import 'package:formz/formz.dart';

enum WeightValidationError {
  invalid;

  static const String message =
      'The weight should be between ${WeightValidator.lowerLimit} and ${WeightValidator.upperLimit}';
}

class WeightValidator extends FormzInput<String, WeightValidationError> {
  const WeightValidator.dirty([super.value = '']) : super.dirty();

  const WeightValidator.pure() : super.pure('');

  static const int lowerLimit = 40;
  static const int upperLimit = 200;

  bool get hasError => displayError != null;

  @override
  WeightValidationError? validator(String? value) {
    if (value == null) return null;

    try {
      final double weight = double.parse(value);
      return weight >= lowerLimit && weight <= upperLimit ? null : WeightValidationError.invalid;
    } catch (e) {
      return WeightValidationError.invalid;
    }
  }
}
