import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyles {
  static TextStyle styleInterLight12 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
  );

  static TextStyle styleInterLight14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
  );
  static TextStyle styleInterLight16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
  );
  static TextStyle styleInterMedium10 = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle styleInterMedium12 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle styleInterMedium14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle styleInterMedium16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static TextStyle styleInterMedium24 = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.primary400);
  static TextStyle styleInterRegular10 = const TextStyle(
      fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.black);
  static TextStyle styleInterRegular12 = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.gray717171);
  static TextStyle styleInterRegular14 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.black);

  static TextStyle styleRobotoRegular23 = const TextStyle(
      fontSize: 23, fontWeight: FontWeight.w400, color: AppColors.black);

  static TextStyle styleRobotoBold10 = const TextStyle(
      fontSize: 10, fontWeight: FontWeight.w700, color: AppColors.gray444444);
}
