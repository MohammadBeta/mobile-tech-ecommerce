import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import 'product_gallery_button.dart';
import 'product_header_button.dart';
import 'product_video_button.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 312 / 200,
      child: Column(
        children: [
          const ProductHeaderButtons(),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) {
              return const Center(
                child: Icon(Icons.error),
              );
            },
            progressIndicatorBuilder: (context, url, progress) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.secondary,
                ),
              );
            },
          )),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ProductGalleryButton(),
              SizedBox(
                width: 8,
              ),
              ProductVideoButton(),
            ],
          ),
        ],
      ),
    );
  }
}
