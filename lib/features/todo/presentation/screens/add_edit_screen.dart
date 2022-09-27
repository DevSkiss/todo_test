import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_test/core/presentation/utils/keyboard_dismisser.dart';
import 'package:todo_test/core/presentation/widgets/column_padding.dart';
import 'package:todo_test/core/presentation/widgets/default_button.dart';
import 'package:todo_test/core/presentation/widgets/default_textfield.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_bloc.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_state.dart';

class AddEditScreen extends StatefulWidget {
  const AddEditScreen({super.key});

  @override
  State<AddEditScreen> createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  final TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      listener: (context, state) {},
      builder: (context, state) {
        return KeyboardDismisser(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color(0xfffafafe),
            floatingActionButton: DefaultButton(
              buttonText: 'New Task',
              fontSize: 18,
              buttonHeight: 60,
              removeShadow: true,
              buttonWidth: 200,
              color: Colors.blue,
              shapeSize: 30,
              action: () async {
                await context.read<TodoBloc>().insertNewTodo(
                      todo: todoController.text.trim(),
                      isPriority: state.isPriority,
                    );
                if (!mounted) return;
                Navigator.of(context).pop();
              },
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: ColumnPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: <Widget>[
                    const SizedBox(height: 32),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    DefaultTextfield(
                      'Enter new Task',
                      controller: todoController,
                      width: double.infinity,
                      fontSize: 22,
                      height: 300,
                      maxLines: 20,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      focusColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                    ),
                    const SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        context.read<TodoBloc>().onChangePriority();
                      },
                      child: Icon(
                        state.isPriority
                            ? Icons.flag_circle
                            : Icons.flag_circle_outlined,
                        size: 40,
                        color: state.isPriority ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
