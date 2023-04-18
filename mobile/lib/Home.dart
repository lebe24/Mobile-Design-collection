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
