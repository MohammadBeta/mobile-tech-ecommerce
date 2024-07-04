import 'package:flutter/material.dart';

import '../../../../core/constants/app_styles.dart';
import 'product_colors_list_view.dart';

class SelectProductColorSection extends StatelessWidget {
  const SelectProductColorSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Color:',
          style: AppTextStyles.styleInterLight16,
        ),
        const SizedBox(
          height: 12,
        ),
        const ProductColorsListView(),
      ],
    );
  }
}
