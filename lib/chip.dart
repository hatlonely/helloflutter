import 'package:flutter/material.dart';

class ChipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to chip")),
      body: Column(children: [
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.green.shade200,
            child: Text('AB'),
          ),
          label: Text('Aaron Burr'),
        ),
        Chip(
          backgroundColor: Colors.green.shade200,
          avatar: CircleAvatar(
            backgroundColor: Colors.green.shade800,
            child: Text('+1'),
          ),
          label: Text('hello world'),
        )
      ]),
    );
  }
}
