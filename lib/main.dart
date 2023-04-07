import 'package:flutter/material.dart';
import 'package:mvvm_app/core/utils/app_routers.dart';
import 'core/constanse.dart';

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
