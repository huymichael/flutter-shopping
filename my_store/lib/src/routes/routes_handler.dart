import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/views/screens/category/category.screen.dart';
import 'package:my_store/src/views/screens/category/featured_categories/teas_feat_cate.screen.dart';
import 'package:my_store/src/views/screens/login/login.screen.dart';
import 'package:my_store/src/views/screens/register/register.screen.dart';
import 'package:my_store/src/views/screens/start_screen/start.screen.dart';

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        StartScreen());
Handler loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        LoginScreen());
Handler registerHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        RegisterScreen());
Handler categoryHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        CategoryScreen());
Handler teaFeatCategoryHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        TeasFeaturedCategoryScreen());
