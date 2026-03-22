import 'package:bookly_app/feature/home/widgets/custom_app_bar.dart';
import 'package:bookly_app/feature/home/widgets/custom_best_seller_list_view.dart';
import 'package:bookly_app/feature/home/widgets/custom_horizontal_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../generated/assets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        CustomAppBar(),
        SizedBox(height: 30,),
        CustomHorizontalListView(),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Best Seller'),
        ),
        SizedBox(height: 20,),
        CustomBestSellerListView()
      ],
    );
  }
}









