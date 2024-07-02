import 'package:flutter/material.dart';

import '../../data/model/product_model.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({
    super.key,
    required this.colors,
  });
  final List<ProductColor> colors;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(colors.length, (index) {
          int? hexColor;
          try {
            hexColor = int.parse('0xFF${colors[index].color}');
          } catch (ex) {
            hexColor = null;
            return const SizedBox();
          }
          return Column(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color: Color(hexColor),
                  shape: const OvalBorder(
                    side: BorderSide(width: 0.25, color: Color(0xFF444444)),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
            ],
          );
        }),
      ],
    );
  }
}
