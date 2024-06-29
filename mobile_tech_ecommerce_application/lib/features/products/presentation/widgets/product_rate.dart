import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: AppColors.primary500,
          size: 16,
        ),
        Text(
          "4.9",
          style: AppTextStyles.styleInterMedium14
              .copyWith(color: AppColors.primary500),
        )
      ],
    );
  }
}
