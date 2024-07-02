import 'package:go_router/go_router.dart';
import 'package:mobile_tech_ecommerce_application/core/models/category_model.dart';
import 'package:mobile_tech_ecommerce_application/features/home/presentation/views/home_view.dart';
import 'package:mobile_tech_ecommerce_application/features/products/data/model/product_model.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/views/product_details_view.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/views/products_view.dart';

abstract class AppRoutes {
  static const homeView = '/';
  static const productsView = '/productsView';
  static const productDetailsView = '/productDetialsView';

  static final router = GoRouter(
    initialLocation: homeView,
    routes: [
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: productsView,
        builder: (context, state) {
          return ProductsView(currentCategory: state.extra as CategoryModel);
        },
      ),
      GoRoute(
        path: productDetailsView,
        builder: (context, state) {
          return ProductDetailsView(
              productUuid: state.extra as ProductModel);
        },
      ),
    ],
  );
}
