import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_tech_ecommerce_application/core/api/api_crud.dart';
import 'package:mobile_tech_ecommerce_application/core/api/api_urls.dart';
import 'package:mobile_tech_ecommerce_application/core/errors/fauiler.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/model/product_model.dart';

import 'products_repo.dart';

class ProductsRepoImpl extends ProductsRepo {
  final ApiCrud apiCrud;

  ProductsRepoImpl({required this.apiCrud});
  @override
  Future<Either<ServerFailure, List<ProductModel>>> fetchProductsByCategory(
      {required String categoryUuid}) async {
    try {
      var data = await apiCrud.getData(
          url: ApiUrl.fetchProductsByCategory + categoryUuid);

      List<ProductModel> productsList = [];
      if (data.isNotEmpty) {
        if (data['status'] == 200) {
          for (int i = 0; i < data['data'].length; i++) {
            productsList.add(ProductModel.fromJson(data['data'][i]));
          }
        }
      }

      return right(productsList);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioError(ex));
      }

      return left(ServerFailure(message: ex.toString()));
    }
  }
}
