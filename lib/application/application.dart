import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_test/application/domain/models/application_config.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_bloc.dart';
import 'package:todo_test/features/todo/presentation/screens/todo_screen.dart';

class Application extends StatefulWidget {
  const Application({
    Key? key,
    required this.appConfig,
  }) : super(key: key);

  final ApplicationConfig appConfig;

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoBloc>(
          create: (BuildContext context) => TodoBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo Test',
        home: TodoScreen(),
      ),
    );
  }
}
