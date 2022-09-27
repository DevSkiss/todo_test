import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_test/features/todo/data/models/todo_model_dto.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  factory TodoState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isFinished,
    @Default(false) bool isPriority,
    List<TodoModelDto>? completedTodos,
    List<TodoModelDto>? notCompletedTodos,
  }) = _TodoState;
}
