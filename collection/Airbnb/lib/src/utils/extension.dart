import 'dart:math';

import 'package:flutter/material.dart';

extension ShakeExtension on Widget {
  Widget shake({int duration = 500, double offset = 6.0}) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: offset),
      duration: Duration(milliseconds: duration),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(sin(value * pi) * offset, 0),
          child: child,
        );
      },
      child: this,
    );
  }
}

extension ColorExtension on Color {
  LinearGradient linearGradientTo(
      Color color, AlignmentGeometry begin, AlignmentGeometry end) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: [this, color],
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}
