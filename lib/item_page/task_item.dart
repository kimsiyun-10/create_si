import 'package:flutter/material.dart';
import 'package:flutter_hero/detail/task_detail_page.dart'; // 

class TaskItem extends StatelessWidget {
  final String title;
  final bool isDone;
  final bool isStar;

  const TaskItem({
    super.key,
    required this.title,
    this.isDone = false,
    this.isStar = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => TaskDetailPage(title: title),
          ),
        );
      },

      child: Hero(
        tag: "task_$title",
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF1C1C1C),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Icon(
                  isDone ? Icons.check_circle : Icons.radio_button_unchecked,
                  color: isDone ? Colors.white : Colors.grey,
                  size: 22,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      decoration: isDone
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ),
                Icon(
                  isStar ? Icons.star : Icons.star_border,
                  color: isStar ? Colors.yellow : Colors.grey,
                  size: 22,
                ),
                const SizedBox(width: 10),
                Icon(Icons.delete, color: Colors.grey, size: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
