import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model_dto.g.dart';

@JsonSerializable()
class TodoModelDto {
  TodoModelDto(
    this.id,
    this.completed,
    this.priority,
    this.todo,
  );

  factory TodoModelDto.fromJson(Map<String, dynamic> json) =>
      _$TodoModelDtoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoModelDtoToJson(this);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'completed')
  final int completed;

  @JsonKey(name: 'priority')
  final int? priority;

  @JsonKey(name: 'todo')
  final String todo;
}
