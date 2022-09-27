import 'dart:developer';

import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_test/application/data/services/database_helper.dart';
import 'package:todo_test/application/dependency_injector.dart';
import 'package:todo_test/features/todo/data/models/todo_model_dto.dart';

abstract class TodoLocalDataSerivce {
  Future<List<TodoModelDto>> getTodoList();
  Future<void> updateTodoItem(
    int id, {
    required String todo,
    required bool isPriority,
  });

  Future<void> onCompleteTodo(
    int id, {
    required bool isCompleted,
  });

  Future<void> insertTodoItem({
    required String todo,
    required bool isPriority,
  });
  Future<void> removeTodoItem(int id);
}

class TodoLocalDataSerivceImpl implements TodoLocalDataSerivce {
  final DatabaseHelper databaseHelper = locator<DatabaseHelper>();
  final Logger _logger = locator<Logger>();

  @override
  Future<List<TodoModelDto>> getTodoList() async {
    final Database database = await databaseHelper.database;
    final List<Map<String, dynamic>> maps = await database.rawQuery(
        'SELECT * FROM todolist ORDER BY  priority + 0 DESC, todo ASC');
    _logger.i('list of todos');
    _logger.i(maps.toString());
    final List<TodoModelDto> todoList = List.generate(maps.length, (i) {
      return TodoModelDto.fromJson(maps[i]);
    });

    return todoList;
  }

  @override
  Future<void> insertTodoItem(
      {required String todo, required bool isPriority}) async {
    final Database database = await databaseHelper.database;
    await database.insert(
        'todolist',
        {
          'todo': todo,
          'priority': isPriority ? 1 : 0,
        },
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<void> removeTodoItem(int id) async {
    final Database database = await databaseHelper.database;
    await database.rawDelete('DELETE FROM todolist WHERE id = $id');
  }

  @override
  Future<void> updateTodoItem(
    int id, {
    required String todo,
    required bool isPriority,
  }) async {
    final Database database = await databaseHelper.database;
    await database.rawUpdate(
        'UPDATE todolist SET priority = ${isPriority ? 1 : 0}, todo = $todo WHERE id = $id');
  }

  @override
  Future<void> onCompleteTodo(
    int id, {
    required bool isCompleted,
  }) async {
    log('completed $id');
    final Database database = await databaseHelper.database;
    await database.rawUpdate(
        'UPDATE todolist SET completed = ${isCompleted ? 1 : 0} WHERE id = $id');
  }
}
