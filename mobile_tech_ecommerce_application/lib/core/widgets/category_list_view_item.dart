import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_colors.dart';

import '../../features/home/data/model/category_model.dart';
import '../constants/app_styles.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem(
      {super.key, required this.category, this.active = false});
  final CategoryModel category;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 82 / 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: active
                    ? const [
                        BoxShadow(
                            color: AppColors.secondary,
                            offset: Offset(0, 5),
                            blurRadius: 100,
                            spreadRadius: 0.0001,
                            blurStyle: BlurStyle.inner)
                      ]
                    : null,
                image: DecorationImage(
                  image: AssetImage(category.image),
                  fit: BoxFit.contain,
                )),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            category.name,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.styleInterLight12,
          ),
        ],
      ),
    );
  }
}
