import 'package:exercise_forecast/logic/model/weight_category.dart';

extension MaleBMI on double {
  WeightCategory get maleWeightClass => switch (this) {
        >= 0 && <= 17.5 => WeightCategory.underweight,
        >= 17.5 && <= 24 => WeightCategory.normalWeight,
        >= 24 && <= 29 => WeightCategory.overweight,
        >= 29 && <= 34 => WeightCategory.obesityGradeOne,
        >= 34 && <= 39 => WeightCategory.obesityGradeTwo,
        _ => WeightCategory.obesityGradeThree,
      };
}

extension FemaleBMI on double {
  WeightCategory get femaleWeightClass => switch (this) {
        >= 0 && <= 18.5 => WeightCategory.underweight,
        >= 18.5 && <= 25 => WeightCategory.normalWeight,
        >= 25 && <= 30 => WeightCategory.overweight,
        >= 30 && <= 35 => WeightCategory.obesityGradeOne,
        >= 35 && <= 40 => WeightCategory.obesityGradeTwo,
        _ => WeightCategory.obesityGradeThree,
      };
}
