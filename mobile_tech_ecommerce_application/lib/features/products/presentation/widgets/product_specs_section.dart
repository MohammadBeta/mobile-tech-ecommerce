import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/widgets/product_spec_detail.dart';

import '../../data/model/product_spec_model.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key});
  static const List<ProductSpecModel> specsList = [
    ProductSpecModel(specName: 'Model Name', specDetail: 'Apple'),
    ProductSpecModel(specName: 'Brand', specDetail: 'Samsung'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: specsList.length,
        itemBuilder: (context, index) {
          return ProductSpecDetail(productSpecModel: specsList[index]);
        },
      ),
    );
  }
}
