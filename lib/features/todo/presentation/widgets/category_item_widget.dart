import 'package:flutter/material.dart';
import 'package:todo_test/core/presentation/widgets/default_text.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    this.onTap,
    required this.numberOfTasks,
    required this.categoryName,
  });

  final int numberOfTasks;
  final String categoryName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18)
            .copyWith(right: 24),
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
              '$numberOfTasks ${numberOfTasks > 1 ? 'Tasks' : 'Task'}',
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 8),
            DefaultText(
              categoryName,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
