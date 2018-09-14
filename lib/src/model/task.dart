class Task {
  Task(this.title);

  final String title;
  final DateTime deadline;
  TaskType taskType;
}

enum TaskType {work, home, community, personal}