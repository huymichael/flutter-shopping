import 'package:flutter/material.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/shared/widgets/category_menu_section.widget.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More'),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BackgroundCategorySection(
                  onTap: () {
                    print('Navigate to Tea page');
                  },
                  backgroundUrl: ImageConstant.CATEGORY_TEA,
                  backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
                  title: 'Tea',
                  titleStyle: StylingConstant.kLargeBoldTitle,
                  subTitle:
                      'Let yourself fall in love with the aromas and flavours of our best selection.'),
              BackgroundCategorySection(
                  onTap: () {
                    print('Navigate to Teapots page');
                  },
                  backgroundUrl: ImageConstant.CATEGORY_TEAPOTS,
                  backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
                  title: 'Teapots',
                  titleStyle: StylingConstant.kLargeBoldTitle,
                  subTitle:
                      'The iconic tea accessory that you cannot miss out on'),
              BackgroundCategorySection(
                  onTap: () {
                    print('Navigate to tea cup page');
                  },
                  backgroundUrl: ImageConstant.CATEGORY_TEA_CUPS,
                  backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
                  title: 'Tea Cups',
                  titleStyle: StylingConstant.kLargeBoldTitle,
                  subTitle:
                      'Discover our most exclusive designs. With or without filter, you can choose the one you like most!'),
              BackgroundCategorySection(
                  onTap: () {
                    print('Navigate to Infusers page');
                  },
                  backgroundUrl: ImageConstant.CATEGORY_TEA_INFUSERS,
                  backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
                  title: 'Infusers',
                  titleStyle: StylingConstant.kLargeBoldTitle,
                  subTitle:
                      'Make the most of the aroma and flavour of your loose tea with one of these original infusers'),
              BackgroundCategorySection(
                  onTap: () {
                    print('Navigate to accessories page');
                  },
                  backgroundUrl: ImageConstant.CATEGORY_TEA_ACCESSORIES,
                  backgroundFilterColor: StylingConstant.kBlackBackgroundFilter,
                  title: 'Accessories',
                  titleStyle: StylingConstant.kLargeBoldTitle,
                  subTitle:
                      'Complement your experience with one of these practical accessories'),
            ],
          ),
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
