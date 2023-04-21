import 'package:flutter/material.dart';
import 'package:mobile/src/Widget/Bottombar.dart';
import 'package:mobile/src/Widget/Card.dart';
import 'package:mobile/src/Widget/Background.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
        child: Scaffold(
      bottomNavigationBar: BottomNavbar(),
      backgroundColor: Colors.transparent,
      body: CardBox(
          size: 300, image: 'assets/image.jpeg', data: 'hello', love: false),
    ));
  }
}
