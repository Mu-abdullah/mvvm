import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_app/core/utils/app_routers.dart';
import 'package:mvvm_app/core/utils/assets.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigationDelayed();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetDate.logo),
        SlidingText(animation: animation)
      ],
    );
  }

  void navigationDelayed() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(
      //   () => const HomeScreen(),
      //   transition: Transition.rightToLeft,
      //   duration: kTransactionDuration,
      // );
      GoRouter.of(context).push(AppRouter.homeViewRoute);
    });
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = Tween<Offset>(
      begin: const Offset(0, 20),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }
}
