import 'package:my_store/src/models/featured_product.model.dart';

class ProductCategory {
  final String productCategoryName;
  final String categoryDescription;
  final String categoryImage;
  List<ProductCategory> featuredCategories;
  List<FeaturedItem> featuredProductItems;

  ProductCategory(
      {this.productCategoryName,
      this.categoryDescription,
      this.categoryImage,
      this.featuredCategories,
      this.featuredProductItems});
}
