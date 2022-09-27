import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_test/core/presentation/widgets/column_padding.dart';
import 'package:todo_test/core/presentation/widgets/default_text.dart';
import 'package:todo_test/core/presentation/widgets/loading_container.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_bloc.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_state.dart';
import 'package:todo_test/features/todo/presentation/screens/add_edit_screen.dart';
import 'package:todo_test/features/todo/presentation/widgets/category_item_widget.dart';
import 'package:todo_test/features/todo/presentation/widgets/todo_list_widget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return const TodoView();
  }
}

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xfffafafe),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const AddEditScreen();
              }));
              if (!mounted) return;
              context.read<TodoBloc>().initialized();
            },
            child: const Icon(Icons.add),
          ),
          body: LoadingContainer(
            isLoading: state.isLoading,
            child: SafeArea(
              top: true,
              child: ColumnPadding(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: <Widget>[
                  const SizedBox(height: 16),
                  const DefaultText(
                    "What's up, User!",
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 32),
                  const DefaultText(
                    "CATEGORIES",
                    fontSize: 12,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: <Widget>[
                      CategoryItemWidget(
                        categoryName: 'Not Completed',
                        numberOfTasks: state.notCompletedTodos?.length ?? 0,
                      ),
                      CategoryItemWidget(
                        categoryName: 'Completed',
                        numberOfTasks: state.completedTodos?.length ?? 0,
                      ),
                    ]),
                  ),
                  const SizedBox(height: 32),
                  const Expanded(
                    child: TodoListWidget(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
