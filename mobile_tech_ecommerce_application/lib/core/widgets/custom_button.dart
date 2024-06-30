
import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_colors.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onPressed,
  });
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          backgroundColor: AppColors.secondary,
          padding: const EdgeInsets.all(10)),
      child: Text(
        "Explore More",
        style:
            AppTextStyles.styleInterRegular10.copyWith(color: AppColors.white),
      ),
    );
  }
}
