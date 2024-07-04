import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 40,
      color: AppColors.grayEDEDED,
    );
  }
}
