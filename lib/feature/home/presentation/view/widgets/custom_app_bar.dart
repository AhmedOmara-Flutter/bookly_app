import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assets.images.logo.path,fit: BoxFit.cover,height: 30,),
          IconButton(onPressed: () {
            GoRouter.of(context).push(AppRouter.searchView);
          }, icon: Icon(Icons.search),),
        ],
      ),
    );
  }
}
