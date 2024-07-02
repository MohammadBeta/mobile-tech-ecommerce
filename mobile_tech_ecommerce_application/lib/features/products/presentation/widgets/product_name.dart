import 'package:flutter/material.dart';

import '../../../../core/constants/app_styles.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
    required this.productName,
  });

  final String productName;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        productName,
        textAlign: TextAlign.start,
        style: AppTextStyles.styleInterMedium16,
      ),
    );
  }
}
