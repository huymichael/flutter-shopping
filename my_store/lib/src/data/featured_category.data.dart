import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/models/featured_categories.model.dart';

class FeatureCategoryData {
  List<FeatureCategories> categoriesList = [
    FeatureCategories('Green Tea', ImageConstant.CATEGORY_GREEN_TEA, 'Olaaa'),
    FeatureCategories('Black Tea', ImageConstant.CATEGORY_BLACK_TEA, 'Olaaa'),
    FeatureCategories('White Tea', ImageConstant.CATEGORY_WHITE_TEA, 'Olaaa'),
    FeatureCategories('Yellow Tea', ImageConstant.CATEGORY_YELLOW_TEA, 'Olaaa'),
    FeatureCategories('Oolong Tea', ImageConstant.CATEGORY_OOLONG_TEA, 'Olaaa'),
    FeatureCategories('Pu-Erh Tea', ImageConstant.CATEGORY_PUERH_TEA, 'Olaaa'),
    FeatureCategories('Hei cha', ImageConstant.CATEGORY_HEI_CHA, 'Olaaa'),
  ];
}
