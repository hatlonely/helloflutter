import 'package:flutter/material.dart';

class TooltipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to tooltip")),
      body: Row(children: [
        Text("Acp"),
        Tooltip(
          message: "average click price",
          child: Icon(Icons.error, size: 10.0),
        ),
      ]),
    );
  }
}
