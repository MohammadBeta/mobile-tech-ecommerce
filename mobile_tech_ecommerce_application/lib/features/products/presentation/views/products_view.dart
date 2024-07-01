import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_tech_ecommerce_application/core/api/api_crud.dart';
import 'package:mobile_tech_ecommerce_application/core/models/category_model.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/custom_scaffold.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/repos/products_repo_impl.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/manage/fetch_products_by_category_cubit/fetch_products_by_category_cubit.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/widgets/products_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key, required this.currentCategory});
  final CategoryModel currentCategory;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: BlocProvider(
        create: (context) => FetchProductsByCategoryCubit(
            ProductsRepoImpl(apiCrud: ApiCrud(dio: Dio())))
          ..fetchProductsByCategory(categoryUuid: currentCategory.uuid),
        child: ProductsViewBody(
          currentCategory: currentCategory,
        ),
      ),
    );
  }
}
