import 'package:flutter/material.dart';
import 'package:my_store/src/constants/styling.constant.dart';

class BackgroundCategorySection extends StatelessWidget {
  final Function onTap;
  final String backgroundUrl;
  final ColorFilter backgroundFilterColor;
  final String title;
  final TextStyle titleStyle;
  final String subTitle;
  final TextStyle subTitleStyle;

  BackgroundCategorySection(
      {@required this.backgroundUrl,
      this.backgroundFilterColor,
      @required this.onTap,
      this.subTitle,
      this.subTitleStyle,
      this.title,
      this.titleStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: backgroundFilterColor,
              fit: BoxFit.cover,
              image: AssetImage(backgroundUrl)),
        ),
        child: ListTile(
          title: Text(title,
              textAlign: TextAlign.center,
              style: titleStyle ?? StylingConstant.kLargeBoldWhiteTitle),
          subtitle: Text(
            subTitle ?? '',
            textAlign: TextAlign.center,
            style: subTitleStyle ?? StylingConstant.kLightSubtitle,
          ),
        ),
      ),
    );
  }
}
