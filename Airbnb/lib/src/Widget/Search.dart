import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:mobile/src/components/Rive.dart';
import 'package:mobile/src/utils/extension.dart';
import 'package:mobile/src/utils/constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(children: [
        GestureDetector(
            child: RiveIcon(
                width: 80, height: 70, name: 'Polygon', animation: 'Active')),
        GlassmorphicContainer(
          width: 250,
          height: 50,
          borderRadius: 50,
          linearGradient: bgGradient.withOpacity(0.3).linearGradientTo(
              bgGradient1.withOpacity(0.5),
              Alignment.topCenter,
              Alignment.bottomCenter),
          border: 1,
          blur: 20,
          borderGradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0x4FFFFFFF),
              Color(0x4FFFFFFF),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.search,
                  size: 20,
                  color: titleTextColor,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: titleTextColor.withOpacity(0.8)),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(color: titleTextColor.withOpacity(0.8)),
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.mic,
                  size: 20,
                  color: titleTextColor,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
