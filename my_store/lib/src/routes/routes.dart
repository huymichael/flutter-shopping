import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_store/src/views/login/login.screen.dart';
import 'package:my_store/src/views/screens/start-screen/start.screen.dart';

class AppRoutes {
  static Router router = Router();
  static Handler _startScreenHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          StartScreen());
  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginScreen());

  static void setupRouter() {
    router.define("start", handler: _startScreenHandler);
    router.define("login", handler: _loginHandler);
  }
}
