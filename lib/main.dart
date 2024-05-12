import 'package:dio/dio.dart';
import 'package:exercise_forecast/app.dart';
import 'package:exercise_forecast/data/http_helper/dio_service.dart';
import 'package:exercise_forecast/data/http_helper/rest_path.dart';
import 'package:exercise_forecast/data/repository.dart';
import 'package:exercise_forecast/logic/model/prediction_result.dart';
import 'package:exercise_forecast/logic/model/weight_category.dart';
import 'package:exercise_forecast/ui/page/data_entry_page/data_entry_state.dart';
import 'package:exercise_forecast/ui/page/data_entry_page/data_entry_state_notifier.dart';
import 'package:exercise_forecast/utils/bmi/bmi_calculator.dart';
import 'package:exercise_forecast/utils/mapper/data_entry_state_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final AutoDisposeProvider<DioService> httpServiceProvider = Provider.autoDispose<DioService>((
  AutoDisposeProviderRef<DioService> ref,
) {
  final DioService service = DioService(
    client: Dio(BaseOptions(baseUrl: RestPath.baseUrl))..interceptors.add(PrettyDioLogger()),
  );

  ref.onDispose(() => service.dispose());

  ref.maintainState = true;

  return service;
});

final Provider<Repository> repositoryProvider = Provider<Repository>((ProviderRef<Repository> ref) {
  return Repository(service: ref.read(httpServiceProvider));
});

final StateNotifierProvider<DataEntryStateNotifier, DataEntryState> dataEntryStateProvider =
    StateNotifierProvider<DataEntryStateNotifier, DataEntryState>(
  (StateNotifierProviderRef<DataEntryStateNotifier, DataEntryState> ref) => DataEntryStateNotifier(),
);

final FutureProvider<PredictionResult> predictionResultProvider = FutureProvider<PredictionResult>((
  FutureProviderRef<PredictionResult> ref,
) async {
  final WeightClass weightClass = BMICalculator.run(ref.watch(dataEntryStateProvider).user);

  return ref.read(repositoryProvider).calculate(weightClass);
});

void main() {
  runApp(const ProviderScope(child: App()));
}
