import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';

class RoundedMediaCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;

  RoundedMediaCard(
      {this.imageUrl,
      this.title,
      this.subTitle,
      this.titleStyle,
      this.subtitleStyle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Spacing(
            vertical: 10.0,
          ),
          ListTile(
            title: Text(title ?? ''),
            subtitle: Text(subTitle ?? ''),
          )
        ],
      ),
    );
  }
}
