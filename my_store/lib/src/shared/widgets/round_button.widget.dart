import 'package:flutter/material.dart';
import 'package:my_store/src/utils/app_theme.util.dart';

class RoundedButton extends StatelessWidget {
  final String buttonLabel;
  final Function onPress;
  final Color fillColor;
  final Color textColor;
  final BorderSide buttonBorder;

  RoundedButton(
      {@required this.buttonLabel,
      @required this.onPress,
      this.fillColor,
      this.textColor,
      this.buttonBorder});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5.0,
      height: 50.0,
      child: Container(child: Text(buttonLabel ?? 'Your button label')),
      color: fillColor ?? AppTheme.sunsetOrangeColor,
      textColor: textColor ?? Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: buttonBorder ?? BorderSide.none,
      ),
      onPressed: onPress,
    );
  }
}
