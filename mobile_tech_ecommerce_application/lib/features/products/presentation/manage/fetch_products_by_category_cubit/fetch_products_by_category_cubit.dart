import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/repos/products_repo_impl.dart';

import '../../../data/model/product_model.dart';

part 'fetch_products_by_category_state.dart';

class FetchProductsByCategoryCubit extends Cubit<FetchProductsByCategoryState> {
  FetchProductsByCategoryCubit(this.productsRepoImpl) : super(FetchProductsByCategoryInitial());

  final ProductsRepoImpl productsRepoImpl;
  void fetchProductsByCategory({required String categoryUuid}) async{
emit(FetchProductsByCategoryLoading());

var result = await productsRepoImpl.fetchProductsByCategory(categoryUuid: categoryUuid);
result.fold((failuer) {

  emit(FetchProductsByCategoryFailuer(errorMessage: failuer.message));
}, (products) {
  emit(FetchProductsByCategorySuccess(productsList: products));
});

  }
}
