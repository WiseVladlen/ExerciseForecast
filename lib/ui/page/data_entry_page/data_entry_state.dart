import 'package:exercise_forecast/logic/model/gender.dart';
import 'package:exercise_forecast/utils/validator/age_validator.dart';
import 'package:exercise_forecast/utils/validator/duration_validator.dart';
import 'package:exercise_forecast/utils/validator/height_validator.dart';
import 'package:exercise_forecast/utils/validator/name_validator.dart';
import 'package:exercise_forecast/utils/validator/weight_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_entry_state.freezed.dart';

@freezed
class DataEntryState with _$DataEntryState {
  const factory DataEntryState({
    @Default(NameValidator.pure()) NameValidator usernameValidator,
    @Default(HeightValidator.pure()) HeightValidator heightValidator,
    @Default(WeightValidator.pure()) WeightValidator weightValidator,
    @Default(AgeValidator.pure()) AgeValidator ageValidator,
    @Default(DurationValidator.pure()) DurationValidator durationValidator,
    @Default(null) Gender? gender,
    @Default(false) bool isValid,
  }) = _DataEntryState;
}
