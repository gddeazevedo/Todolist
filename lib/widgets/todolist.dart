import 'package:flutter/material.dart';
import 'package:todolist/models/todo.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> _todos = [
    Todo(title: 'Todo 1'),
    Todo(title: 'Todo 2'),
    Todo(title: 'Todo 3'),
    Todo(title: 'Todo 4'),
  ];

  Widget _itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      child: Card(
        elevation: 0,
        color: Colors.deepPurple[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Container(
          child: ListTile(
            onTap: () => setState(() => print(_todos[index])),
            title: Text(
              _todos[index].title,
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey[200],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _todos.length,
      itemBuilder: _itemBuilder,
    );
  }
}
