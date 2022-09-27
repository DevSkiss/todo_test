import 'package:todo_test/application/dependency_injector.dart';
import 'package:todo_test/features/todo/data/models/todo_model_dto.dart';
import 'package:todo_test/features/todo/data/services/todo_local_data_services.dart';

abstract class TodoLocalDataRepository {
  Future<List<TodoModelDto>> getTodoList();
  Future<void> updateTodoItem(
    int id, {
    required String todo,
    required bool isPriority,
  });
  Future<void> insertTodoItem({
    required String todo,
    required bool isPriority,
  });
  Future<void> removeTodoItem(int id);

  Future<void> onCompleteTodo(
    int id, {
    required bool isCompleted,
  });
}

class TodoLocalDataRepositoryImpl implements TodoLocalDataRepository {
  final TodoLocalDataSerivce _dataSerivce = locator<TodoLocalDataSerivce>();
  @override
  Future<List<TodoModelDto>> getTodoList() async {
    return await _dataSerivce.getTodoList();
  }

  @override
  Future<void> insertTodoItem({
    required String todo,
    required bool isPriority,
  }) async {
    return await _dataSerivce.insertTodoItem(
        todo: todo, isPriority: isPriority);
  }

  @override
  Future<void> removeTodoItem(int id) async {
    return await _dataSerivce.removeTodoItem(id);
  }

  @override
  Future<void> updateTodoItem(int id,
      {required String todo, required bool isPriority}) async {
    return await _dataSerivce.updateTodoItem(
      id,
      todo: todo,
      isPriority: isPriority,
    );
  }

  @override
  Future<void> onCompleteTodo(int id, {required bool isCompleted}) async {
    return await _dataSerivce.onCompleteTodo(id, isCompleted: isCompleted);
  }
}
