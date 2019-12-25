import 'package:flutter/material.dart';
import 'package:my_store/src/utils/app-theme.utils.dart';

class RoundedButton extends StatelessWidget {
  final String buttonLabel;
  final Function onPress;
  final bool isOutlineButton;

  RoundedButton(
      {@required this.buttonLabel,
      @required this.onPress,
      this.isOutlineButton = false});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      onPressed: onPress,
      textColor: isOutlineButton ? AppTheme.primaryColor : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: isOutlineButton
            ? BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: AppTheme.primaryColor)
            : BorderSide.none,
      ),
      height: 50.0,
      color: isOutlineButton ? Colors.white : AppTheme.primaryColor,
      child: Text(
        buttonLabel.toUpperCase(),
      ),
    );

//    return FlatButton(
//      onPressed: onPress,
//      child: Text(buttonLabel),
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(30.0),
//        side: BorderSide(color: Colors.red),
//      ),
//      color: Colors.lightBlueAccent,
//    );
  }
}
