import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_test/application/dependency_injector.dart';
import 'package:todo_test/features/todo/data/models/todo_model_dto.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_state.dart';
import 'package:todo_test/features/todo/domain/repositories/todo_local_data_repository.dart';

class TodoBloc extends Cubit<TodoState> {
  TodoBloc() : super(TodoState()) {
    initialized();
  }
  final TodoLocalDataRepository _repository =
      locator<TodoLocalDataRepository>();

  void initialized() async {
    try {
      emit(state.copyWith(isLoading: true));
      List<TodoModelDto> todos = await _repository.getTodoList();
      List<TodoModelDto> completed = [];
      List<TodoModelDto> notCompleted = [];

      for (var todo in todos) {
        if (todo.completed == 1) {
          completed.add(todo);
        } else {
          notCompleted.add(todo);
        }
      }
      emit(state.copyWith(
        isLoading: false,
        isPriority: false,
        completedTodos: completed,
        notCompletedTodos: notCompleted,
      ));
    } catch (e) {
      emit(state.copyWith(hasError: true, isLoading: false));
      emit(state.copyWith(hasError: false));
    }
  }

  void onChangePriority() {
    emit(state.copyWith(isPriority: !state.isPriority));
  }

  Future<void> insertNewTodo({
    required String todo,
    required bool isPriority,
  }) async {
    try {
      emit(state.copyWith(isLoading: true));
      await _repository.insertTodoItem(
        todo: todo,
        isPriority: isPriority,
      );
      emit(state.copyWith(
        isLoading: false,
        isFinished: true,
        isPriority: false,
      ));
    } catch (e) {
      emit(state.copyWith(hasError: true, isLoading: false));
      emit(state.copyWith(hasError: false));
    }
  }

  Future<void> onCompletedTodo({
    required int id,
    required bool isCompleted,
  }) async {
    try {
      emit(state.copyWith(isLoading: true));
      await _repository.onCompleteTodo(
        id,
        isCompleted: isCompleted,
      );
      initialized();
    } catch (e) {
      emit(state.copyWith(hasError: true, isLoading: false));
      emit(state.copyWith(hasError: false));
    }
  }

  Future<void> onDeleteTodo(
    int id,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      await _repository.removeTodoItem(id);
      initialized();
    } catch (e) {
      emit(state.copyWith(hasError: true, isLoading: false));
      emit(state.copyWith(hasError: false));
    }
  }
}
