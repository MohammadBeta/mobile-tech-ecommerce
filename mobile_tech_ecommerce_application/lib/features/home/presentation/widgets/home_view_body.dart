import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/category_list_view.dart';

import '../../../../core/widgets/app_bar/custom_app_bar_section.dart';
import 'exploer_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: AppBarSection(),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ExploreSection(),
        ),
        SizedBox(
          height: 16,
        ),
        CategoriseListView()
      ],
    );
  }
}
