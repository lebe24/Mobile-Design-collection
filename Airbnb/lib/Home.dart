import 'package:flutter/material.dart';
import 'package:mobile/src/Widget/Bottombar.dart';
import 'package:mobile/src/Widget/Background.dart';
import 'package:mobile/src/components/Rive.dart';
import 'package:mobile/src/screen/MainScreen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
      bottomNavigationBar: BottomNavbar(),
      backgroundColor: Colors.transparent,
      body: SafeArea(child: MainScreen())
    ));
  }
}
