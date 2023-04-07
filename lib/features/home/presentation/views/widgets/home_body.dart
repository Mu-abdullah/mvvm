import 'package:flutter/material.dart';
import 'package:mvvm_app/core/text_styles.dart';
import 'package:mvvm_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'best_seller_listview.dart';
import 'custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const FeaturedBooksListView(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: TextStyles().titleText(text: "Best Seller", fontSize: 24),
            ),
          ],
        ),
      ),
      const SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
