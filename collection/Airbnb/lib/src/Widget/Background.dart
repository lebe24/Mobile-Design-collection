import 'package:flutter/material.dart';
import 'package:mobile/src/utils/extension.dart';
import 'package:mobile/src/utils/constant.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: bgGradient.linearGradientTo(
                bgGradient1, Alignment.topLeft, Alignment.bottomRight),
          ),
          child: child
      )
    );
  }
}
