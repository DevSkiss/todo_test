import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_test/application/data/services/database_helper.dart';
import 'package:todo_test/application/data/services/sample_services.dart';
import 'package:todo_test/application/domain/bloc/application_bloc.dart';
import 'package:todo_test/features/todo/data/services/todo_local_data_services.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_bloc.dart';
import 'package:todo_test/features/todo/domain/repositories/todo_local_data_repository.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // API Services
  locator.registerLazySingleton<SampleApiService>(() => SampleApiServiceImpl());
  locator.registerLazySingleton<TodoLocalDataSerivce>(
      () => TodoLocalDataSerivceImpl());

  // Repository
  locator.registerLazySingleton<TodoLocalDataRepository>(
      () => TodoLocalDataRepositoryImpl());

  // Blocs
  locator.registerFactory(() => TodoBloc());
  locator.registerFactory(() => ApplicationBloc());

  // Local Storage
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => sharedPreferences);
  locator.registerLazySingleton(() => DatabaseHelper.instance);

  // Utils
  locator.registerLazySingleton(() => Logger());
}
