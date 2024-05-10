import 'package:exercise_forecast/logic/model/gender.dart';

extension GenderX on Gender {
  String toTitleFormat() => switch (this) {
        Gender.male => 'Male',
        Gender.female => 'Female',
      };
}
