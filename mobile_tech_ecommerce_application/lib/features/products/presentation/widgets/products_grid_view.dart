import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_colors.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_routes.dart';
import 'package:mobile_tech_ecommerce_application/core/utilis/functions/show_scaffold_snakbar.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/custom_error_widget.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/manage/fetch_products_by_category_cubit/fetch_products_by_category_cubit.dart';

import '../../../../core/widgets/custom_inprogress_widget.dart';
import 'product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchProductsByCategoryCubit,
        FetchProductsByCategoryState>(
      listener: (context, state) {
        if (state is FetchProductsByCategoryFailuer) {
          showErrorSnakBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state is FetchProductsByCategorySuccess) {
          return GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.productsList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRoutes.productDetailsView,
                      extra: state.productsList[index]);
                },
                splashColor: AppColors.secondary.withOpacity(0.3),
                child: ProductItem(
                  productModel: state.productsList[index],
                ),
              );
            },
          );
        } else if (state is FetchProductsByCategoryFailuer) {
          return const CustomErrorWidget();
        } else {
          return const CustomInProgressWidget();
        }
      },
    );
  }
}
