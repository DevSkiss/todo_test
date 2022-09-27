import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_test/core/presentation/widgets/default_text.dart';
import 'package:todo_test/core/presentation/widgets/scrollable_column.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_bloc.dart';
import 'package:todo_test/features/todo/domain/bloc/todo_state.dart';
import 'package:todo_test/features/todo/presentation/widgets/todo_item_widget.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ScrollableColumn(
          children: <Widget>[
            Row(
              children: const <Widget>[
                DefaultText(
                  "TODAY'S TASKS",
                  fontSize: 12,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...List.generate(
                state.notCompletedTodos?.length ?? 0,
                (index) => TodoItemWidget(
                      state.notCompletedTodos?[index].todo ?? '',
                      isPriority: state.notCompletedTodos?[index].priority == 1,
                      isCompleted:
                          state.notCompletedTodos?[index].completed == 1,
                      circleColor: index % 3 == 0 ? Colors.blue : Colors.pink,
                      onDelete: () {
                        context.read<TodoBloc>().onDeleteTodo(
                            state.notCompletedTodos?[index].id ?? 0);
                      },
                      onCompleted: () {
                        context.read<TodoBloc>().onCompletedTodo(
                              id: state.notCompletedTodos?[index].id ?? 0,
                              isCompleted:
                                  !(state.notCompletedTodos?[index].completed ==
                                      1),
                            );
                      },
                    )),
            const SizedBox(height: 32),
            const Align(
              alignment: Alignment.centerLeft,
              child: DefaultText(
                "COMPLETED TASKS",
                fontSize: 12,
                color: Colors.black54,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),
            ...List.generate(
              state.completedTodos?.length ?? 0,
              (index) => TodoItemWidget(
                state.completedTodos?[index].todo ?? '',
                isPriority: state.completedTodos?[index].priority == 1,
                isCompleted: state.completedTodos?[index].completed == 1,
                circleColor: index % 3 == 0 ? Colors.blue : Colors.pink,
                onDelete: () {
                  context
                      .read<TodoBloc>()
                      .onDeleteTodo(state.completedTodos?[index].id ?? 0);
                },
                onCompleted: () {
                  context.read<TodoBloc>().onCompletedTodo(
                        id: state.completedTodos?[index].id ?? 0,
                        isCompleted:
                            !(state.completedTodos?[index].completed == 1),
                      );
                },
              ),
            ),
            const SizedBox(height: 80)
          ],
        );
      },
    );
  }
}
