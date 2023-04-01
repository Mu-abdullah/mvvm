import 'package:flutter/material.dart';

import '../../../../../core/utils/size.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CustomSize().heightSize(context, .9),
      child: ListView.builder(
        shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: CustomSize().widthSize(context, .01),
              ),
              child: const BestSellerListViewItem(),
            );
          }),
    );
  }
}