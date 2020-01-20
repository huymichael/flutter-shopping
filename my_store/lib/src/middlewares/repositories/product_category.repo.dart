import 'package:my_store/src/middlewares/providers/product_category.provider.dart';
import 'package:my_store/src/models/product_category.model.dart';

class ProductCategoryRepository {
  final _categoryProvider = ProductCategoryBlocProvider();

  Future<List<ProductCategory>> fetchAllCategories() =>
      _categoryProvider.fetchProductCategoryData();
}
