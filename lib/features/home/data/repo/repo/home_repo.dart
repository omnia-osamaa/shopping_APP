import 'package:shopping_app/core/network/result_api.dart';
import 'package:shopping_app/features/home/data/repo/data%20source/home_data_source.dart';
import 'package:shopping_app/features/home/domain/entitiy/category_entity.dart';
import 'package:shopping_app/features/home/domain/entitiy/product_entity.dart';
import 'package:shopping_app/features/home/domain/repo/data%20source/home_data_source.dart';
import 'package:shopping_app/features/home/domain/repo/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  HomeRepoImp(this._dataSource);
  final HomeDataSource _dataSource;

  @override
  Future<ResultAPI<List<CategoryEntity>>> getCategories() =>
      _dataSource.getCategories();
  @override
  Future<ResultAPI<List<ProductEntity>>> getProducts() =>
      _dataSource.getProducts();
}

HomeRepo injectableHomeRepo() => HomeRepoImp(injectableHomeDataSource());
