import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_styles.dart';
import 'linear_line_divider.dart';
import 'product_colors.dart';
import 'product_offer.dart';
import 'product_price.dart';
import 'product_rate.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          const Positioned(top: 0, left: 0, child: ProductOffer()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.imagesFrame,
                    fit: BoxFit.fill,
                  ),
                  const ProductColors()
                ],
              ),
              const LinearLineDivider(),
              const SizedBox(
                height: 8,
              ),
              Text(
                "MacBook Pro M2 MNEJ3 2022 LLA 13.3 inch",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleInterLight12,
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [ProductPrice(), ProductRate()],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
