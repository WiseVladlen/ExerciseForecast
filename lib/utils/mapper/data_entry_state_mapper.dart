import 'package:exercise_forecast/logic/model/gender.dart';
import 'package:exercise_forecast/logic/model/user.dart';
import 'package:exercise_forecast/ui/page/data_entry_page/data_entry_state.dart';

extension DataEntryStateMapper on DataEntryState {
  User get user => User(
        name: usernameValidator.value,
        height: double.tryParse(heightValidator.value) ?? 0.0,
        weight: double.tryParse(weightValidator.value) ?? 0.0,
        age: int.tryParse(ageValidator.value) ?? 0,
        gender: gender ?? Gender.male,
        durationOfExercise: int.tryParse(durationValidator.value) ?? 0,
      );
}
