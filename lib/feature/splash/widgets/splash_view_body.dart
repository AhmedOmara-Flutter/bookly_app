import 'dart:async';
import 'package:bookly_app/core/resources/constants.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Timer _timer;

  @override
  void initState() {
    initSliderAnimation();
    goToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(Assets.images.logo.path),
          const SizedBox(height: 16),
          AnimatedBuilder(
            animation: _slideAnimation,
            builder: (context, child) => SlideTransition(
              position: _slideAnimation,
              child: const Text('read free books', textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }

  void goToHome() {
    _timer = Timer(const Duration(seconds: Constants.timerDuration),
            () {
      GoRouter.of(context).go(AppRouter.homeView);

    });
  }

  void initSliderAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: Constants.animationDuration),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: const Offset(0, 0),
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer.cancel();
    super.dispose();
  }
}
