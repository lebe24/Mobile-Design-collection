import 'dart:ui';

import 'package:glassmorphism/glassmorphism.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/utils/extension.dart';
import 'package:mobile/src/utils/constant.dart';

class CardBox extends StatelessWidget {
  CardBox(
      {super.key,
      required this.size,
      required this.image,
      required this.data,
      required this.love});

  final String image;
  final double size;
  final String data;
  bool love = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.5),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: size,
          height: size * 0.85,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                blurRadius: 40.0,
                offset: Offset(0, 40),
              ),
            ],
          ),
          child: Stack(children: [
            Image.asset(image, fit: BoxFit.cover),
            notch(data, size),
            favIcon(love),
            contentBox(size),
          ]),
        ),
      ),
    );
  }
}

// notch Widget
Widget notch(String data, double size) {
  return Positioned(
    top: 0,
    left: size / 3.5,
    child: Container(
      width: size * 0.35,
      height: size * 0.08,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        border: Border.all(
          color: const Color(0x338671EC),
          width: 1.0,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3EFFFFFF),
            offset: Offset(0, 1),
            blurRadius: 0,
          ),
          BoxShadow(
            color: Color(0x4B000000),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
        gradient: bgGradient.linearGradientTo(
            bgGradient1, Alignment.topCenter, Alignment.center),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          size: 15,
          Icons.star,
          color: lightBlue,
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(data, style: TextStyle(color: titleTextColor)),
        ),
      ]),
    ),
  );
}

// Love Button Icon
Widget favIcon(bool _islove) {
  return Positioned(
    top: 20,
    right: 20,
    child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          gradient: bgGradient.linearGradientTo(
              bgGradient1, Alignment.topCenter, Alignment.bottomRight),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(4.0, 4.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Icon(
          Icons.favorite,
          color: _islove ? lightBlue : Colors.grey,
          size: 15.0,
        )),
  );
}

Widget contentBox(double size) {
  return Positioned(
    bottom: 0,
    child: GlassmorphicContainer(
      width: size,
      height: size / 3,
      borderRadius: 20,
      blur: 10,
      border: 1,
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: const ListTile(
              title: Text(
                'John Doe',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  height: 21 / 20,
                  letterSpacing: -0.32,
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Row(children: [
            Expanded(
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Cost',
                    style: TextStyle(
                      letterSpacing: -0.408,
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      height: 1.05,
                    ),
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Color(0xFF37F4FA),
                    ),
                    SizedBox(width: 5),
                    Text('Subtitle'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text(
                  'Cost',
                  style: TextStyle(
                    letterSpacing: -0.408,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    height: 1.05,
                  ),
                ),
                subtitle: Row(
                  children: const [
                    Icon(Icons.info),
                    SizedBox(width: 5),
                    Text('Subtitle'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  'Cost',
                  style: TextStyle(
                    letterSpacing: -0.408,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    height: 1.05,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(width: 5),
                    Text('Subtitle'),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    ),
  );
}
