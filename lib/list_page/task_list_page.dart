import 'package:flutter/material.dart';
import 'package:flutter_hero/item_page/task_item.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),

      appBar: AppBar(
        backgroundColor: const Color(0xFF111111),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "스파르타’s Tasks",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 80),
        itemCount: 20,
        itemBuilder: (context, index) {
          return TaskItem(
            title: "New Todo ${54 - index}",
            isDone: index < 3,
            isStar: index == 2,
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
