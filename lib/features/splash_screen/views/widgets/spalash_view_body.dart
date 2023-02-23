import 'package:flutter/material.dart';
import 'package:mvvm_app/core/constanse.dart';
import 'package:mvvm_app/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetDate.logo),
        ],
    );
  }
}