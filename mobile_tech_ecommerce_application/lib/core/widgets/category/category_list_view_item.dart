import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_colors.dart';

import '../../constants/app_styles.dart';
import '../../models/category_model.dart';

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
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
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
                    ),
                    child: CachedNetworkImage(
                      imageUrl: category.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
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
