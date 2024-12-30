import 'package:car_rental_app/features/login/view/login_view.dart';
import 'package:car_rental_app/routes/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AppRouter{
  static final GlobalKey<NavigatorState> _rootnavigator = GlobalKey<NavigatorState>();
 static final GoRouter router = GoRouter(
  navigatorKey: _rootnavigator,
  initialLocation: RoutesConstants.loginscreen,
  routes: <RouteBase>[
    GoRoute(
      path: RoutesConstants.loginscreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginView();
      },
    
    ),
    
  ],
);
}