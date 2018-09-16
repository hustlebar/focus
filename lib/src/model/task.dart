class Task {
  Task(this.title);

  final String title;
  
  DateTime deadline;
  TaskType taskType;
  TaskState taskState;
}

enum TaskType {work, home, community, personal}

enum TaskState {open, done, followup}