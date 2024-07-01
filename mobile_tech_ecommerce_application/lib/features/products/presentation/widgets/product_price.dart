import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.offerPrice,
    required this.price,
  });
  final double offerPrice;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (offerPrice != 0)
          Text(
            r"$ " + offerPrice.toString(),
            style: AppTextStyles.styleInterRegular10.copyWith(
                color: AppColors.gray717171,
                decoration: TextDecoration.lineThrough),
          ),
        Text(
          r"$ " + price.toString(),
          style: AppTextStyles.styleInterLight12,
        ),
      ],
    );
  }
}
