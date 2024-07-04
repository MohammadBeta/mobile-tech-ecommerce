import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class ProductColorItem extends StatelessWidget {
  const ProductColorItem(
      {super.key, required this.color, required this.isSelected});
  final String color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.grayEDEDED),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            child: isSelected
                ? const Icon(
                    Icons.check,
                    size: 18,
                    color: AppColors.white,
                  )
                : null,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(color)
        ],
      ),
    );
  }
}
