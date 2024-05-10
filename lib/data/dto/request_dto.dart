import 'package:exercise_forecast/logic/model/weight_category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request_dto.g.dart';

@JsonSerializable(createFactory: false)
final class RequestDto {
  const RequestDto({required this.category});

  Map<String, dynamic> toJson() => _$RequestDtoToJson(this);

  @JsonKey(name: 'category', defaultValue: '')
  final WeightCategory category;
}
