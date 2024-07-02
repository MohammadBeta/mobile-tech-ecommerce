import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ProductGalleryButton extends StatelessWidget {
  const ProductGalleryButton({
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
          Image.asset(
            Assets.imagesGallery,
            fit: BoxFit.fill,
            color: Colors.white,
          ),
          const SizedBox(
            width: 2,
          ),
          Text('1/5',
              textAlign: TextAlign.center,
              style: AppTextStyles.styleInterMedium12
                  .copyWith(color: AppColors.white, height: 0)),
        ],
      ),
    );
  }
}
