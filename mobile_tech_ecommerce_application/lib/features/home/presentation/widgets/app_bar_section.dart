import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/features/home/presentation/widgets/home_app_bar.dart';

import 'search_box.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeAppBar(),
        SizedBox(
          height: 12,
        ),
        SearchBox(),
      ],
    );
  }
}
