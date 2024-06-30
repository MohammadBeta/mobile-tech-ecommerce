import 'package:flutter/material.dart';

class CustomInProgressWidget extends StatelessWidget {
  const CustomInProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
