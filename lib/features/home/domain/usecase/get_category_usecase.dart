import 'package:shopping_app/core/network/result_api.dart';
import 'package:shopping_app/features/home/data/repo/repo/home_repo.dart';
import 'package:shopping_app/features/home/domain/entitiy/category_entity.dart';
import 'package:shopping_app/features/home/domain/repo/repo/home_repo.dart';

class GetCategoryUsecase {
  final HomeRepo _homeRepo;

  GetCategoryUsecase(this._homeRepo);

  Future<ResultAPI<List<CategoryEntity>>> call() async =>
      _homeRepo.getCategories();
}

GetCategoryUsecase injectableGetCategoriesUseCase() =>
    GetCategoryUsecase(injectableHomeRepo());
