import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_tech_ecommerce_application/core/models/category_model.dart';
import 'package:mobile_tech_ecommerce_application/features/home/data/reop/home_repo_impl.dart';

import 'fetch_categories_state.dart';

class FetchCategoriesCubit extends Cubit<FetchCategoriesState> {
  FetchCategoriesCubit(this.homeRepoImpl) : super(FetchCategoriesInitial());
  final HomeRepoImpl homeRepoImpl;
  List<CategoryModel> categories = [];
  void fetchAllCategories() async {
    emit(FetchCategoriesLoading());
    var result = await homeRepoImpl.fetchAllCategories();
    result.fold((failuer) {
      emit(FetchCategoriesFailure(errorMessage: failuer.message));
    }, (categoriesList) {
      categories = categoriesList;
      emit(FetchCategoriesSuccess());
    });
  }
}
