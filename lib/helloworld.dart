import 'package:flutter/material.dart';

class HelloWorldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to flutter")),
      body: Center(
        child: Text("hello world"),
      ),
    );
  }
}
