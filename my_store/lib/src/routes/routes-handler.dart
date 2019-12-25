import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/views/screens/login/login.screen.dart';
import 'package:my_store/src/views/screens/start-screen/start.screen.dart';

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        StartScreen());
Handler loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        LoginScreen());
