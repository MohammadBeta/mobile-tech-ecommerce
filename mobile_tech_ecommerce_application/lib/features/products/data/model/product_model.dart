import 'dart:ui';

class ProductModel {
  final String name;
  final double price;
  final double offerPrice;
  final bool hasOffer;
  final String productImage;
  final double rate;
  final List<ProductColor> colors;

  ProductModel(this.rate, {required this.name, required this.price, required this.offerPrice, required this.hasOffer, required this.productImage, required this.colors});
}

class ProductColor {
  final Color color;

  ProductColor({required this.color});
}