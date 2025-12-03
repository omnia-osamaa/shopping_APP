import 'package:shopping_app/core/network/result_api.dart';
import 'package:shopping_app/features/home/domain/entitiy/category_entity.dart';
import 'package:shopping_app/features/home/domain/entitiy/product_entity.dart';

abstract class HomeRepo {
  Future<ResultAPI<List<CategoryEntity>>> getCategories();
  Future<ResultAPI<List<ProductEntity>>> getProducts();
}