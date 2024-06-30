import 'dart:ui';

class ProductModel {
  final String name;
  final double price;
  final double offerPrice;
  final bool hasOffer;
  final String productImage;
  final double rate;
  final List<ProductColor> colors;
  final double offerDiscount;
  final String categoryGuid;
  const ProductModel( this.categoryGuid,this.rate,
      {required this.name,
      required this.price,
      required this.offerPrice,
      required this.offerDiscount,
      required this.hasOffer,
      required this.productImage,
      required this.colors});
}

class ProductColor {
  final Color color;

  const ProductColor({required this.color});
}
