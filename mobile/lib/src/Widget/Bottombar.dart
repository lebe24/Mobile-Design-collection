import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:mobile/src/logic/bottom_logic.dart';
import 'package:mobile/src/utils/constant.dart';
import 'package:mobile/src/utils/extension.dart';
import 'package:provider/provider.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key});

  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavProvider>(context);

    return GlassmorphicContainer(
      width: MediaQuery.of(context).size.height,
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
        backgroundColor: Colors.transparent,
        items: _items,
        currentIndex: provider.selectedIndex,
        onTap: (index) {
          provider.selectedIndex = index;
        },
      ),
    );
  }
}
