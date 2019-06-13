import 'package:flutter/material.dart';
import 'helloworld.dart';
import 'text.dart';
import 'icon.dart';
import 'image.dart';
import 'button.dart';
import 'input.dart';
import 'chip.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: HelloWorldPage(),
//      home: TextPage(),
//      home: IconPage(),
//      home: ImagePage(),
//      home: ButtonPage(),
//      home: InputPage(),
      home: ChipPage(),
    );
  }
}
