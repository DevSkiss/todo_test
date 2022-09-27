import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _databaseName = "todo_test_rocketlab.db";
  static const _databaseVersion = 1;

  // make this a singleton class
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();

    return _database!;
  }

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database database, int version) async {
    await database.execute(
      '''CREATE TABLE todolist (
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          completed INTEGER DEFAULT 0,
          priority INTEGER,
          todo TEXT 
      )''',
    );
  }
}
