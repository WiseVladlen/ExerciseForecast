import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:exercise_forecast/data/dto/response_dto.dart';
import 'package:exercise_forecast/data/http_helper/dio_service.dart';
import 'package:exercise_forecast/data/http_helper/rest_path.dart';
import 'package:exercise_forecast/logic/model/prediction_result.dart';
import 'package:exercise_forecast/logic/model/weight_category.dart';

class Repository {
  const Repository({required DioService service}) : _service = service;

  final DioService _service;

  Future<PredictionResult> calculate(WeightClass weightClass) async {
    final Response<dynamic> response = await _service.client.get<dynamic>(
      RestPath.endpoint,
      queryParameters: <String, dynamic>{'weight_class': weightClass.name},
    );
    final Map<String, dynamic> responseData = jsonDecode(response.data as String) as Map<String, dynamic>;

    return ResponseDto.fromJson(responseData).result;
  }
}
