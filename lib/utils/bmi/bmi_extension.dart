import 'package:exercise_forecast/logic/model/weight_category.dart';

extension MaleBMI on double {
  WeightClass get maleWeightClass => switch (this) {
        >= 0 && <= 17.5 => WeightClass.underWeight,
        >= 17.5 && <= 24 => WeightClass.normalWeight,
        >= 24 && <= 29 => WeightClass.overWeight,
        >= 29 && <= 34 => WeightClass.obesityGradeOne,
        >= 34 && <= 39 => WeightClass.obesityGradeTwo,
        _ => WeightClass.obesityGradeThree,
      };
}

extension FemaleBMI on double {
  WeightClass get femaleWeightClass => switch (this) {
        >= 0 && <= 18.5 => WeightClass.underWeight,
        >= 18.5 && <= 25 => WeightClass.normalWeight,
        >= 25 && <= 30 => WeightClass.overWeight,
        >= 30 && <= 35 => WeightClass.obesityGradeOne,
        >= 35 && <= 40 => WeightClass.obesityGradeTwo,
        _ => WeightClass.obesityGradeThree,
      };
}
