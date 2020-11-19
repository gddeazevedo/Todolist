import 'package:flutter/material.dart';
import 'package:todolist/services/routes.dart';

void main() {
  final app = MaterialApp(
    title: 'Todolist',
    initialRoute: loadingRoute,
    routes: routes,
  );

  runApp(app);
}
