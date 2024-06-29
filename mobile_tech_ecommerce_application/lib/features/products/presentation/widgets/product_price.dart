import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          r"$ 2,869.00",
          style: AppTextStyles.styleInterRegular10.copyWith(
              color: AppColors.gray717171,
              decoration: TextDecoration.lineThrough),
        ),
        Text(
          r"$ 2,689.00",
          style: AppTextStyles.styleInterLight12,
        ),
      ],
    );
  }
}
