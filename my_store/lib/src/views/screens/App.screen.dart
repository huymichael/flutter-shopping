import 'package:flutter/material.dart';
import 'package:my_store/src/utilities/app-theme.utils.dart';

import '../../routes/routes.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'start',
      theme: AppTheme.customTheme,
      onGenerateRoute: AppRoutes.router.generator,
    );
  }
}
