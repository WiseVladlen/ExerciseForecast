import 'package:formz/formz.dart';

enum AgeValidationError {
  invalid;

  static const String message = 'The age should be between ${AgeValidator.lowerLimit} and ${AgeValidator.upperLimit}';
}

class AgeValidator extends FormzInput<String, AgeValidationError> {
  const AgeValidator.dirty([super.value = '']) : super.dirty();

  const AgeValidator.pure() : super.pure('');

  static const int lowerLimit = 8;
  static const int upperLimit = 100;

  bool get hasError => displayError != null;

  @override
  AgeValidationError? validator(String? value) {
    if (value == null) return null;

    try {
      final int age = int.parse(value);
      return age >= lowerLimit && age <= upperLimit ? null : AgeValidationError.invalid;
    } catch (e) {
      return AgeValidationError.invalid;
    }
  }
}
