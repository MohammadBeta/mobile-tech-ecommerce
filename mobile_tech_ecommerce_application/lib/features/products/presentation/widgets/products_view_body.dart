import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/app_bar/custom_app_bar_section.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/category_list_view.dart';

import 'products_grid_view.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarSection(),
        SizedBox(
          height: 16,
        ),
        CategoriseListView(),
        SizedBox(
          height: 16,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ProductsGridView(),
        ))
      ],
    );
  }
}
