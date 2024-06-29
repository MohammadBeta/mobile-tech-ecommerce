import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ProductOffer extends StatelessWidget {
  const ProductOffer({
    super.key,
    required this.offerDiscount,
  });
  final double offerDiscount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 19,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: const ShapeDecoration(
        color: Color(0xFFFDDBC9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
      ),
      child: Center(
        child: Text(
          '-${offerDiscount.toStringAsFixed(0)}%',
          textAlign: TextAlign.center,
          style: AppTextStyles.styleInterLight12
              .copyWith(color: AppColors.secondary),
        ),
      ),
    );
  }
}
