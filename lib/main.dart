import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_app/core/utils/app_routers.dart';
import 'core/constanse.dart';
import 'features/home/presentation/views/home.dart';
import 'features/splash_screen/presentation/views/splash_view.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      routerConfig: AppRouter.router,
      // home:const HomeScreen(),
    );
  }
}
