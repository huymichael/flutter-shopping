import 'package:flutter/material.dart';
import 'package:my_store/src/routes/route_paths.dart';
import 'package:my_store/src/utils/app_theme.util.dart';

import '../../routes/routes.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutingPath.rootRoute,
      theme: AppTheme.customTheme,
      onGenerateRoute: AppRoutes.router.generator,
    );
  }
}
