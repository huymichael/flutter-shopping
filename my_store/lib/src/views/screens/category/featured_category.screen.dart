import 'package:flutter/material.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/middlewares/providers/featured_category.data.dart';
import 'package:my_store/src/shared/widgets/category_menu_section.widget.dart';
import 'package:my_store/src/utils/uuid_generator.util.dart';

class FeaturedCategoryScreen extends StatelessWidget {
  final String categoryName;
  final String categoryId;

  FeaturedCategoryScreen({this.categoryId, this.categoryName});

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
    return Container(
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        children: listItem
            .map(
              (item) => BackgroundCategorySection(
                onTap: () {
                  print(UuidGenerator().getID());
                },
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
        categoryName ?? 'null',
        style: StylingConstant.kAppbarTitle,
      ),
      backgroundColor: Colors.white,
    );
  }
}
