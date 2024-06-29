import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/custom_scaffold.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/widgets/products_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: ProductsViewBody(),
    );
  }
}
