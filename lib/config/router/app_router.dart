import 'package:flutter/widgets.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/family_sheet.dart';
import 'package:flutter_boiler/presentation/screens/home/home_screen.dart';
import 'package:flutter_boiler/presentation/screens/login/login_screen.dart';
import 'package:flutter_boiler/presentation/screens/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final appRouter = GoRouter(
    initialLocation: SplashScreen.path,
    // initialLocation: HomeScreen.path,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: HomeScreen.path,
        name: HomeScreen.pathName,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: LoginScreen.path,
        name: LoginScreen.pathName,
        builder: (context, state) => const LoginScreen(),
        //builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: SplashScreen.path,
        name: SplashScreen.pathName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: FamilySheet.path,
        name: FamilySheet.pathName,
        builder: (context, state) => const FamilySheet(),
      ),
    ],
  );
}
