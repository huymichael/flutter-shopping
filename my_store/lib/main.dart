import 'package:flutter/material.dart';
import 'package:my_store/src/routes/routes.dart';
import 'package:my_store/src/views/screens/App.screen.dart';

void main() {
  AppRoutes.setupRouter();
  runApp(App());
}
