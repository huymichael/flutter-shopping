import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/utils/app_theme.utils.dart';

class StylingConstant {
  static const TextStyle kStartScreenSlogan = TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontStyle: FontStyle.italic,
      fontFamily: 'OpenSans Bold');
  static const TextStyle kAnchorText =
      TextStyle(fontSize: 12.0, color: AppTheme.sunsetOrangeColor);
  static const TextStyle kAppbarTitle = TextStyle(
      color: AppTheme.gray40Color, fontFamily: 'OpenSans Bold', fontSize: 18.0);
  static final ColorFilter kBlackBackgroundFilter =
      ColorFilter.mode(Colors.black54.withOpacity(0.6), BlendMode.hardLight);
  static const TextStyle kLargeBoldTitle =
      TextStyle(color: Colors.white, fontSize: 35, fontFamily: 'OpenSans Bold');
  static const TextStyle kMediumBoldTitle =
      TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'OpenSans Bold');
  static const TextStyle kLightSubtitle = TextStyle(
      color: Colors.white, fontFamily: 'OpenSans Light', fontSize: 12.0);
}
