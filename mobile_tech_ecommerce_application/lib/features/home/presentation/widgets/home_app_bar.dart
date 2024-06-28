
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        Center(
          child: Text(
            "Tech Heim",
            style: AppTextStyles.styleInterMedium16
                .copyWith(color: AppColors.primary500),
          ),
        ),
        Row(
          children: [
            InkWell(
              customBorder: const CircleBorder(),
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(Assets.imagesBag),
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.user)),
          ],
        ),
      ],
    );
  }
}
