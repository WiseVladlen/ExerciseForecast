import 'package:exercise_forecast/logic/model/gender.dart';
import 'package:exercise_forecast/ui/page/data_entry_page/data_entry_state.dart';
import 'package:exercise_forecast/utils/validator/age_validator.dart';
import 'package:exercise_forecast/utils/validator/duration_validator.dart';
import 'package:exercise_forecast/utils/validator/height_validator.dart';
import 'package:exercise_forecast/utils/validator/name_validator.dart';
import 'package:exercise_forecast/utils/validator/weight_validator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

class DataEntryStateNotifier extends StateNotifier<DataEntryState> {
  DataEntryStateNotifier() : super(const DataEntryState());

  void changeUsername(String value) {
    final NameValidator username = NameValidator.dirty(value);

    state = state.copyWith(
      usernameValidator: username,
      isValid: Formz.validate(<FormzInput<String, dynamic>>[
            username,
            state.heightValidator,
            state.weightValidator,
            state.ageValidator,
            state.durationValidator,
          ]) &&
          state.gender != null,
    );
  }

  void changeAge(String value) {
    final AgeValidator age = AgeValidator.dirty(value);

    state = state.copyWith(
      ageValidator: age,
      isValid: Formz.validate(<FormzInput<String, dynamic>>[
            state.usernameValidator,
            state.heightValidator,
            state.weightValidator,
            age,
            state.durationValidator,
          ]) &&
          state.gender != null,
    );
  }

  void changeHeight(String value) {
    final HeightValidator height = HeightValidator.dirty(value);

    state = state.copyWith(
      heightValidator: height,
      isValid: Formz.validate(<FormzInput<String, dynamic>>[
            state.usernameValidator,
            height,
            state.weightValidator,
            state.ageValidator,
            state.durationValidator,
          ]) &&
          state.gender != null,
    );
  }

  void changeWeight(String value) {
    final WeightValidator weight = WeightValidator.dirty(value);

    state = state.copyWith(
      weightValidator: weight,
      isValid: Formz.validate(<FormzInput<String, dynamic>>[
            state.usernameValidator,
            state.heightValidator,
            weight,
            state.ageValidator,
            state.durationValidator,
          ]) &&
          state.gender != null,
    );
  }

  void changeDurationOfExercise(String value) {
    final DurationValidator duration = DurationValidator.dirty(value);

    state = state.copyWith(
      durationValidator: duration,
      isValid: Formz.validate(<FormzInput<String, dynamic>>[
            state.usernameValidator,
            state.heightValidator,
            state.weightValidator,
            state.ageValidator,
            duration,
          ]) &&
          state.gender != null,
    );
  }

  void changeGender(Gender value) {
    state = state.copyWith(
      gender: value,
      isValid: Formz.validate(<FormzInput<String, dynamic>>[
        state.usernameValidator,
        state.heightValidator,
        state.weightValidator,
        state.ageValidator,
        state.durationValidator,
      ]),
    );
  }
}
