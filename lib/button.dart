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
          CustomPopupMenuButton(),
          ButtonBar(
            children: [
              RaisedButton(child: Text("hello")),
              RaisedButton(child: Text("hello")),
              RaisedButton(child: Text("hello"))
            ],
          ),
        ],
      ),
    );
  }
}

class CustomPopupMenuButton extends StatefulWidget {
  @override
  createState() => CustomPopupMenuButtonState();
}

class CustomPopupMenuButtonState extends State<CustomPopupMenuButton> {
  var _select = 0;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: (int val) {
        setState(() {
          print("popup menu item $val");
          _select = val;
        });
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<int>(value: 0, child: Text("zero")),
          const PopupMenuItem<int>(value: 1, child: Text("one")),
          const PopupMenuItem<int>(value: 2, child: Text("two")),
          const PopupMenuItem<int>(value: 3, child: Text("three")),
          const PopupMenuItem<int>(value: 4, child: Text("four")),
        ];
      },
      icon: Icon(Icons.more),
    );
  }
}
