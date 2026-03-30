import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/feature/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../feature/home/data/model/book_model.dart';
import '../../feature/home/presentation/view/home_view.dart';
import '../../feature/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import '../../feature/search/view/search_view.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
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
            path: bookDetailsView,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider(
                create: (context) => SimilarBooksCubit(instance()),
                child: BookDetailsView(bookModel: state.extra as BookModel,),
              );
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