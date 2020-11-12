class Todo {
  String title;
  bool _isDone = false;

  Todo({this.title});

  void done() {
    _isDone = true;
  }
}
