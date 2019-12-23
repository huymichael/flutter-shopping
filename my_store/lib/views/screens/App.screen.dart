import 'package:flutter/material.dart';
import 'package:my_store/utilities/app-theme.uti.dart';
import 'package:my_store/views/screens/start-screen/start.screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.customTheme,
      home: StartScreen(),
    );
  }
}
