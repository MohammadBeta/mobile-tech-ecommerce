import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    super.key, required this.rate,
  });
final double rate;
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
          rate.toString(),
          style: AppTextStyles.styleInterMedium14
              .copyWith(color: AppColors.primary500),
        )
      ],
    );
  }
}
