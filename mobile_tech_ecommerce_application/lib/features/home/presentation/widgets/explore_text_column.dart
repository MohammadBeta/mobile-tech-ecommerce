import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ExploreTextColumn extends StatelessWidget {
  const ExploreTextColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Tech Heim",
          style: AppTextStyles.styleInterMedium24
              .copyWith(color: AppColors.primary700),
        ),
        const SizedBox(
          height: 6,
        ),
        RichText(
            text: TextSpan(
                text: "\"Join the ",
                style: AppTextStyles.styleInterMedium10
                    .copyWith(color: AppColors.primary700),
                children: [
              TextSpan(
                text: "digital revolution\"",
                style: AppTextStyles.styleInterMedium10
                    .copyWith(color: AppColors.secondary),
              )
            ])),
      ],
    );
  }
}
