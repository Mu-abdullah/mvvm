import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constanse.dart';
import 'features/splash_screen/presentation/views/splash_view.dart';
void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home:const SplashView(),
    );
  }
}
