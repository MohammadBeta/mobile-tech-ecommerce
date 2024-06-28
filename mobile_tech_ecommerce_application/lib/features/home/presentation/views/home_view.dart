import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: HomeViewBody(),
      // appBar:
      // AppBar(
      //   title: Center(
      //     child: Text(
      //       "Tech Heim",
      //       style: AppTextStyles.styleInterMedium16
      //           .copyWith(color: AppColors.primary500),
      //     ),
      //   ),
      //   leading: IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.menu,
      //         size: 24,
      //         color: AppColors.black,
      //       )),
      //   actions: [
      //     IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.menu,
      //           size: 24,
      //           color: AppColors.black,
      //         )),
      //     IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.menu,
      //           size: 24,
      //           color: AppColors.black,
      //         ))
      //   ],
      // ),
    );
  }
}
