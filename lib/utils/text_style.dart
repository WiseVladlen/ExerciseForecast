import 'package:flutter/material.dart';

class TextStyles extends ThemeExtension<TextStyles> {
  const TextStyles({
    this.textFieldLabel = const TextStyle(color: Colors.green),
    this.noteText = const TextStyle(fontStyle: FontStyle.italic),
  });

  final TextStyle textFieldLabel;

  final TextStyle noteText;

  @override
  ThemeExtension<TextStyles> copyWith({
    TextStyle? textFieldLabel,
    TextStyle? noteText,
  }) {
    return TextStyles(
      textFieldLabel: textFieldLabel ?? this.textFieldLabel,
      noteText: noteText ?? this.noteText,
    );
  }

  @override
  ThemeExtension<TextStyles> lerp(covariant ThemeExtension<TextStyles>? other, double t) {
    if (other is! TextStyles) return this;

    return TextStyles(
      textFieldLabel: TextStyle.lerp(textFieldLabel, other.textFieldLabel, t)!,
      noteText: TextStyle.lerp(noteText, other.noteText, t)!,
    );
  }
}
