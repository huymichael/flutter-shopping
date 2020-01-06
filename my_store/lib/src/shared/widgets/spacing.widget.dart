import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double horizontal;
  final double vertical;

  Spacing({this.horizontal, this.vertical});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontal ?? 0,
      height: vertical ?? 0,
    );
  }
}
