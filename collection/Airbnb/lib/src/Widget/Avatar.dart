import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/utils/extension.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white54),
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.097, 0.86],
              colors: [
                Color(0xFF22283E),
                Color(0xFF171827),
              ],
              transform: GradientRotation(146.22),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                offset: Offset(4, 4),
                blurRadius: 10,
              )
            ],
          ),
          child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(color: Colors.white, Icons.person))),
      title: Text('Alice Portman'.capitalize()),
      subtitle: Text('Show Profile'),
    );
  }
}
