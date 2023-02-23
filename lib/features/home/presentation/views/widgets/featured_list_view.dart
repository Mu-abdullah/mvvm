import 'package:flutter/material.dart';
import '../../../../../core/utils/size.dart';
import 'custom_listview_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CustomSize().heightSize(context, .3),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: CustomSize().widthtSize(context, .01),
              ),
              child: const CustomListViewItem(),
            );
          }),
    );
  }
}
