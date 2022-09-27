import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_model_dto.g.dart';

@JsonSerializable()
class SampleModelDto {
  SampleModelDto(
    this.sampleString,
  );

  factory SampleModelDto.fromJson(Map<String, dynamic> json) =>
      _$SampleModelDtoFromJson(json);
  Map<String, dynamic> toJson() => _$SampleModelDtoToJson(this);

  @JsonKey(name: 'sampleString')
  final String sampleString;
}
