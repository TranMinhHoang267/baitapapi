import 'package:flutter/material.dart';
import '../entity/subtask.dart';

class DetailScreen extends StatelessWidget {
  final Task task;

  const DetailScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.title, style: const TextStyle(color: Colors.blue)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Description
              const Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                task.description,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 24),

              /// Subtasks
              const Text(
                'Subtasks',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...task.subtasks.map(
                (subtask) => ListTile(
                  leading: Icon(
                    subtask.isCompleted
                        ? Icons.check_circle
                        : Icons.radio_button_unchecked,
                    color: subtask.isCompleted ? Colors.green : Colors.grey,
                  ),
                  title: Text(subtask.title),
                ),
              ),
              const SizedBox(height: 24),

              /// Attachments
              const Text(
                'Attachments',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...task.attachments.map(
                (attachment) => ListTile(
                  leading: const Icon(Icons.attach_file),
                  title: Text(attachment.fileName),
                  onTap: () {
                    // Bạn có thể mở attachment.fileUrl ở đây nếu muốn
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Open ${attachment.fileUrl}')),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
