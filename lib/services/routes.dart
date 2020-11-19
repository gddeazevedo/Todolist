import 'package:flutter/material.dart';
import 'package:todolist/screens/home.dart';
import 'package:todolist/screens/loading.dart';

final String loadingRoute = '/';
final String homeRoute = '/home';

final Map<String, Widget Function(BuildContext)> routes = {
  loadingRoute: (BuildContext context) => Loading(),
  homeRoute: (BuildContext context) => Home(),
};
