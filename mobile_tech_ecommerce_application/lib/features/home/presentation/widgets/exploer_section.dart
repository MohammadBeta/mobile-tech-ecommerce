import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/utilis/api/api_crud.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/custom_button.dart';
import 'explore_text_column.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ExploreTextColumn(),
                  CustomButton(
                    onPressed: () {
                      ApiCrud(dio: Dio())
                          .getData(url: 'http://192.168.1.11:8000/api/categories');
                    },
                  ),
                ],
              ),
            ),
            Image.asset(
              Assets.imagesLaptop,
            )
          ],
        ),
      ),
    );
  }
}
