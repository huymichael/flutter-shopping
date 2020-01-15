import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/middlewares/blocs/produc_category.bloc.dart';
import 'package:my_store/src/models/product_category.model.dart';
import 'package:my_store/src/shared/widgets/category_menu_section.widget.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<ProductCategory> productCategoryList = [];

  @override
  void initState() {
    super.initState();
    productCategoryBloc.fetchAllCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
//      bottomNavigationBar: BottomNavigationBar(
//        type: BottomNavigationBarType.fixed,
//        items: [
//          BottomNavigationBarItem(
//            icon: Icon(Icons.store_mall_directory),
//            title: Text('Shop'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.shopping_cart),
//            title: Text('Cart'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.person),
//            title: Text('Profile'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.more_horiz),
//            title: Text('More'),
//          ),
//        ],
//      ),
      body: Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: productCategoryList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 1.0),
                child: BackgroundCategorySection(
                  onTap: () {},
                  backgroundUrl:
                      productCategoryList[index].productCategoryMedia,
                  backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
                  title: productCategoryList[index].productCategoryName,
                  titleStyle: StylingConstant.kLargeBoldWhiteTitle,
                  subTitle: productCategoryList[index].description,
                  subTitleStyle: StylingConstant.kLightSubtitle,
                ),
              );
            }),
      ),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Text(
        'Shop by category',
        style: StylingConstant.kAppbarTitle,
      ),
      centerTitle: true,
    );
  }
}
