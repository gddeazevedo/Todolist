import 'package:flutter/material.dart';
import 'package:todolist/widgets/todo_list.dart';

class Home extends StatelessWidget {
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
          children: <Widget>[
            SizedBox(height: 30),
            Flexible(
              child: TodoList(),
            ),
          ],
        ),
      ),
    );
  }
}
