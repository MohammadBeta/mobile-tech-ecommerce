class ProductModel {
  String uuid;
  String name;
  String productImage;
  double price;
  double rate;
  double offerPrice;
  bool hasOffer;
  double offerDiscount;
  String categoryUuid;
  List<ProductColor> colors;
  ProductModel(
      {required this.uuid,
      required this.name,
      required this.productImage,
      required this.price,
      required this.rate,
      required this.offerPrice,
      required this.hasOffer,
      required this.offerDiscount,
      required this.categoryUuid,
      required this.colors});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        uuid: json['uuid'] as String,
        name: json['name'] as String,
        productImage: json['image'] as String,
        price: json['price'].toDouble(),
        rate: json['rate'].toDouble(),
        offerPrice: json['offerPrice'].toDouble(),
        hasOffer: json['hasOffer'] == 0 ? false : true,
        offerDiscount: json['offerDiscount'].toDouble(),
        categoryUuid: json['category_uuid'] as String,
        colors: (json['product_colors'] as List<dynamic>?)
                ?.map((colorJson) => ProductColor.fromJson(colorJson))
                .toList() ??
            [],
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'name': name,
        'image': productImage,
        'price': price,
        'rate': rate,
        'offerPrice': offerPrice,
        'hasOffer': hasOffer,
        'offerDiscount': offerDiscount,
        'category_uuid': categoryUuid,
      };
}

class ProductColor {
  final String uuid;
  final String color;
  final String productUuid;

  const ProductColor(
      {required this.uuid, required this.productUuid, required this.color});

  factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
        uuid: json['uuid'] as String,
        color: json['color'] as String,
        productUuid: json['product_uuid'] as String,
      );
}
