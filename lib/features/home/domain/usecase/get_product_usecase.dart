import 'package:shopping_app/core/network/result_api.dart';
import 'package:shopping_app/features/home/data/repo/repo/home_repo.dart';
import 'package:shopping_app/features/home/domain/entitiy/product_entity.dart';
import 'package:shopping_app/features/home/domain/repo/repo/home_repo.dart';

class GetProductUsecase {
  GetProductUsecase(this._homeRepo);
  final HomeRepo _homeRepo;

  Future<ResultAPI<List<ProductEntity>>> call() async =>
      _homeRepo.getProducts();
}

GetProductUsecase injectableGetProductsUseCase() =>
    GetProductUsecase(injectableHomeRepo());
