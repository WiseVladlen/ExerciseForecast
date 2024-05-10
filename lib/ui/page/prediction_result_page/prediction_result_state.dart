import 'package:exercise_forecast/logic/model/prediction_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_result_state.freezed.dart';

@freezed
class PredictionResultState with _$PredictionResultState {
  const factory PredictionResultState({
    @Default(PredictionResult.empty) PredictionResult value,
  }) = _PredictionResultState;
}
