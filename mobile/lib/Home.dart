import 'package:flutter/material.dart';
import 'package:mobile/src/Widget/Card.dart';
import 'package:mobile/src/Widget/Background.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
        child: Center(
      child: CardBox(
          size: 400, image: 'assets/image.jpeg', data: 'hello', love: false),
    ));
  }
}
