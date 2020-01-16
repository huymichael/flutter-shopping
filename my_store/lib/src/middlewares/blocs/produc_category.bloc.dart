import 'package:my_store/src/middlewares/repositories/product_category.repo.dart';
import 'package:my_store/src/models/product_category.model.dart';
import 'package:rxdart/rxdart.dart';

class ProductCategoryBloc {
  final _productRepository = ProductCategoryRepository();
  final _productCategoryFetcher = PublishSubject<List<ProductCategory>>();

  Observable<List<ProductCategory>> get allProductCategory =>
      _productCategoryFetcher.stream;

  fetchAllCategories() async {
    List<ProductCategory> listCategories =
        await _productRepository.fetchAllCategories();
    _productCategoryFetcher.sink.add(listCategories);
  }

  dispose() {
    _productCategoryFetcher.close();
  }
}

final productCategoryBloc = ProductCategoryBloc();
