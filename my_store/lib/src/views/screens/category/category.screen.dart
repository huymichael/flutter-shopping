import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/middlewares/blocs/produc_category.bloc.dart';
import 'package:my_store/src/models/product_category.model.dart';
import 'package:my_store/src/routes/route_paths.dart';
import 'package:my_store/src/shared/widgets/category_menu_section.widget.dart';
import 'package:my_store/src/utils/regex.util.dart';

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
  void dispose() {
    productCategoryBloc.dispose();
    super.dispose();
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
        child: StreamBuilder<List<ProductCategory>>(
          stream: productCategoryBloc.allProductCategory,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductCategory> listProduct = snapshot.data;
              return ListView.builder(
                  itemCount: listProduct.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 1.0),
                      child: BackgroundCategorySection(
                        backgroundUrl: listProduct[index].categoryImage,
                        backgroundFilterColor:
                            StylingConstant.kBlackBackgroundFilter,
                        title: listProduct[index].productCategoryName,
                        subTitle: listProduct[index].categoryDescription,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '${RoutingPath.category}/${listProduct[index].productCategoryName.toLowerCase().trim().replaceAll(RegexPattern().spacesBetweenWords, "")}',
                            arguments:  listProduct[index].categoryId,
                          );
//                          print(
//                              '${RoutingPath.category}/${listProduct[index].productCategoryName.toLowerCase().trim().replaceAll(RegexPattern().spacesBetweenWords, "")}');
                        },
                      ),
                    );
                  });
            }
            return Container();
          },
        ),
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
