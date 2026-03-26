import 'package:bookly_app/feature/home/presentation/view/widgets/home_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/api_services.dart';
import '../../../../core/utils/service_locator.dart';
import '../view_model/home_view_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            HomeViewCubit(instance())..getTopRatedBooks(),
        child: BlocConsumer<HomeViewCubit, HomeViewState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return HomeViewBody();
          },
        ),
      ),
    );
  }
}










