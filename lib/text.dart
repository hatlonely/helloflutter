import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Welcome to text")),
      body: Column(
        children: <Widget>[
          Center(child: Text("hello world")),
          Text(
            "hello world",
            textAlign: TextAlign.center,
          ),
          Text(
            "hello world",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "hello world",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.red,
            ),
          ),
          Text.rich(
            TextSpan(
              text: "hello",
              children: [
                TextSpan(
                  text: " beautiful",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: " world",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
