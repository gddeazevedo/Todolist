import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart' as spin_kit;
import 'package:todolist/services/routes.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void _simulateFuture() async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, homeRoute);
    });
  }

  @override
  void initState() {
    super.initState();
    _simulateFuture();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      body: Center(
        child: spin_kit.SpinKitFoldingCube(
          color: Colors.white,
          size: 80,
        ),
      ),
    );
  }
}
