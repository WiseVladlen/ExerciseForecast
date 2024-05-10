import 'package:exercise_forecast/utils/color_palette.dart';
import 'package:exercise_forecast/utils/text_style.dart';
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  TextStyles get textStyles => Theme.of(this).extension<TextStyles>()!;

  ColorPalette get colors => Theme.of(this).extension<ColorPalette>()!;
}
