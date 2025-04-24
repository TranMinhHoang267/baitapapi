import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  final Map<String, dynamic> task;

  TaskDetailScreen(this.task);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task['title'],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(task['description']),
            SizedBox(height: 16),
            Text(
              "Subtasks",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ..._buildSubtasks(task['subtasks']),
            SizedBox(height: 16),
            Text(
              "Attachments",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ..._buildAttachments(task['attachments']),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSubtasks(List<dynamic>? subtasks) {
    if (subtasks == null || subtasks.isEmpty) {
      return [Text("No subtasks available")];
    }
    return subtasks.map((subtask) {
      return Card(child: ListTile(title: Text(subtask)));
    }).toList();
  }

  List<Widget> _buildAttachments(List<dynamic>? attachments) {
    if (attachments == null || attachments.isEmpty) {
      return [Text("No attachments available")];
    }
    return attachments.map((attachment) {
      return Card(child: ListTile(title: Text(attachment)));
    }).toList();
  }
}
