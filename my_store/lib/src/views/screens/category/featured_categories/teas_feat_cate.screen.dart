import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/data/featured_category.data.dart';
import 'package:my_store/src/shared/widgets/category_menu_section.widget.dart';
import 'package:my_store/src/shared/widgets/rounded_media_card.widget.dart';

class TeasFeaturedCategoryScreen extends StatelessWidget {
  final listItem = FeatureCategoryData().featuredTeaList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.maxFinite,
        child: SafeArea(
          child: _buildTeasCategories(),
        ),
      ),
    );
  }

  Widget _buildTeasCategories() {
//    return Card(
//      elevation: 1,
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(10),
//      ),
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          ClipRRect(
//            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
//            child: Image.asset(
//              ImageConstant.CATEGORY_MATCHA_TEA,
//              fit: BoxFit.cover,
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text('ollalala'),
//          )
//        ],
//      ),
//    );
    return Container(
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        children: listItem
            .map(
              (item) => BackgroundCategorySection(
                onTap: () {},
                backgroundUrl: item.imageUrl,
                title: item.categoryTitle,
                titleStyle: StylingConstant.kMediumBoldWhiteTitle,
                backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Tea',
        style: StylingConstant.kAppbarTitle,
      ),
      backgroundColor: Colors.white,
    );
  }
}
