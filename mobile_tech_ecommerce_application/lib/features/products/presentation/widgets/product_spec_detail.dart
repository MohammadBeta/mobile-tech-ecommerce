import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';
import '../../data/model/product_spec_model.dart';

class ProductSpecDetail extends StatelessWidget {
  const ProductSpecDetail({
    super.key,
    required this.productSpecModel,
  });
  final ProductSpecModel productSpecModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              '* ${productSpecModel.specName}',
              style: AppTextStyles.styleInterMedium12
                  .copyWith(color: AppColors.gray717171),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(productSpecModel.specDetail,
                style: AppTextStyles.styleInterMedium12),
          ),
        ],
      ),
    );
  }
}
