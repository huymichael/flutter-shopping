import 'package:my_store/src/models/featured_product.model.dart';

class ProductCategory {
  final String productCategoryName;
  final String description;
  final String productCategoryMedia;
  List<ProductCategory> featuredCategories;
  List<FeaturedProduct> featuredProducts;

  ProductCategory(
      {this.productCategoryName,
      this.description,
      this.productCategoryMedia,
      this.featuredCategories,
      this.featuredProducts});
}
