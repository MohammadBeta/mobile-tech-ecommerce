import 'package:flutter/material.dart';

import 'product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisExtent: 200),
      itemBuilder: (context, index) {
        return const ProductItem();
      },
    );
  }
}
