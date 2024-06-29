import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              size: 24,
              color: AppColors.gray717171,
            ),
            onPressed: () {},
          ),
          contentPadding: EdgeInsets.zero.copyWith(left: 16, right: 16),
          hintText: "What can we help you to find ?",
          hintStyle: AppTextStyles.styleInterLight12
              .copyWith(color: AppColors.gray717171),
          filled: true,
          fillColor: AppColors.grayEDEDED,
          enabledBorder: generateBorder(),
          focusedBorder: generateBorder()),
    );
  }

  OutlineInputBorder generateBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
        gapPadding: 0);
  }
}
