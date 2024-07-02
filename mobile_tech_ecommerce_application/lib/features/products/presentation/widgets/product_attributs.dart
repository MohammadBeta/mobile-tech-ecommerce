import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductAttribute(
          name: 'In Stock',
          iamge: Assets.imagesShop,
        ),
        ProductAttribute(
          name: 'Guaranteed',
          iamge: Assets.imagesVerify,
        ),
        ProductAttribute(
          name: 'Free Delivery',
          iamge: Assets.imagesTruck,
        ),
      ],
    );
  }
}

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({
    super.key,
    required this.name,
    required this.iamge,
  });
  final String name;
  final String iamge;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(iamge),
        const SizedBox(
          width: 2.5,
        ),
        Text(
          name,
          style: AppTextStyles.styleInterMedium12
              .copyWith(color: AppColors.gray717171),
        ),
      ],
    );
  }
}
