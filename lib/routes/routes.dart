import 'package:car_rental_app/features/Add%20car/view/add_car_view.dart';
import 'package:car_rental_app/features/car%20details/view/car_details_view.dart';
import 'package:car_rental_app/features/favorates/view/favoraites_view.dart';
import 'package:car_rental_app/features/home/view/home_view.dart';
import 'package:car_rental_app/features/login/view/login_view.dart';
import 'package:car_rental_app/features/signup/view/signup_view.dart';
import 'package:car_rental_app/features/splash/view/splash_view.dart';
import 'package:car_rental_app/routes/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//here we are giving order of our screens or pages
class AppRouter{
 static final GlobalKey<NavigatorState> _rootnavigator = GlobalKey<NavigatorState>();
 static final GoRouter router = GoRouter(
  navigatorKey: _rootnavigator,
  initialLocation: RoutesConstants.splash,
  routes: <RouteBase>[
    GoRoute(
      path: RoutesConstants.splash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
     GoRoute(
          path: RoutesConstants.loginscreen,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginView();
          },
        ),
         GoRoute(
          path: RoutesConstants.signup,
          builder: (BuildContext context, GoRouterState state) {
            return const SignupView();
          },
        ),
         GoRoute(
          path: RoutesConstants.home,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ), GoRoute(
          path: RoutesConstants.CarDetailsView,
          builder: (BuildContext context, GoRouterState state) {
            return const CarDetailsView();
          },
        ),
         GoRoute(
          path: RoutesConstants.addcar,
          builder: (BuildContext context, GoRouterState state) {
            return const AddCarView();
          },
        ),
         GoRoute(
          path: RoutesConstants.FavoraitesView,
          builder: (BuildContext context, GoRouterState state) {
            return const FavoraitesView();
          },
        ),
  ],
);
}