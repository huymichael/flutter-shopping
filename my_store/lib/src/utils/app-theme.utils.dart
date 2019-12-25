import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xff44c662); //green
  static const Color aliceBlue = Color(0xfff4f8fb); // shade of blue
  static const Color dangerColor = Color(0xfff34949); // red
  static const Color manateeColor = Color(0xffc5c9d4); // shade of grey
  static const Color warningColor = Color(0xfffeb163); // light orange
  static const Color mutedColor = Color(0xffc1c4cb); // grey
  static const TextTheme customTextTheme = TextTheme(
    headline: TextStyle(fontFamily: 'Roboto Bold'),
    title: TextStyle(fontFamily: 'Roboto Bold'),
    subhead: TextStyle(fontFamily: 'Roboto Light'),
    body1: TextStyle(fontFamily: 'Roboto Regular'),
  );
  static final customTheme = ThemeData(
      primaryColor: AppTheme.primaryColor,
      scaffoldBackgroundColor: AppTheme.aliceBlue,
      appBarTheme: AppBarTheme(
        color: AppTheme.primaryColor,
      ),
      textTheme: customTextTheme);
}
