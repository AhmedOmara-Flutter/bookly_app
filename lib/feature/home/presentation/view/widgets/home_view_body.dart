import 'package:bookly_app/feature/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_best_seller_list_view.dart';
import 'package:bookly_app/feature/home/presentation/view/widgets/custom_horizontal_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              CustomAppBar(),
              SizedBox(height: 30,),
              CustomHorizontalListView(),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Best Seller'),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsetsGeometry.only(left: 20, right: 20, bottom: 20),
          sliver: CustomVerticalListView(),
        )
      ],
    );
  }
}
