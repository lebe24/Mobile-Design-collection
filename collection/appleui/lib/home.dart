import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.6,
              elevation: 0,
              snap: true,
              floating: true,
              stretch: true,
              backgroundColor: Color.fromARGB(255, 221, 18, 18),
              flexibleSpace: FlexibleSpaceBar(stretchModes: [
                StretchMode.zoomBackground,
              ], background: Image.asset('assets/apple.png')),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(45),
                  child: Transform.translate(
                      offset: Offset(0, 1),
                      child: Container(
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                            child: Container(
                          width: 50,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),)),
                      ))),
            ),
            SliverList(
            delegate: SliverChildListDelegate([
          Container(
              height: MediaQuery.of(context).size.height * 0.55,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: BabylonJSViewer(
                src: 'assets/watch.glb',
              ))
        ])),
          ],
        ));
  }
}
