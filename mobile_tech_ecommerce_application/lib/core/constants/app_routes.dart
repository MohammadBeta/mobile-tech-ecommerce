import 'package:go_router/go_router.dart';
import 'package:mobile_tech_ecommerce_application/core/models/category_model.dart';
import 'package:mobile_tech_ecommerce_application/features/home/presentation/views/home_view.dart';
import 'package:mobile_tech_ecommerce_application/features/products/presentation/views/products_view.dart';

abstract class AppRoutes {
  static const homeView = '/';
  static const productsView = '/productsView';

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
          //need to refactor when use cubit
          //dont push to view when select category to reduce loading
          return ProductsView(currentCategory: state.extra as CategoryModel);
        },
      ),
    ],
  );
}
