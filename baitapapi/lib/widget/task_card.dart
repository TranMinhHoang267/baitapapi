import 'package:flutter/material.dart';
import '../entity/subtask.dart';
import '../screens/detail.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final Color backgroundColor;

  const TaskCard({
    super.key,
    required this.task,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 👇 Khi bấm vào card, sẽ chuyển sang DetailScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen(task: task)),
        );
      },
      child: Card(
        color: backgroundColor,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                task.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
