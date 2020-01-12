import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/data/featured_category.data.dart';
import 'package:my_store/src/shared/widgets/category_menu_section.widget.dart';

class TeasFeaturedCategoryScreen extends StatelessWidget {
  final listItem = FeatureCategoryData().categoriesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        padding: EdgeInsets.all(10),
        height: double.maxFinite,
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
        children: listItem
            .map((item) => Card(
                  child: BackgroundCategorySection(
                    onTap: () {
                      print(item.categoryTitle);
                    },
                    backgroundUrl: item.imageUrl,
                    backgroundFilterColor:
                        StylingConstant.kBlackBackgroundFilter,
                    title: item.categoryTitle,
                    titleStyle: StylingConstant.kMediumBoldTitle,
                  ),
                ))
            .toList(),
      ),
    );
  }

//
//  GridView.builder(
//  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//  crossAxisCount: 2,
//  mainAxisSpacing: 3.0,
//  crossAxisSpacing: 3.0,
//  ),
//  itemCount: listItem.length,
//  itemBuilder: (BuildContext context, int index) {
//  return BackgroundCategorySection(
//  onTap: () {
//  print(listItem[index].categoryTitle);
//  },
//  backgroundUrl: listItem[index].imageUrl,
//  backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
//  title: listItem[index].categoryTitle,
//  titleStyle: StylingConstant.kMediumBoldTitle,
//  );
//  },
//  )
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
