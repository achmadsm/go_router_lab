import 'package:go_router/go_router.dart';
import 'package:go_router_lab/splash_screen.dart';

import 'detail_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';

// Define route paths as constants for easy reference
class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String detail = '/detail/:id';
}

class AppRouter {
  // Set up GoRouter with defined routes
  static final GoRouter router = GoRouter(
    initialLocation: Routes.splash, // Start with splash screen
    // Define routes and their corresponding builders
    routes: [
      GoRoute(path: Routes.splash, builder: (context, state) => SplashScreen()),
      GoRoute(path: Routes.login, builder: (context, state) => LoginScreen()),
      GoRoute(path: Routes.home, builder: (context, state) => HomeScreen()),
      GoRoute(
        path: Routes.detail,
        builder: (context, state) {
          final id = state.pathParameters['id']!; // Retrieve ID from path parameter
          return DetailScreen(id: id);
        },
      ),
    ],
  );
}
