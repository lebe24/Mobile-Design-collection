import 'package:flutter/material.dart';
import 'package:mobile/src/Widget/Background.dart';
import 'package:mobile/src/Widget/Bottombar.dart';
import 'package:mobile/src/Widget/Card.dart';
import 'package:mobile/src/Widget/Search.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavbar(),
        body: Column(
          children: [
            const SearchBar(),
            Expanded(
              child: SingleChildScrollView(
                  child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CardBox(
                          size: 300,
                          image: 'assets/Img3.png',
                          data: 'hello',
                          love: false),
                      CardBox(
                          size: 300,
                          image: 'assets/Img.png',
                          data: 'hello',
                          love: false),
                      CardBox(
                          size: 300,
                          image: 'assets/Img2.png',
                          data: 'hello',
                          love: false),
                      CardBox(
                          size: 300,
                          image: 'assets/image.jpeg',
                          data: 'hello',
                          love: false),
                      CardBox(
                          size: 300,
                          image: 'assets/image.jpeg',
                          data: 'hello',
                          love: false),
                    ]),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
