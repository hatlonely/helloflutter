import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to button")),
      body: Column(
        children: [
          RaisedButton(
            child: const Text("raised button"),
            color: Colors.green[50],
            onPressed: () => print("raised button"),
          ),
          FlatButton(
            child: const Text("flat button"),
            color: Colors.green[100],
            onPressed: () => print("flat button"),
          ),
          IconButton(
            icon: const Icon(Icons.android),
            color: Colors.green[200],
            onPressed: () => print("icon button"),
          ),
          FloatingActionButton(
            child: const Icon(Icons.thumb_up),
            backgroundColor: Colors.green[300],
            onPressed: () => print("floating action button"),
          ),
        ],
      ),
    );
  }
}
