
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 2;
  @override
  Widget build(BuildContext context) {
    
    final ThemeData theme = Theme.of(context);
    return  Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            child:<Widget> [
              // Home page
              Pageone(theme: theme),
              /// Notifications page
              PageTwo(),
              /// Messages page
              PageThree(theme: theme),
            ][currentPageIndex],
          ),
          Positioned(
            bottom: 70,
            right: MediaQuery.of(context).size.width * 0.2,
            child: buildTY(context))
        ],
      ),
     
    );
  }

  Widget buildTY(BuildContext context) {
    void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
      // Handle navigation or other actions based on the index
    });
    }
    return GlassmorphicContainer(
      alignment: AlignmentDirectional.center,
      width: MediaQuery.of(context).size.width * 0.6,
      height: 70,
      borderRadius: 40,
      blur: 10,
      border: 1,

      linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(54, 218, 216, 216),
                Color.fromARGB(22, 200, 199, 199),
              ],
              stops: [
                0.3,
                1,
              ]),
      borderGradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFFFFFFFF)
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  color: currentPageIndex == 0 ? Colors.white : Colors.grey,
                  icon: Icon(Icons.home),
                  onPressed: () {
                    _onItemTapped(0);
                    // Handle home button tap
                  },
                ),
                
                IconButton(
                  icon: Icon(Icons.list_sharp),
                  color: currentPageIndex == 1 ? Colors.white : Colors.grey,
                  onPressed: () {
                    _onItemTapped(1);
                    // Handle search button tap
                  },
                ),
                IconButton(
                  icon: Icon(Icons.color_lens_outlined),
                  color: currentPageIndex == 2 ? Colors.white : Colors.grey,
                  onPressed: () {
                    _onItemTapped(2);
                    // Handle profile button tap
                  },
                ),
              ],
            ),
    );
  
  }
}

class PageThree extends StatefulWidget {
  const PageThree({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  Color _currentColor = Color(0x52210CBD);
  Color _currentColor2 = Color(0xD2DE580A);

  void _generateRandomColor() {
    setState(() {
      _currentColor = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
      _currentColor2 = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient:  _currentColor.linearGradientTo( _currentColor2, Alignment.bottomLeft, Alignment.topCenter)
          ),
          
        ),
        Positioned(
          bottom: 150,
          right: 20,
          child: FloatingActionButton(
            child: Icon(Icons.shuffle), // Replace with your icon
            tooltip: 'Shuffle',
            onPressed: _generateRandomColor
          ),
        )
      ],
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height,
            child: Card(
              child: Image.network(
                'https://images.unsplash.com/photo-1590071089561-2087ff1fc418?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDN8fHxlbnwwfHx8fHw%3D&w=1000&q=80',
                fit:BoxFit.cover
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height,
            child: Card(
              child: Image.network(
                'https://images.unsplash.com/photo-1589992981004-0afd8bb30223?w=420&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8OTY5NDg1OHx8ZW58MHx8fHx8',
                fit:BoxFit.cover
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height,
            child: Card(
              child: Image.network(
                'https://plus.unsplash.com/premium_photo-1669748156838-33fda144e8dd?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwbmF0dXJlfGVufDB8fDB8fHww',
                fit:BoxFit.cover
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Page 1
class Pageone extends StatelessWidget {
   Pageone({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: 300,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient:Color(0xFF10A9CB).linearGradientTo(Color(0xFF313A5B * index), Alignment.topCenter, Alignment.bottomRight) 
            ),
            child: Center(child: Text('$index',
            style: TextStyle(color: Colors.white, fontSize: 20),
            ))),
        );
      }
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


