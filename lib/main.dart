import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home:const HomeScreen(),
    );
  }
}
