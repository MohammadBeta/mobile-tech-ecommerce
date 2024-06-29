import 'package:flutter/material.dart';
import '../constants/app_styles.dart';
import '../../features/home/data/model/category_model.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({super.key, required this.category});
  final CategoryModel category;
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
