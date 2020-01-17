import 'dart:collection';

import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/models/product_category.model.dart';

class ProductCategoryBlocProvider {
  List<ProductCategory> _categories = [
    ProductCategory(
      productCategoryName: 'Teas',
      description:
          'Let yourself fall in love with the aromas and flavours of our best selection.',
      productCategoryMedia: ImageConstant.CATEGORY_TEA,
      featuredCategories: [
        ProductCategory(
            productCategoryName: 'Green Tea',
            description:
                'Discover the perfect natural drink to take maximum care of your body.',
            productCategoryMedia: ImageConstant.CATEGORY_GREEN_TEA),
        ProductCategory(
            productCategoryName: 'Black Tea',
            description:
                'The natural drink characterised by its stimulant properties and an intense flavour with a full body',
            productCategoryMedia: ImageConstant.CATEGORY_BLACK_TEA),
        ProductCategory(
            productCategoryName: 'White Tea',
            description:
                'The tea of beauty par excellence that you will fall in love with for its delicate flavour and fine aroma',
            productCategoryMedia: ImageConstant.CATEGORY_WHITE_TEA),
        ProductCategory(
            productCategoryName: 'Oolong Tea',
            description:
                'Aromatic, sweet and enveloping are the characteristics belonging to the flavour of one of the most exotic teas',
            productCategoryMedia: ImageConstant.CATEGORY_OOLONG_TEA),
        ProductCategory(
            productCategoryName: 'Pu-Erh Tea',
            description:
                'Start enjoying age-old red tea while benefitting from its medicinal properties',
            productCategoryMedia: ImageConstant.CATEGORY_PUERH_TEA),
        ProductCategory(
            productCategoryName: 'Matcha Tea',
            description:
                'The most ancient Japanese tea rich in flavour and properties.',
            productCategoryMedia: ImageConstant.CATEGORY_MATCHA_TEA),
      ],
    ),
    ProductCategory(
        productCategoryName: 'Teapots',
        description: 'The iconic tea accessory that you cannot miss out on.',
        productCategoryMedia: ImageConstant.CATEGORY_TEAPOTS,
        featuredCategories: [
          ProductCategory(
              productCategoryName: 'Glass Teapots',
              description:
                  'You will fall in love with the elegant, practical and minimalist design of this glass teapot',
              productCategoryMedia: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              productCategoryName: 'Iron Teapots',
              description:
                  'Artisanal and crafted using Japanese techniques with which to enjoy the best of rituals',
              productCategoryMedia: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              productCategoryName: 'Porcelain Teapots',
              description:
                  'Prepare your tea with the iconic material and design of an authentic porcelain teapot',
              productCategoryMedia: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              productCategoryName: 'Yixing Teapots',
              description:
                  'In the households of Yixing, home of the celebrated purple clay teapots, ordinary potters are crafting something extraordinary.',
              productCategoryMedia: ImageConstant.CATEGORY_TEAPOTS),
        ]),
    ProductCategory(
        productCategoryName: 'Teacups',
        description:
            'Discover our most exclusive designs. With or without filter, you can choose the one you like most!',
        productCategoryMedia: ImageConstant.CATEGORY_TEA_CUPS,
        featuredCategories: [
          ProductCategory(
            productCategoryName: 'Glass Mugs',
            description:
                'You will fall in love with the unique, resistant and original characteristics of these glass mugs',
            productCategoryMedia: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            productCategoryName: 'Japanese Mugs',
            description:
                'A unique and artisanal design handmade by master craftsmen where the purest Japanese essence resides',
            productCategoryMedia: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            productCategoryName: 'Porcelain Mugs',
            description:
                'Opt for the most timeless design with porcelain mugs that are ideal for your home',
            productCategoryMedia: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            productCategoryName: 'Gongfu Teacup',
            description:
                'Delicate and diminutive, a zisha gongfu teacup is quintessential for any avid tea drinker.',
            productCategoryMedia: ImageConstant.CATEGORY_TEA_CUPS,
          ),
        ]),
    ProductCategory(
        productCategoryName: 'Infusers',
        description:
            'Make the most of the aroma and flavour of your loose tea with one of these original infusers',
        productCategoryMedia: ImageConstant.CATEGORY_TEA_INFUSERS),
    ProductCategory(
        productCategoryName: 'Accessories',
        description:
            'Complement your experience with one of these practical accessories',
        productCategoryMedia: ImageConstant.CATEGORY_TEA_ACCESSORIES),
  ];

  UnmodifiableListView<ProductCategory> get productCategory {
    return UnmodifiableListView(_categories);
  }

  Future<List<ProductCategory>> fetchProductCategoryData() async {
    return productCategory;
  }
}
