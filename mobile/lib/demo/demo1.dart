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