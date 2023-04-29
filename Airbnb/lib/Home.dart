import 'package:flutter/material.dart';
import 'package:mobile/src/Widget/Bottombar.dart';
import 'package:mobile/src/Widget/Background.dart';
import 'package:mobile/src/Widget/side_menu_tile.dart';
import 'package:mobile/src/components/Rive.dart';
import 'package:mobile/src/screen/MainScreen.dart';
import 'package:mobile/src/screen/Sidemenu.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const[
        Menu(),
        MainScreen(),
      ],
    );
  }
}
