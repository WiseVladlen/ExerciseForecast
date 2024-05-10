import 'package:formz/formz.dart';

enum DurationValidationError {
  invalid;

  static const String message =
      'The duration should be between ${DurationValidator.lowerLimit} and ${DurationValidator.upperLimit}';
}

class DurationValidator extends FormzInput<String, DurationValidationError> {
  const DurationValidator.pure() : super.pure('');

  const DurationValidator.dirty([super.value = '']) : super.dirty();

  static const int lowerLimit = 5;
  static const int upperLimit = 100;

  bool get hasError => displayError != null;

  @override
  DurationValidationError? validator(String? value) {
    if (value == null) return null;

    try {
      final int duration = int.parse(value);
      return duration >= lowerLimit && duration <= upperLimit ? null : DurationValidationError.invalid;
    } catch (e) {
      return DurationValidationError.invalid;
    }
  }
}
