import 'package:formz/formz.dart';

enum HeightValidationError {
  invalid;

  static const String message =
      'The height should be between ${HeightValidator.lowerLimit} and ${HeightValidator.upperLimit}';
}

class HeightValidator extends FormzInput<String, HeightValidationError> {
  const HeightValidator.dirty([super.value = '']) : super.dirty();

  const HeightValidator.pure() : super.pure('');

  static const int lowerLimit = 140;
  static const int upperLimit = 220;

  bool get hasError => displayError != null;

  @override
  HeightValidationError? validator(String? value) {
    if (value == null) return null;

    try {
      final double height = double.parse(value);
      return height >= lowerLimit && height <= upperLimit ? null : HeightValidationError.invalid;
    } catch (e) {
      return HeightValidationError.invalid;
    }
  }
}
