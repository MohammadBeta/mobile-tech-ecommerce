import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/app_bar/custom_app_bar_section.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/model/product_model.dart';

import '../../../../core/widgets/custom_divider.dart';
import 'product_attributs.dart';
import 'product_header.dart';
import 'product_name.dart';
import 'product_rate_and_sold_qty.dart';
import 'product_specs_section.dart';
import 'select_product_color_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBarSection(),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ProductHeader(
            image: productModel.productImage,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ProductName(productName: productModel.name),
        ),
        const SizedBox(
          height: 8,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                ProductRateAndSoldQty(),
                SizedBox(
                  height: 12,
                ),
                ProductAttributes()
              ],
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomDivider(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SelectProductColorSection(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomDivider(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ProductDetailsSection(),
        )
      ],
    );
  }
}
