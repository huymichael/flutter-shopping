import 'package:flutter/material.dart';

class CenterCard extends StatelessWidget {
  final EdgeInsetsGeometry contentPadding;
  final Color cardColor;
  final Widget cardContent;

  CenterCard({@required this.cardContent, this.cardColor, this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 35.0, horizontal: 30.0),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Card(
          elevation: 2.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: cardColor ?? Colors.white,
          child: Container(
            padding: contentPadding ?? EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                cardContent,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
