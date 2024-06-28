import 'package:flutter/material.dart';
import 'app_bar_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: AppBarSection(),
        )
      ],
    );
  }
}
