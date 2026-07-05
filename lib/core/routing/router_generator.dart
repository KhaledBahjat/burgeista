import 'package:burgeista/core/routing/app_routs.dart';
import 'package:burgeista/features/auth/views/sign_in_view.dart';
import 'package:burgeista/splash.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter router = GoRouter(
    initialLocation: AppRouts.signInView,
    routes: [
      GoRoute(
        path: AppRouts.splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: AppRouts.signInView, builder: (context, state) =>  SignInView()),
    ],
  );
}
