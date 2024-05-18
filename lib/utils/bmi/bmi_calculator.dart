import 'dart:math';

import 'package:exercise_forecast/logic/model/user.dart';
import 'package:exercise_forecast/logic/model/weight_category.dart';
import 'package:exercise_forecast/utils/bmi/bmi_extension.dart';

abstract class BMICalculator {
  static WeightClass run(User user) {
    final double value = (user.weight / pow(user.height, 2)) * 10000;
    return user.gender.isMale ? value.femaleWeightClass : value.maleWeightClass;
  }
}
