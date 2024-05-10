import 'package:exercise_forecast/utils/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final class StandardTextField extends StatelessWidget {
  const StandardTextField._({
    super.key,
    required this.labelText,
    required this.errorText,
    this.keyboardType = TextInputType.text,
    this.padding = EdgeInsets.zero,
    required this.onChanged,
  });

  const StandardTextField.username({
    String? errorText,
    required EdgeInsets padding,
    required ValueChanged<String> onChanged,
  }) : this._(
          key: const ValueKey<String>('username_field_key'),
          labelText: 'Username',
          errorText: errorText,
          padding: padding,
          onChanged: onChanged,
        );

  const StandardTextField.age({
    String? errorText,
    required EdgeInsets padding,
    required ValueChanged<String> onChanged,
  }) : this._(
          key: const ValueKey<String>('age_field_key'),
          labelText: 'Age',
          errorText: errorText,
          keyboardType: TextInputType.number,
          padding: padding,
          onChanged: onChanged,
        );

  const StandardTextField.height({
    String? errorText,
    required EdgeInsets padding,
    required ValueChanged<String> onChanged,
  }) : this._(
          key: const ValueKey<String>('height_field_key'),
          labelText: 'Height',
          errorText: errorText,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          padding: padding,
          onChanged: onChanged,
        );

  const StandardTextField.weight({
    String? errorText,
    required EdgeInsets padding,
    required ValueChanged<String> onChanged,
  }) : this._(
          key: const ValueKey<String>('weight_field_key'),
          labelText: 'Weight',
          errorText: errorText,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          padding: padding,
          onChanged: onChanged,
        );

  const StandardTextField.durationOfExercise({
    String? errorText,
    required EdgeInsets padding,
    required ValueChanged<String> onChanged,
  }) : this._(
          key: const ValueKey<String>('duration_of_exercise_field_key'),
          labelText: 'Desired duration of exercise',
          errorText: errorText,
          keyboardType: TextInputType.number,
          padding: padding,
          onChanged: onChanged,
        );

  final TextInputType keyboardType;

  final String labelText;

  final String? errorText;

  final EdgeInsets padding;

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: errorText == null ? context.textStyles.textFieldLabel : null,
          errorText: errorText,
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: context.colors.textFieldPrimary,
            ),
          ),
        ),
        inputFormatters: <TextInputFormatter>[
          if (keyboardType == TextInputType.number) ...<TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
          ],
          if (keyboardType == const TextInputType.numberWithOptions(decimal: true)) ...<TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}')),
          ],
        ],
        onChanged: onChanged,
        cursorColor: context.colors.textFieldPrimary,
      ),
    );
  }
}

final class ReadableTextField extends StatelessWidget {
  const ReadableTextField({
    super.key,
    required this.labelText,
    required this.initialValue,
    this.errorText,
    this.padding = EdgeInsets.zero,
    required this.onTap,
  });

  final String labelText;

  final String initialValue;

  final String? errorText;

  final EdgeInsets padding;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: TextEditingController(text: initialValue),
        readOnly: true,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: errorText == null ? context.textStyles.textFieldLabel : null,
          errorText: errorText,
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: context.colors.textFieldPrimary,
            ),
          ),
        ),
        cursorColor: context.colors.textFieldPrimary,
        onTap: onTap,
      ),
    );
  }
}
