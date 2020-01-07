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
      TextStyle(fontSize: 10.0, color: AppTheme.sunsetOrangeColor);
}
