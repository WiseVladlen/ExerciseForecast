import 'package:dio/dio.dart';
import 'package:exercise_forecast/data/dto/request_dto.dart';
import 'package:exercise_forecast/data/dto/response_dto.dart';
import 'package:exercise_forecast/data/http_helper/dio_service.dart';
import 'package:exercise_forecast/data/http_helper/rest_path.dart';
import 'package:exercise_forecast/logic/model/prediction_result.dart';
import 'package:exercise_forecast/logic/model/weight_category.dart';

class Repository {
  const Repository({required DioService service}) : _service = service;

  final DioService _service;

  Future<PredictionResult> calculate(WeightCategory category) async {
    return ResponseDto.fromJson(<String, dynamic>{}).result; // TODO

    final Response<dynamic> response = await _service.client.get<dynamic>(
      RestPath.endpoint,
      data: RequestDto(category: category).toJson(),
    );
    final Map<String, dynamic> responseData = response.data as Map<String, dynamic>;

    return ResponseDto.fromJson(responseData).result;
  }
}
