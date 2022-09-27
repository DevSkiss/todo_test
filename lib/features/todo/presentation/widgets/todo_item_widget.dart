import 'package:flutter/material.dart';
import 'package:todo_test/core/presentation/widgets/default_text.dart';

class TodoItemWidget extends StatelessWidget {
  const TodoItemWidget(
    this.textTasks, {
    super.key,
    this.onDelete,
    this.onCompleted,
    this.circleColor = Colors.blue,
    this.isCompleted = false,
    this.isPriority = false,
  });

  final Color circleColor;
  final String textTasks;
  final void Function()? onDelete;
  final bool isCompleted;
  final bool isPriority;
  final void Function()? onCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: onCompleted,
            child: Icon(
              isCompleted ? Icons.check_circle : Icons.circle_outlined,
              color: circleColor,
            ),
          ),
          const SizedBox(width: 16),
          DefaultText(
            textTasks,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            decoration:
                isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
          ),
          const Spacer(),
          if (isPriority)
            const Icon(
              Icons.flag_outlined,
              color: Colors.amber,
            ),
          GestureDetector(
            onTap: onDelete,
            child: Icon(
              Icons.delete,
              color: Colors.red[700],
            ),
          ),
        ],
      ),
    );
  }
}
