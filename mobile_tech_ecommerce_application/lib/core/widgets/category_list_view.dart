import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_routes.dart';
import 'package:uuid/uuid.dart';

import '../../features/home/data/model/category_model.dart';
import '../constants/app_assets.dart';
import 'category_list_view_item.dart';

class CategoriseListView extends StatelessWidget {
  const CategoriseListView({super.key, this.selectedIndex = -1});


  static List<CategoryModel> categoryList = [
    CategoryModel(const Uuid().v1(),
        name: 'Accessories', image: Assets.imagesCover),
    CategoryModel(const Uuid().v1(),
        name: 'Camera', image: Assets.imagesCamera),
    CategoryModel(const Uuid().v1(),
        name: 'Laptop', image: Assets.imagesLenovo),
    CategoryModel(const Uuid().v1(),
        name: 'Smart phone', image: Assets.imagesIphone),
    CategoryModel(const Uuid().v1(), name: 'Apple', image: Assets.imagesIphone),
  ];

  final int selectedIndex;

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
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.productsView, extra: index);
              },
              child: CategoryListViewItem(
                category: categoryList[index],
                active: index == selectedIndex,
              ),
            ),
          );
        },
      ),
    );
  }
}
