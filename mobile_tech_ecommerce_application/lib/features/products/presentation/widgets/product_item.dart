import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_colors.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/model/product_model.dart';

import '../../../../core/constants/app_styles.dart';
import 'linear_line_divider.dart';
import 'product_colors.dart';
import 'product_offer.dart';
import 'product_price.dart';
import 'product_rate.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: ProductOffer(offerDiscount: productModel.offerDiscount)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    ProductImage(image: productModel.productImage),
                    const Expanded(child: SizedBox()),
                    ProductColors(
                      colors: productModel.colors,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const LinearLineDivider(),
              const SizedBox(
                height: 8,
              ),
              Text(
                productModel.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleInterLight12,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ProductPrice(
                    offerPrice: productModel.offerPrice,
                    price: productModel.price,
                  ),
                  ProductRate(
                    rate: productModel.rate,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
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
      ),
    );
  }
}
