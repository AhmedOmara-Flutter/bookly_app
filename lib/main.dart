import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/app_router.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/service_locator.dart';
import 'feature/home/presentation/view_model/top_rated_daily_cubit/top_rated_daily_cubit.dart';
import 'feature/home/presentation/view_model/top_rated_weekly_cubit/top_rated_weekly_cubit.dart';

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
        BlocProvider(create: (context) =>TopRatedDailyCubit(instance())..getTopRatedDailyBooks()),
        BlocProvider(create: (context) =>TopRatedWeeklyCubit(instance())..getTopRatedWeaklyBooks()),
      ],
      child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(),
      ),
    );
  }
}


