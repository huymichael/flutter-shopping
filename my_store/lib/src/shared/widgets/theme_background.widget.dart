import 'package:flutter/material.dart';

class ThemeBackgroundImage extends StatelessWidget {
  final String imageUrl;
  final Widget widget;
  final ColorFilter colorFilter;

  ThemeBackgroundImage(
      {@required this.imageUrl, this.colorFilter, @required this.widget});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: colorFilter),
      ),
      child: widget,
    );
  }
}
