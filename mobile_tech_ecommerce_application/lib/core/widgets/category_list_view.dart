import 'package:flutter/material.dart';

import '../constants/app_assets.dart';
import '../../features/home/data/model/category_model.dart';
import 'category_list_view_item.dart';

class CategoriseListView extends StatelessWidget {
  const CategoriseListView({super.key});
  static const List<CategoryModel> categoryList = [
    CategoryModel(name: 'Accessories', image: Assets.imagesCover),
    CategoryModel(name: 'Camera', image: Assets.imagesCamera),
    CategoryModel(name: 'Laptop', image: Assets.imagesLenovo),
    CategoryModel(name: 'Smart phone', image: Assets.imagesIphone),
    CategoryModel(name: 'Apple', image: Assets.imagesIphone),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: CategoryListViewItem(
              category: categoryList[index],
            ),
          );
        },
      ),
    );
  }
}
