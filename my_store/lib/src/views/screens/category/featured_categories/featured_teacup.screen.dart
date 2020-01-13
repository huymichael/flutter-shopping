import 'package:flutter/material.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/data/featured_category.data.dart';
import 'package:my_store/src/shared/widgets/category_menu_section.widget.dart';

class FeaturedTeacupsScreen extends StatelessWidget {
  final listItem = FeatureCategoryData().featuredTeacupList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.maxFinite,
        child: SafeArea(
          child: _buildTeacupCategories(),
        ),
      ),
    );
  }
  Widget _buildTeacupCategories() {
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
        'Teacups',
        style: StylingConstant.kAppbarTitle,
      ),
      backgroundColor: Colors.white,
    );
  }
}
