import 'package:flutter/material.dart';
import 'package:mobile_tech_ecommerce_application/core/constants/app_colors.dart';
import 'package:uuid/uuid.dart';

import '../../data/model/product_model.dart';
import 'product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});
  static List<ProductModel> products = [
    ProductModel(const Uuid().v1(), 4.8,
        name: "Galaxy S23 Ultra",
        price: 1199.99,
        offerPrice: 1049.99,
        hasOffer: true,
        offerDiscount: 99,
        productImage:
            "https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [
          const ProductColor(color: Colors.black),
          const ProductColor(color: Colors.white),
          const ProductColor(color: Colors.purple),
          const ProductColor(color: Colors.green)
        ]),
    ProductModel(const Uuid().v1(), 4.6,
        name: "Galaxy Z Fold4",
        price: 1799.99,
        offerPrice: 1599.99,
        hasOffer: true,
        offerDiscount: 20,
        productImage:
            "https://images.unsplash.com/photo-1526657782461-9fe13402a841?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [
          const ProductColor(color: Colors.grey),
          const ProductColor(color: Colors.black),
          const ProductColor(color: Colors.red)
        ]),
    ProductModel(const Uuid().v1(), 4.7,
        name: "Galaxy Watch5 Pro",
        price: 449.99,
        offerPrice: 399.99,
        hasOffer: true,
        offerDiscount: 22,
        productImage:
            "https://images.unsplash.com/photo-1602080858428-57174f9431cf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [
          const ProductColor(color: Colors.black),
          const ProductColor(color: Colors.grey)
        ]),
    ProductModel(const Uuid().v1(), 4.5,
        name: "Galaxy Tab S8 Ultra",
        price: 1099.99,
        offerPrice: 999.99,
        hasOffer: true,
        offerDiscount: 30,
        productImage:
            "https://images.unsplash.com/photo-1531297484001-80022131f5a1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [
          const ProductColor(color: Colors.grey),
          const ProductColor(color: Colors.white)
        ]),
    ProductModel(const Uuid().v1(), 4.8,
        name: "Samsung The Frame TV (2023)",
        price: 999.99,
        offerPrice: 899.99,
        hasOffer: true,
        offerDiscount: 88,
        productImage:
            "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [
          const ProductColor(color: Colors.white),
          const ProductColor(color: Colors.black12),
          const ProductColor(color: Colors.brown)
        ]),
    ProductModel(const Uuid().v1(), 4.6,
        name: "Samsung Bespoke 4-Door Flex Refrigerator",
        price: 2799.99,
        offerPrice: 2499.99,
        hasOffer: true,
        offerDiscount: 65,
        productImage:
            "https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [
          const ProductColor(color: Colors.amber),
          const ProductColor(color: Colors.yellow),
          const ProductColor(color: Colors.black),
          const ProductColor(color: Colors.white)
        ]),
    ProductModel(const Uuid().v1(), 4.7,
        name: "Samsung Jet Bot AI+ Robot Vacuum",
        price: 799.99,
        offerPrice: 699.99,
        hasOffer: true,
        offerDiscount: 10,
        productImage:
            "https://images.unsplash.com/photo-1526657782461-9fe13402a841?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [const ProductColor(color: Colors.blue)]),
    ProductModel(const Uuid().v1(), 4.5,
        name: "Samsung 85-inch Class QLED 4K Smart TV",
        price: 2999.99,
        offerPrice: 2799.99,
        hasOffer: true,
        offerDiscount: 33,
        productImage:
            "https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [const ProductColor(color: Colors.black)]),
    ProductModel(const Uuid().v1(), 4.8,
        name: "Samsung Galaxy Buds2 Pro",
        price: 229.99,
        offerPrice: 199.99,
        hasOffer: true,
        offerDiscount: 20,
        productImage:
            "https://plus.unsplash.com/premium_photo-1661281205207-35cff1245a97?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [
          const ProductColor(color: Colors.grey),
          const ProductColor(color: Colors.white),
          const ProductColor(color: Colors.purple)
        ]),
    ProductModel(const Uuid().v1(), 4.6,
        name: "Samsung Odyssey Neo G9 Gaming Monitor",
        price: 1999.99,
        offerPrice: 1799.99,
        hasOffer: true,
        offerDiscount: 8,
        productImage:
            "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D",
        colors: [const ProductColor(color: Colors.white)])
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisExtent: 200),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          splashColor: AppColors.secondary.withOpacity(0.3),
          child: ProductItem(
            productModel: products[index],
          ),
        );
      },
    );
  }
}
