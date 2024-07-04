import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/custom_scaffold.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/model/product_model.dart';

import '../widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productUuid});
  final ProductModel productUuid;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: ProductDetailsViewBody(
      productModel: productUuid,
    ));
  }
}
