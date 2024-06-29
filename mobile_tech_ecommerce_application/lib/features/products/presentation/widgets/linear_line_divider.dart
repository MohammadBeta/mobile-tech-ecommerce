import 'package:flutter/material.dart';

class LinearLineDivider extends StatelessWidget {
  const LinearLineDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 1,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 95, 95, 95),
            Color.fromARGB(255, 255, 255, 255),
          ],
        )),
      ),
    );
  }
}
