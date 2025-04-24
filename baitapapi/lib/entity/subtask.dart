class Subtask {
  final int id;
  final String title;
  final bool isCompleted;

  Subtask({required this.id, required this.title, required this.isCompleted});

  factory Subtask.fromJson(Map<String, dynamic> json) {
    return Subtask(
      id: json['id'],
      title: json['title'],
      isCompleted: json['isCompleted'],
    );
  }
}

class Attachment {
  final int id;
  final String fileName;
  final String fileUrl;

  Attachment({required this.id, required this.fileName, required this.fileUrl});

  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      id: json['id'],
      fileName: json['fileName'],
      fileUrl: json['fileUrl'],
    );
  }
}

class Task {
  final int id;
  final String title;
  final String description;
  final List<Subtask> subtasks;
  final List<Attachment> attachments;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.subtasks,
    required this.attachments,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      subtasks:
          (json['subtasks'] as List).map((e) => Subtask.fromJson(e)).toList(),
      attachments:
          (json['attachments'] as List)
              .map((e) => Attachment.fromJson(e))
              .toList(),
    );
  }
}
