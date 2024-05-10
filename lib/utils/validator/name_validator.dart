import 'package:formz/formz.dart';

enum NameValidationError {
  invalid;

  static const String message = 'The name should be between ${NameValidator.minLength} and ${NameValidator.maxLength}';
}

class NameValidator extends FormzInput<String, NameValidationError> {
  const NameValidator.pure() : super.pure('');

  const NameValidator.dirty([super.value = '']) : super.dirty();

  static const int minLength = 2;
  static const int maxLength = 30;

  bool get hasError => displayError != null;

  @override
  NameValidationError? validator(String? value) {
    if (value == null) return null;

    final String name = value.trim();
    return (name.length >= minLength && name.length <= maxLength) ? null : NameValidationError.invalid;
  }
}
