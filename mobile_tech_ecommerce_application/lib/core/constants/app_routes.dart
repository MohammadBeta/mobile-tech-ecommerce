import 'package:go_router/go_router.dart';
import 'package:mobile_tech_ecommerce_application/features/home/presentation/views/home_view.dart';

abstract class AppRoutes {
  static const homeView = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
