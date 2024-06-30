import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/custom_scaffold.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/widgets/products_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key, required this.selectedIndex});
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ProductsViewBody(
        selectedIndex: selectedIndex,
      ),
    );
  }
}
