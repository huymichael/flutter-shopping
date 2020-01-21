import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/routes/route_handlers.dart';
import 'package:my_store/src/routes/route_paths.dart';

class AppRoutes {
  static Router router = Router();

  static navigateTo(BuildContext context, String path) {
    return router.navigateTo(context, path);
  }

  static void setupRouter() {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return Scaffold(
        body: Center(
          child: Text('No route defined'),
        ),
      );
    });
    router.define(RoutingPath.rootRoute,
        handler: rootHandler, transitionType: TransitionType.inFromLeft);
    router.define(RoutingPath.loginRoute,
        handler: loginHandler, transitionType: TransitionType.inFromRight);
    router.define(RoutingPath.registerRoute,
        handler: registerHandler, transitionType: TransitionType.inFromRight);
    router.define(RoutingPath.category,
        handler: categoryHandler, transitionType: TransitionType.material);
    router.define(RoutingPath.featuredCategory,
        handler: featuredCategoryHandler,
        transitionType: TransitionType.inFromRight);
  }
}
