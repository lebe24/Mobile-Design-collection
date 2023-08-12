import 'package:flutter/material.dart';
import 'package:mobile/src/components/Rive.dart';
import 'package:mobile/src/components/list_rive_widget.dart';
import 'package:mobile/src/utils/constant.dart';
import 'package:rive/rive.dart' as rive;

class SideMenuTile extends StatelessWidget {
  const SideMenuTile(
      {super.key,
      required this.menu,
      this.press,
      required this.riveonInit,
      required this.isActive});

  final RiveAsset menu;
  final VoidCallback? press;
  final ValueChanged<rive.Artboard> riveonInit;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.white24,
          height: 1,
        ),
        Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              width: isActive ? 288 : 0,
              left: 0,
              height: 56,
              child: Container(
                padding: EdgeInsets.all(48),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.0, 0.9687],
                    colors: [
                      Color.fromRGBO(15, 85, 232, 0.6),
                      Color.fromRGBO(15, 85, 232, 0)
                    ],
                  ),
                ),
                // other widget contents here
              ),
            ),
            ListTile(
              onTap: press,
              leading: rive.RiveAnimation.asset(
                menu.src,
                artboard: menu.artboard,
                onInit: riveonInit,
                fit: BoxFit.contain,
              ),
              title: Text(
                menu.title,
                style: TextStyle(color: titleTextColor),
              ),
            ),
          ],
        )
      ],
    );
  }
}
