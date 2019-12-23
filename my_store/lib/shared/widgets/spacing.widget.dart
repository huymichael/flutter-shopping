import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final num horizontal;
  final num vertical;

  Spacing({this.horizontal, this.vertical});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontal ?? 0,
      height: vertical ?? 0,
    );
  }
}
