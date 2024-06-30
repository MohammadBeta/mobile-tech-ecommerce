import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_tech_ecommerce_application/core/utilis/api/api_crud.dart';
import 'package:mobile_tech_ecommerce_application/core/utilis/api/api_urls.dart';
import 'package:mobile_tech_ecommerce_application/core/models/category_model.dart';
import 'package:mobile_tech_ecommerce_application/features/home/data/reop/home_repo.dart';

import '../../../../core/errors/fauiler.dart';

class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl({required this.apiCrud});
  final ApiCrud apiCrud;
  @override
  Future<Either<ServerFailure, List<CategoryModel>>> fetchAllCategories() async {
    try {
      Map<String, dynamic> data =
          await apiCrud.getData(url: ApiUrl.fetchAllCategories);
      List<CategoryModel> categoriesList = [];
      if (data.isNotEmpty) {
        if (data['status'] == 200) {
          for (int i = 0; i < data['data'].length; i++) {
            categoriesList.add(CategoryModel.fromJson(data['data'][i]));
          }
        }
      }
      return right(categoriesList);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioError(ex));
      }
      return left(ServerFailure(message: ex.toString()));
    }
  }
}
