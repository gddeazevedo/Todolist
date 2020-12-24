import 'package:flutter/material.dart';
import 'package:todolist/widgets/todo_list.dart';
import 'package:todolist/models/todo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Todo> _todos = [
    Todo(title: 'Todo 1'),
    Todo(title: 'Todo 2'),
    Todo(title: 'Todo 30'),
    Todo(title: 'Todo 4'),
  ];

  void _checkTodo(bool newValue, int index) {
    setState(() {
      _todos[index].isDone = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      appBar: AppBar(
        title: Text(
          'Todolist',
          style: TextStyle(
            fontSize: 33,
            color: Colors.grey[400],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple[800],
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            FlatButton(
              onPressed: () {
                print('Click');
              },
              color: Colors.white,
              textColor: Colors.deepPurple[900],
              child: Text('Add todo'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            SizedBox(height: 30),
            Flexible(
              child: TodoList(_todos, _checkTodo),
            ),
          ],
        ),
      ),
    );
  }
}
