import 'package:flutter/material.dart';
import 'package:todolist/models/todo.dart';

class TodoList extends StatelessWidget {
  final List<Todo> _todos;
  final OnChanged _onChanged;

  TodoList(this._todos, this._onChanged);

  Widget _itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      child: Card(
        elevation: 0,
        color: Colors.yellow[50], //Colors.deepPurple[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: CheckboxListTile(
          value: _todos[index].isDone,
          title: Text(
            _todos[index].title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[900],
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Colors.deepPurple[900],
          checkColor: Colors.white,
          onChanged: (newValue) => _onChanged(newValue, index),
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

typedef OnChanged = void Function(bool, int);
