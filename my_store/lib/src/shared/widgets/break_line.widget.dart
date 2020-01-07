import 'package:flutter/material.dart';

class LineBreak extends StatelessWidget {
  final double lineWeight;
  final Color lineColor;
  final double lineHeight;
  final double lineIndent;
  final double lineEndIndent;

  LineBreak(
      {this.lineWeight,
      this.lineColor,
      this.lineHeight,
      this.lineIndent,
      this.lineEndIndent});

  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: lineEndIndent,
      indent: lineIndent,
      height: lineHeight,
      color: lineColor,
      thickness: lineWeight ?? 1.0,
    );
  }
}
