import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_assets.dart';
import 'package:mobile_tech_ecommerce_application/core/widgets/app_bar/custom_app_bar_section.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/model/product_model.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarSection(),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ProductHeader(
            image: productModel.productImage,
          ),
        )
      ],
    );
  }
}

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 312 / 200,
      child: Column(
        children: [
          Row(
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
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              child: Image.network(
            image,
            fit: BoxFit.contain,
          )),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 40,
                height: 20,
                padding: const EdgeInsets.all(4),
                decoration: ShapeDecoration(
                  color: const Color(0xFF063A88),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesCamera,
                      fit: BoxFit.fill,
                    ),
                    const Text(
                      '1/5',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(Icons.cabin),
              const SizedBox(
                width: 8,
              ),
              const Icon(Icons.face),
            ],
          ),
        ],
      ),
    );
  }
}
