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
        ...List.generate(
            colors.length,
            (index) => Column(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: ShapeDecoration(
                        color: colors[index].color,
                        shape: const OvalBorder(
                          side:
                              BorderSide(width: 0.25, color: Color(0xFF444444)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                )),
      ],
    );
  }
}
