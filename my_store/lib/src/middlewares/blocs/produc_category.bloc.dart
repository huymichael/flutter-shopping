import 'package:my_store/src/middlewares/repositories/product_category.repo.dart';
import 'package:my_store/src/models/product_category.model.dart';
import 'package:rxdart/rxdart.dart';

class ProductCategoriesBloc {
  final _productRepository = ProductCategoryRepository();
  final _productCategoryFetcher = PublishSubject<List<ProductCategory>>();
  final _categoryFetcher = PublishSubject<ProductCategory>();

  Observable<List<ProductCategory>> get allProductCategory =>
      _productCategoryFetcher.stream;

  Observable<ProductCategory> get productCategory => _categoryFetcher.stream;

  fetchAllCategories() async {
    List<ProductCategory> listCategories =
        await _productRepository.fetchAllCategories();
    _productCategoryFetcher.sink.add(listCategories);
  }
  fetchCategoryByID(String id) async{
    ProductCategory productCategory = await _productRepository.fetchCategoryByID(id);
    _categoryFetcher.sink.add(productCategory);
  }
  dispose() async {
    await _productCategoryFetcher.drain();
    _productCategoryFetcher.close();
    await _categoryFetcher.drain();
    _categoryFetcher.close();
  }
}

final productCategoryBloc = ProductCategoriesBloc();
