import 'package:flutter/material.dart';
import 'package:todo_test/application/application.dart';
import 'package:todo_test/application/domain/models/application_config.dart';
import 'application/dependency_injector.dart' as di;

void commonMain({required ApplicationConfig config}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(
    Application(appConfig: config),
  );
}
