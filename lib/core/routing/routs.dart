import 'package:go_router/go_router.dart';
import 'package:masrofy/app.dart';
import 'package:masrofy/core/routing/app_routs.dart';
import 'package:masrofy/features/auth/view/pages/auth_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRouts.authPage,
  routes: [
    GoRoute(
      path: AppRouts.home,
      name: AppRouts.home,
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: AppRouts.authPage,
      name: AppRouts.authPage,
      builder: (context, state) => AuthPage(),
    ),
  ],
);
