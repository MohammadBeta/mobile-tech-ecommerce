import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_styles.dart';

class CustomRate extends StatelessWidget {
  const CustomRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 25,
      padding: const EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: const Color(0xFF063A88),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 14,
          ),
          const SizedBox(
            width: 2,
          ),
          Text('4.9',
              textAlign: TextAlign.center,
              style: AppTextStyles.styleInterMedium12
                  .copyWith(color: AppColors.white, height: 0)),
        ],
      ),
    );
  }
}
