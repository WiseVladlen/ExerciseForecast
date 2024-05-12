import 'package:flutter/material.dart';

class ColorPalette extends ThemeExtension<ColorPalette> {
  const ColorPalette({this.textFieldPrimary = Colors.green});

  final Color textFieldPrimary;

  @override
  ThemeExtension<ColorPalette> copyWith({Color? textFieldPrimary}) {
    return ColorPalette(
      textFieldPrimary: textFieldPrimary ?? this.textFieldPrimary,
    );
  }

  @override
  ThemeExtension<ColorPalette> lerp(covariant ThemeExtension<ColorPalette>? other, double t) {
    if (other is! ColorPalette) return this;

    return ColorPalette(
      textFieldPrimary: Color.lerp(textFieldPrimary, other.textFieldPrimary, t)!,
    );
  }
}
