import 'package:bookly_app/feature/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/app_router.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/service_locator.dart';
import 'feature/home/presentation/view_model/best_seller_books_cubit/best_seller_books_cubit.dart';

void main() {
  initAppModule();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>BestSellerBooksCubit(instance())..bestSellerBooks()),
        BlocProvider(create: (context) =>FeaturedBooksCubit(instance())..getFeaturedBooks()),

      ],
      child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(),
      ),
    );
  }
}


