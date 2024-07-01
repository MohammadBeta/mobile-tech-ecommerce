import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_tech_ecommerce_application/core/api/api_crud.dart';
import 'package:mobile_tech_ecommerce_application/features/home/data/reop/home_repo_impl.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/repos/products_repo_impl.dart';

void setup() {
  GetIt.I.registerSingleton<ApiCrud>(ApiCrud(dio: Dio()));

  GetIt.I.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiCrud: GetIt.I.get<ApiCrud>()));
  GetIt.I.registerSingleton<ProductsRepoImpl>(
      ProductsRepoImpl(apiCrud: GetIt.I.get<ApiCrud>()));
}
