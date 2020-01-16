import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/models/featured_categories.model.dart';

class FeatureCategoryData {
  List<FeatureCategories> featuredTeaList = [
    FeatureCategories(
        categoryTitle: 'Green Tea',
        imageUrl: ImageConstant.CATEGORY_GREEN_TEA,
        categorySubtitle:
            'Discover the perfect natural drink to take maximum care of your body.'),
    FeatureCategories(
        categoryTitle: 'Black Tea',
        imageUrl: ImageConstant.CATEGORY_BLACK_TEA,
        categorySubtitle:
            'The natural drink characterised by its stimulant properties and an intense flavour with a full body'),
    FeatureCategories(
        categoryTitle: 'White Tea',
        imageUrl: ImageConstant.CATEGORY_WHITE_TEA,
        categorySubtitle:
            'The tea of beauty par excellence that you will fall in love with for its delicate flavour and fine aroma'),
    FeatureCategories(
        categoryTitle: 'Oolong Tea',
        imageUrl: ImageConstant.CATEGORY_OOLONG_TEA,
        categorySubtitle:
            'Aromatic, sweet and enveloping are the characteristics belonging to the flavour of one of the most exotic teas'),
    FeatureCategories(
        categoryTitle: 'Pu-Erh Tea',
        imageUrl: ImageConstant.CATEGORY_PUERH_TEA,
        categorySubtitle:
            'Start enjoying age-old red tea while benefitting from its medicinal properties'),
    FeatureCategories(
        categoryTitle: 'Matcha Tea',
        imageUrl: ImageConstant.CATEGORY_MATCHA_TEA,
        categorySubtitle:
            'The most ancient Japanese tea rich in flavour and properties.'),
  ];

  List<FeatureCategories> featuredTeapotList = [
    FeatureCategories(
      categoryTitle: 'Glass Teapots',
      imageUrl: ImageConstant.CATEGORY_TEAPOTS,
      categorySubtitle:
          'You will fall in love with the elegant, practical and minimalist design of this glass teapot',
    ),
    FeatureCategories(
      categoryTitle: 'Iron Teapots',
      imageUrl: ImageConstant.CATEGORY_TEAPOTS,
      categorySubtitle:
          'Artisanal and crafted using Japanese techniques with which to enjoy the best of rituals',
    ),
    FeatureCategories(
      categoryTitle: 'Porcelain Teapots',
      imageUrl: ImageConstant.CATEGORY_TEAPOTS,
      categorySubtitle:
          'Prepare your tea with the iconic material and design of an authentic porcelain teapot',
    ),
    FeatureCategories(
      categoryTitle: 'Yixing Teapots',
      imageUrl: ImageConstant.CATEGORY_TEAPOTS,
      categorySubtitle:
          'In the households of Yixing, home of the celebrated purple clay teapots, ordinary potters are crafting something extraordinary.',
    ),
  ];

  List<FeatureCategories> featuredTeacupList = [
    FeatureCategories(
      categoryTitle: 'Glass Mugs',
      imageUrl: ImageConstant.CATEGORY_TEA_CUPS,
      categorySubtitle:
          'You will fall in love with the unique, resistant and original characteristics of these glass mugs',
    ),
    FeatureCategories(
      categoryTitle: 'Japanese Mugs',
      imageUrl: ImageConstant.CATEGORY_TEA_CUPS,
      categorySubtitle:
          'A unique and artisanal design handmade by master craftsmen where the purest Japanese essence resides',
    ),
    FeatureCategories(
      categoryTitle: 'Porcelain Mugs',
      imageUrl: ImageConstant.CATEGORY_TEA_CUPS,
      categorySubtitle:
          'Opt for the most timeless design with porcelain mugs that are ideal for your home',
    ),
    FeatureCategories(
      categoryTitle: 'Gongfu Teacup',
      imageUrl: ImageConstant.CATEGORY_TEA_CUPS,
      categorySubtitle:
          'Delicate and diminutive, a zisha gongfu teacup is quintessential for any avid tea drinker.',
    ),
  ];
}
