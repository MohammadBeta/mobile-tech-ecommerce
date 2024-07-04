import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/custom_rate.dart';

class ProductRateAndSoldQty extends StatelessWidget {
  const ProductRateAndSoldQty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomRate(),
        const SizedBox(
          height: 16,
          child: VerticalDivider(
            color: AppColors.gray717171,
            width: 24,
            thickness: 1,
          ),
        ),
        Text(
          'Sold 125',
          style: AppTextStyles.styleInterMedium12
              .copyWith(color: AppColors.gray717171),
        )
      ],
    );
  }
}
