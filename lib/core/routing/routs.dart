import 'package:go_router/go_router.dart';
import 'package:masrofy/app.dart';
import 'package:masrofy/core/routing/app_routs.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRouts.home,
  routes: [
    GoRoute(
      path: AppRouts.home,
      name: AppRouts.home,
      builder: (context, state) => HomePage(),
    ),
  ],
);
