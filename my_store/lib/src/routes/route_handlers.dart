import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/views/screens/category/category.screen.dart';
import 'package:my_store/src/views/screens/category/featured_categories/featured_teacup.screen.dart';
import 'package:my_store/src/views/screens/category/featured_categories/featured_teapot.screen.dart';
import 'package:my_store/src/views/screens/category/featured_categories/featured_teas.screen.dart';
import 'package:my_store/src/views/screens/category/featured_category.screen.dart';
import 'package:my_store/src/views/screens/login/login.screen.dart';
import 'package:my_store/src/views/screens/register/register.screen.dart';
import 'package:my_store/src/views/screens/start_screen/start.screen.dart';

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        StartScreen());
Handler loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        LoginScreen());
Handler registerHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        RegisterScreen());
Handler categoryHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        CategoryScreen());
Handler featuredTeaHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        FeaturedTeasScreen());
Handler featuredTeapotHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        FeaturedTeapotsScreen());
Handler featuredTeacupHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        FeaturedTeacupsScreen());
Handler featuredInfuserHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        FeaturedTeasScreen());
Handler featuredAccessoryHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        FeaturedTeasScreen());
Handler featuredCategoryHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        FeaturedCategoryScreen());
