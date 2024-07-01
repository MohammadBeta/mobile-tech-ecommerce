import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_tech_ecommerce_application/core/errors/fauiler.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/model/product_model.dart';

abstract class ProductsRepo{
  Future<Either<ServerFailure, List<ProductModel>>> fetchProductsByCategory({required String categoryUuid});
}