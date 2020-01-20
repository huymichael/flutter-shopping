import 'dart:collection';

import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/models/product_category.model.dart';
import 'package:my_store/src/utils/uuid_generator.util.dart';

class ProductCategoryBlocProvider {
  List<ProductCategory> _categories = [
    ProductCategory(
      categoryId: UuidGenerator().getID(),
      productCategoryName: 'Teas',
      categoryDescription:
          'Let yourself fall in love with the aromas and flavours of our best selection.',
      categoryImage: ImageConstant.CATEGORY_TEA,
      featuredCategories: [
        ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Green Tea',
            categoryDescription:
                'Discover the perfect natural drink to take maximum care of your body.',
            categoryImage: ImageConstant.CATEGORY_GREEN_TEA),
        ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Black Tea',
            categoryDescription:
                'The natural drink characterised by its stimulant properties and an intense flavour with a full body',
            categoryImage: ImageConstant.CATEGORY_BLACK_TEA),
        ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'White Tea',
            categoryDescription:
                'The tea of beauty par excellence that you will fall in love with for its delicate flavour and fine aroma',
            categoryImage: ImageConstant.CATEGORY_WHITE_TEA),
        ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Oolong Tea',
            categoryDescription:
                'Aromatic, sweet and enveloping are the characteristics belonging to the flavour of one of the most exotic teas',
            categoryImage: ImageConstant.CATEGORY_OOLONG_TEA),
        ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Pu-Erh Tea',
            categoryDescription:
                'Start enjoying age-old red tea while benefitting from its medicinal properties',
            categoryImage: ImageConstant.CATEGORY_PUERH_TEA),
        ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Matcha Tea',
            categoryDescription:
                'The most ancient Japanese tea rich in flavour and properties.',
            categoryImage: ImageConstant.CATEGORY_MATCHA_TEA),
      ],
    ),
    ProductCategory(
        categoryId: UuidGenerator().getID(),
        productCategoryName: 'Teapots',
        categoryDescription:
            'The iconic tea accessory that you cannot miss out on.',
        categoryImage: ImageConstant.CATEGORY_TEAPOTS,
        featuredCategories: [
          ProductCategory(
              categoryId: UuidGenerator().getID(),
              productCategoryName: 'Glass Teapots',
              categoryDescription:
                  'You will fall in love with the elegant, practical and minimalist design of this glass teapot',
              categoryImage: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              categoryId: UuidGenerator().getID(),
              productCategoryName: 'Iron Teapots',
              categoryDescription:
                  'Artisanal and crafted using Japanese techniques with which to enjoy the best of rituals',
              categoryImage: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              categoryId: UuidGenerator().getID(),
              productCategoryName: 'Porcelain Teapots',
              categoryDescription:
                  'Prepare your tea with the iconic material and design of an authentic porcelain teapot',
              categoryImage: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              categoryId: UuidGenerator().getID(),
              productCategoryName: 'Yixing Teapots',
              categoryDescription:
                  'In the households of Yixing, home of the celebrated purple clay teapots, ordinary potters are crafting something extraordinary.',
              categoryImage: ImageConstant.CATEGORY_TEAPOTS),
        ]),
    ProductCategory(
        categoryId: UuidGenerator().getID(),
        productCategoryName: 'Teacups - Mugs',
        categoryDescription:
            'Discover our most exclusive designs. With or without filter, you can choose the one you like most!',
        categoryImage: ImageConstant.CATEGORY_TEA_CUPS,
        featuredCategories: [
          ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Glass Mugs',
            categoryDescription:
                'You will fall in love with the unique, resistant and original characteristics of these glass mugs',
            categoryImage: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Japanese Mugs',
            categoryDescription:
                'A unique and artisanal design handmade by master craftsmen where the purest Japanese essence resides',
            categoryImage: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Porcelain Mugs',
            categoryDescription:
                'Opt for the most timeless design with porcelain mugs that are ideal for your home',
            categoryImage: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            categoryId: UuidGenerator().getID(),
            productCategoryName: 'Gongfu Teacup',
            categoryDescription:
                'Delicate and diminutive, a zisha gongfu teacup is quintessential for any avid tea drinker.',
            categoryImage: ImageConstant.CATEGORY_TEA_CUPS,
          ),
        ]),
    ProductCategory(
        categoryId: UuidGenerator().getID(),
        productCategoryName: 'Infusers',
        categoryDescription:
            'Make the most of the aroma and flavour of your loose tea with one of these original infusers',
        categoryImage: ImageConstant.CATEGORY_TEA_INFUSERS),
    ProductCategory(
        categoryId: UuidGenerator().getID(),
        productCategoryName: 'Accessories',
        categoryDescription:
            'Complement your experience with one of these practical accessories',
        categoryImage: ImageConstant.CATEGORY_TEA_ACCESSORIES),
  ];

  UnmodifiableListView<ProductCategory> get productCategory {
    return UnmodifiableListView(_categories);
  }

  Future<List<ProductCategory>> fetchProductCategoryData() async {
    return productCategory;
  }
}
