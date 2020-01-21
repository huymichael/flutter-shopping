import 'package:flutter/material.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/middlewares/blocs/produc_category.bloc.dart';
import 'package:my_store/src/middlewares/providers/featured_category.data.dart';
import 'package:my_store/src/models/product_category.model.dart';
import 'package:my_store/src/shared/widgets/category_menu_section.widget.dart';

class FeaturedCategoryScreen extends StatefulWidget {
  final String featuredId;

  FeaturedCategoryScreen({@required this.featuredId});

  @override
  _FeaturedCategoryScreenState createState() => _FeaturedCategoryScreenState();
}

class _FeaturedCategoryScreenState extends State<FeaturedCategoryScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productCategoryBloc.fetchCategoryByID(widget.featuredId);
  }

  final listItem = FeatureCategoryData().featuredTeaList;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProductCategory>(
      stream: productCategoryBloc.productCategory,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final ProductCategory category = snapshot.data;
          return _buildCategoryScreen(category);
        }
        return _buildEmptyScreen();
      },
    );
  }

  Widget _buildCategoryScreen(ProductCategory category) {
    return Scaffold(
      appBar: _buildAppbar(category.productCategoryName),
      body: Container(
        height: double.maxFinite,
        child: SafeArea(
          child: _buildCategoryList(category.featuredCategories),
        ),
      ),
    );
  }

  Widget _buildEmptyScreen() {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text('No data found!'),
      ),
    );
  }

  Widget _buildCategoryList(List<ProductCategory> listCategory) {
    return Container(
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        children: listCategory
            .map(
              (item) => BackgroundCategorySection(
                onTap: () {},
                backgroundUrl: item.categoryImage,
                title: item.productCategoryName,
                titleStyle: StylingConstant.kMediumBoldWhiteTitle,
                backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildAppbar(String title) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: StylingConstant.kAppbarTitle,
      ),
      backgroundColor: Colors.white,
    );
  }
}
