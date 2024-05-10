import 'package:exercise_forecast/logic/model/prediction_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_dto.g.dart';

@JsonSerializable(createToJson: false)
final class ResponseDto {
  const ResponseDto({
    required this.chartData,
    required this.description,
    required this.videoUrl,
  });

  factory ResponseDto.fromJson(Map<String, dynamic> json) => _$ResponseDtoFromJson(json);

  @JsonKey(name: 'chart_data', defaultValue: '')
  final String chartData;

  @JsonKey(name: 'description', defaultValue: '')
  final String description;

  @JsonKey(name: 'video_url', defaultValue: '')
  final String videoUrl;
}

extension ResponseDtoX on ResponseDto {
  PredictionResult get result => PredictionResult(
        chartData: chartData,
        description: description,
        videoUrl: videoUrl,
      );
}
