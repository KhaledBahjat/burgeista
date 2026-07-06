import 'package:burgeista/core/routing/app_routs.dart';
import 'package:burgeista/features/auth/views/profile.dart';
import 'package:burgeista/features/auth/views/sign_in_view.dart';
import 'package:burgeista/features/auth/views/sign_up_view.dart';
import 'package:burgeista/features/cart/views/cart_view.dart';
import 'package:burgeista/features/home/views/home_view.dart';
import 'package:burgeista/features/orderhistory/views/order_view.dart';
import 'package:burgeista/features/proudcts/views/proudct_details_view.dart';
import 'package:burgeista/root.dart';
import 'package:burgeista/splash.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter router = GoRouter(
    initialLocation: AppRouts.rootView,
    routes: [
      GoRoute(
        path: AppRouts.productDetailsView,
        builder: (context, state) => ProudctDetailsView(),
        name: AppRouts.productDetailsView,
      ),
      GoRoute(
        path: AppRouts.rootView,
        builder: (context, state) => RootView(),
        name: AppRouts.rootView,
      ),
      GoRoute(
        path: AppRouts.homeView,
        builder: (context, state) => HomeView(),
        name: AppRouts.homeView,
      ),
      GoRoute(
        path: AppRouts.cartView,
        builder: (context, state) => const CartView(),
        name: AppRouts.cartView,
      ),
      GoRoute(
        path: AppRouts.profileView,
        builder: (context, state) => const ProfileView(),
        name: AppRouts.profileView,
      ),
      GoRoute(
        path: AppRouts.orderView,
        builder: (context, state) => const OrderView(),
      ),
      GoRoute(
        path: AppRouts.splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        name: AppRouts.signInView,
        path: AppRouts.signInView,
        builder: (context, state) => SignInView(),
      ),
      GoRoute(
        name: AppRouts.signUpView,
        path: AppRouts.signUpView,
        builder: (context, state) => SignUpView(),
      ),
    ],
  );
}
