import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to image")),
      body: Column(children: [
        Image.asset(
          "assets/img/coco1.jpg",
        ),
        Image.asset(
          "assets/img/coco2.jpg",
          // 屏幕宽度 * 0.8
          width: MediaQuery.of(context).size.width * 0.8,
        ),
        Image.asset(
          "assets/img/coco3.jpg",
          width: 200,
        ),
        Image.network(
          "https://picsum.photos/250?image=9",
          width: 200,
        ),
      ]),
    );
  }
}
