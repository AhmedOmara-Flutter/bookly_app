import 'package:bookly_app/feature/home/view/home_view.dart';
import 'package:bookly_app/feature/home_details/view/home_view_details.dart';
import 'package:bookly_app/feature/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../feature/search/view/search_view.dart';

abstract class AppRouter{
static const String splashView = '/';
static const String homeView = '/homeView';
static const String homeViewDetails = '/homeViewDetails';
static const String searchView = '/searchView';




 static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: homeView,
            builder: (BuildContext context, GoRouterState state) {
              return HomeView();
            },
          ),
          GoRoute(
            path: homeViewDetails,
            builder: (BuildContext context, GoRouterState state) {
              return HomeViewDetails();
            },
          ),
          GoRoute(
            path: searchView,
            builder: (BuildContext context, GoRouterState state) {
              return SearchView();
            },
          ),
        ],
      ),
    ],
  );

}