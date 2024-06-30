import 'package:dartz/dartz.dart';
import 'package:mobile_tech_ecommerce_application/core/errors/fauiler.dart';

import '../../../../core/models/category_model.dart';

abstract class HomeRepo {
  Future<Either<ServerFailure, List<CategoryModel>>> fetchAllCategories();
}
