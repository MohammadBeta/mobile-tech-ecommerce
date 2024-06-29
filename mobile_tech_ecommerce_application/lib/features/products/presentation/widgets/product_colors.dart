import 'package:flutter/material.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const ShapeDecoration(
            color: Color(0xFF101010),
            shape: OvalBorder(
              side: BorderSide(width: 0.25, color: Color(0xFF444444)),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          width: 8,
          height: 8,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(width: 0.25, color: Color(0xFF444444)),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          width: 8,
          height: 8,
          decoration: const ShapeDecoration(
            color: Color(0xFF8B8B8B),
            shape: OvalBorder(
              side: BorderSide(width: 0.25, color: Color(0xFF444444)),
            ),
          ),
        )
      ],
    );
  }
}
