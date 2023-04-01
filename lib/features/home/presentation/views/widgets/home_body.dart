import 'package:flutter/material.dart';
import 'package:mvvm_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Best Seller",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
