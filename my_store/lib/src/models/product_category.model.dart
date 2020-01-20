import 'package:flutter/cupertino.dart';
import 'package:my_store/src/models/featured_item.model.dart';

class ProductCategory {
  final String categoryId;
  final String productCategoryName;
  final String categoryDescription;
  final String categoryImage;
  List<ProductCategory> featuredCategories;
  List<FeaturedItem> featuredProductItems;

  ProductCategory(
      {@required this.categoryId,
      this.productCategoryName,
      this.categoryDescription,
      this.categoryImage,
      this.featuredCategories,
      this.featuredProductItems});
}
