import 'package:flutter/material.dart';
import 'package:mvvm_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}
