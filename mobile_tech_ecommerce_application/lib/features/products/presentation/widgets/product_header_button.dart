import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';

class ProductHeaderButtons extends StatelessWidget {
  const ProductHeaderButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            Assets.imagesDirectboxSend,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            Assets.imagesNotificationBing,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            Assets.imagesHeart,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
