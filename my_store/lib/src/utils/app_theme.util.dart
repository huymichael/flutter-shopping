import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xff44c662); //green
  static const Color shamrockGreenColor = Color(0xff0D9F67);
  static const Color aliceBlue = Color(0xfff4f8fb); // shade of blue
  static const Color mutedColor = Color(0xffc1c4cb); // grey
  static const Color manateeColor = Color(0xffc5c9d4); // shade of grey
  static const Color codGreyColor = Color(0xff303132);
  static const Color gray40Color = Color(0xff666666);
  static const Color gainsboro = Color(0xffd8d8d8);
  static const Color smokeColor = Color(0xfff3f3f3);
  static const Color warningColor = Color(0xfffeb163); // light orange
  static const Color sandColor = Color(0xffa36e44); // shade of orange
  static const Color sandLightColor = Color(0xff9b7653);
  static const Color sandLight2Color = Color(0xffb48561);
  static const Color sourDoughColor = Color(0xffC5B08E);
  static const Color raffiaColor = Color(0xffDBC8A8);
  static const Color dangerColor = Color(0xfff34949); // red
  static const Color sunsetOrangeColor = Color(0xff99332E);
  static const Color sunsetOrangeLightColor = Color(0xffbf403a);
  static const Color sunsetOrangeDarkColor = Color(0xff7a2925);
  static const TextTheme customTextTheme = TextTheme(
    headline: TextStyle(fontFamily: 'OpenSans Bold'),
    title: TextStyle(fontFamily: 'OpenSans Bold'),
    subhead: TextStyle(fontFamily: 'OpenSans Light'),
    body1: TextStyle(fontFamily: 'OpenSans'),
  );
  static final customTheme = ThemeData(
      primaryColor: AppTheme.sunsetOrangeColor,
      scaffoldBackgroundColor: AppTheme.smokeColor,
      errorColor: AppTheme.dangerColor,
      appBarTheme: AppBarTheme(
          color: AppTheme.gray40Color,
          iconTheme: IconThemeData(color: AppTheme.gray40Color)),
      textTheme: customTextTheme);
}
