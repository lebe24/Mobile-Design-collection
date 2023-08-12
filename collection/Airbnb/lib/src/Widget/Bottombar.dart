import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:mobile/src/logic/bottom_logic.dart';
import 'package:mobile/src/utils/constant.dart';
import 'package:mobile/src/utils/extension.dart';
import 'package:provider/provider.dart';
import 'package:mobile/src/components/Rive.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key});

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
        icon: Center(
            child: RiveIcon(
                width: 40, height: 40, name: 'location', animation: 'spin')),
        label: "location"),
    BottomNavigationBarItem(
        icon: Center(
            child: RiveIcon(
                width: 40, height: 40, name: 'plane', animation: 'spin')),
        label: "plane"),
    BottomNavigationBarItem(
        icon: Center(
            child: RiveIcon(
                width: 40, height: 40, name: 'heart', animation: 'spin')),
        label: " "),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavProvider>(context);

    return GlassmorphicContainer(
      width: MediaQuery.of(context).size.width,
      height: 70,
      borderRadius: 10,
      blur: 10,
      border: 0.5,
      linearGradient: bgGradient.withOpacity(0.3).linearGradientTo(
          bgGradient1.withOpacity(0.5),
          Alignment.topCenter,
          Alignment.bottomCenter),
      borderGradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0x4FFFFFFF),
          Color(0x4FFFFFFF),
        ],
      ),
      child: BottomNavigationBar(
        iconSize: 40,
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: _items,
        selectedItemColor: Colors.red,
        currentIndex: provider.selectedIndex,
        onTap: (index) {
          provider.selectedIndex = index;
          index == provider.selectedIndex ? print('index') : print('un');
        },
      ),
    );
  }
}
