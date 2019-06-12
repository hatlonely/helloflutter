import 'package:flutter/material.dart';

// @see https://material.io/tools/icons/?style=baseline

class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to icon")),
      body: Column(children: [
        Row(children: [
          Icon(Icons.add),
          Icon(Icons.remove),
          Icon(Icons.favorite),
          Icon(Icons.favorite_border),
          Icon(Icons.ac_unit),
          Icon(Icons.help),
          Icon(Icons.g_translate),
          Icon(Icons.face),
          Icon(Icons.search),
          Icon(Icons.language),
        ]),
        Icon(Icons.motorcycle, color: Colors.pink[300], size: 30.0),
      ]),
    );
  }
}
