// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModelDto _$TodoModelDtoFromJson(Map<String, dynamic> json) => TodoModelDto(
      json['id'] as int,
      json['completed'] as int,
      json['priority'] as int?,
      json['todo'] as String,
    );

Map<String, dynamic> _$TodoModelDtoToJson(TodoModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'completed': instance.completed,
      'priority': instance.priority,
      'todo': instance.todo,
    };
