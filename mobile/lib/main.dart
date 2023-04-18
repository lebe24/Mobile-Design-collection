import 'package:flutter/material.dart';
import 'package:mobile/Home.dart';
import 'package:mobile/src/logic/theme_logic.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider(ThemeData.light())),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: Provider.of<ThemeProvider>(context).getTheme(),
      home: MyHomePage(),
    );
  }
}
