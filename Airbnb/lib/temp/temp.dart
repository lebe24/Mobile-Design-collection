import 'package:flutter/material.dart';
import 'package:mobile/src/logic/theme_logic.dart';
import 'package:provider/provider.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
            ),
            Switch(
              value: Provider.of<ThemeProvider>(context).getTheme().brightness == Brightness.dark,
              onChanged: (value) {
                if (value) {
                  Provider.of<ThemeProvider>(context, listen: false).setTheme(ThemeData.dark());
                } else {
                  Provider.of<ThemeProvider>(context, listen: false).setTheme(ThemeData.light());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}


// Widget lem(double size) {
//   return Positioned(
//     bottom: 0,
//     child: GlassmorphicContainer(
//       width: size,
//       height: size / 3,
//       borderRadius: 20,
//       blur: 15,
//       border: 1,
//       linearGradient: bgGradient.withOpacity(0.3).linearGradientTo(
//           bgGradient1.withOpacity(0.5),
//           Alignment.topCenter,
//           Alignment.bottomCenter),
//       // linearGradient: LinearGradient(
//       //   begin: Alignment.topCenter,
//       //   end: Alignment.bottomCenter,
//       //   colors: [
//       //     Color(0xFFffffff).withOpacity(0.1),
//       //     Color(0xFFFFFFFF).withOpacity(0.05),
//       //   ],
//       //   stops: [
//       //     0.1,
//       //     1,
//       //   ],
//       // ),
//       borderGradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//         colors: [
//           Color.fromARGB(79, 255, 255, 255),
//           Color.fromARGB(79, 255, 255, 255),
//         ],
//       ),
//       child: Text('hello'),
//     ),
//   );
// }


Widget contentBox(double size) {
  return Positioned(
      bottom: 0,
      child: Container(
        width: size,
        height: size / 3,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFffffff).withOpacity(0.1),
              Color(0xFFFFFFFF).withOpacity(0.05),
            ],
            stops: [
              0.1,
              1,
            ],
          ),
          border:
              Border.all(color: Color.fromARGB(79, 255, 255, 255), width: 1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.29947),
              offset: Offset(10, 5),
              blurRadius: 10,
            )
          ],
        ),
      ));
}

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Container(),
    Container(),
    Container(),
  ];

  final List<String> _labels = [
    'Page 1',
    'Page 2',
    'Page 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: List.generate(
          _labels.length,
          (int index) => BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: _labels[index],
          ),
        ),
      ),
    );
  }
}

  
// bottomNavigationBar: Container(
//         height: 70,
//         child: ClipRRect(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(40),
//               topRight: Radius.circular(40)),
//           child: BottomNavigationBar(
//               type: BottomNavigationBarType.fixed,
//               backgroundColor: Color.fromARGB(255, 193, 209, 240),
//               iconSize: 20.0,
//               selectedIconTheme: IconThemeData(size: 28.0),
//               selectedItemColor: Color.fromARGB(255, 46, 90, 172),
//               unselectedItemColor: Colors.black,
//               selectedFontSize: 16.0,
//               unselectedFontSize: 12,
//               currentIndex: current_index,
//               onTap: OnTapped,
//               items: <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: "Home",
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.search),
//                   label: "Search",
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.settings),
//                   label: "Settings",
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: "Account",
//                 ),
//               ]),
//         ),
//       ),


// class _SearchBoxState extends State<SearchBox>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _animation;

//   final TextEditingController _textEditingController =
//       TextEditingController();

//   bool _isFocused = false;

//   @override
//   void initState() {
//     super.initState();

//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 500),
//     );

//     _animation = Tween<double>(
//       begin: 0,
//       end: 1,
//     ).animate(_animationController);

//     _animationController.addListener(() {
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   void _onFocusChange() {
//     if (_isFocused) {
//       _animationController.forward();
//     } else {
//       _animationController.reverse();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: _isFocused ? Colors.blue : Colors.grey,
//           width: 2.0,
//         ),
//         borderRadius: BorderRadius.circular(25),
//       ),
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       child: Row(
//         children: [
//           Icon(Icons.search),
//           SizedBox(width: 10),
//           Expanded(
//             child: TextField(
//               controller: _textEditingController,
//               decoration: InputDecoration(
//                 hintText: "Search",
//                 border: InputBorder.none,
//               ),
//               onChanged: (text) {},
//               onTap: () {
//                 setState(() {
//                   _isFocused = true;
//                 });
//                 _onFocusChange();
//               },
//               onSubmitted: (text) {
//                 setState(() {
//                   _isFocused = false;
//                 });
//                 _onFocusChange();
//               },
//               autofocus: false,
//             ),
//           ),
//           Icon(Icons.mic),
//         ],
//       ),
//     );
//   }
// }
