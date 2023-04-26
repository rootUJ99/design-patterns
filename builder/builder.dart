class TaskBuilder {
  int? state;
  String concatVal = "";
  TaskBuilder(this.state);

  TaskBuilder taks1([String? task1String]) {
    this.state = this.state! + 1;
    this.concatVal += "$state";
    if (task1String != null) {
      this.concatVal += task1String;
    }
    return this;
  }

  TaskBuilder task2([String? task2String]) {
    this.state = this.state! + 1;
    this.concatVal += "$state";
    if (task2String != null) {
      this.concatVal += task2String;
    }
    return this;
  }

  TaskBuilder task3([String? task3String]) {
    this.state = this.state! + 1;
    this.concatVal += "$state";
    if (task3String != null) {
      this.concatVal += task3String;
    }
    return this;
  }

  String build() {
    return this.concatVal;
  }
}

void main() {
  TaskBuilder builtTask = TaskBuilder(0);
  String concatString = builtTask
      .taks1("first-task")
      .task2("task-two")
      .task3("task-three")
      .build();
  print(concatString);
}
