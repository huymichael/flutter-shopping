import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/routes/routes-handler.dart';
import 'package:my_store/src/routes/routes-path.dart';

class AppRoutes {
  static Router router = Router();

  static void setupRouter() {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return Scaffold(
        body: Center(
          child: Text('No route defined'),
        ),
      );
    });
    router.define(RoutingPath.rootRoute, handler: rootHandler);
    router.define(RoutingPath.loginRoute, handler: loginHandler);
  }
}
