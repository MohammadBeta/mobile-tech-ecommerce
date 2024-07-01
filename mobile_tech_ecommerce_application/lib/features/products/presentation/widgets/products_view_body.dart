import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_tech_ecommerce_application/core/models/category_model.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/app_bar/custom_app_bar_section.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/category/category_list_view.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/manage/fetch_products_by_category_cubit/fetch_products_by_category_cubit.dart';

import 'products_grid_view.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key, required this.currentCategory});

  final CategoryModel currentCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarSection(),
        const SizedBox(
          height: 16,
        ),
        CategoriseListView(
          currentCategory: currentCategory,
          onTap: (categoryUuid) {
            BlocProvider.of<FetchProductsByCategoryCubit>(context).fetchProductsByCategory(categoryUuid: categoryUuid);
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ProductsGridView(),
        ))
      ],
    );
  }
}
