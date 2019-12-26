import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  final Function onPress;
  final Icon icon;

  const BackButton({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon ?? Icon(Icons.keyboard_backspace),
      onPressed: onPress,
    );
  }
}
