import 'package:flutter/material.dart';

import 'product_colors_list_view_item.dart';

class ProductColorsListView extends StatefulWidget {
  const ProductColorsListView({super.key});
  static const List<String> colors = ['Gray', 'Black'];

  @override
  State<ProductColorsListView> createState() => _ProductColorsListViewState();
}

class _ProductColorsListViewState extends State<ProductColorsListView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        itemCount: ProductColorsListView.colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: ProductColorItem(
                color: ProductColorsListView.colors[index],
                isSelected: _selectedIndex == index,
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
