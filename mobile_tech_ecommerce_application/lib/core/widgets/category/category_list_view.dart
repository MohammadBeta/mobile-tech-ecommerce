import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_routes.dart';
import 'package:mobile_tech_ecommerce_application/features/home/presentation/manager/cubit/fetch_categories_cubit.dart';
import 'package:mobile_tech_ecommerce_application/features/home/presentation/manager/cubit/fetch_categories_state.dart';

import '../../models/category_model.dart';
import '../../utilis/functions/show_scaffold_snakbar.dart';
import '../custom_error_widget.dart';
import '../custom_inprogress_widget.dart';
import 'category_list_view_item.dart';

class CategoriseListView extends StatelessWidget {
  const CategoriseListView({super.key, this.selectedIndex = -1});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: BlocConsumer<FetchCategoriesCubit, FetchCategoriesState>(
        listener: (context, state) {
          if (state is FetchCategoriesFailure) {
            showErrorSnakBar(context, state.errorMessage);
          }
        },
        builder: (context, state) {
          if (state is FetchCategoriesSuccess) {
            List<CategoryModel> categories =
                BlocProvider.of<FetchCategoriesCubit>(context).categories;
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context)
                          .push(AppRoutes.productsView, extra: index);
                    },
                    child: CategoryListViewItem(
                      category: categories[index],
                      active: index == selectedIndex,
                    ),
                  ),
                );
              },
            );
          } else if (state is FetchCategoriesFailure) {
            return const CustomErrorWidget();
          }
          return const CustomInProgressWidget();
        },
      ),
    );
  }
}
