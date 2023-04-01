import 'package:flutter/material.dart';
import 'package:mvvm_app/features/home/presentation/views/widgets/rating.dart';

import '../../../../../core/text_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/size.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: CustomSize().heightSize(context, .2),
        child: Row(
          children: [
            Image.asset(AssetDate.test),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextStyles().titleText(text: "Movies Name"),
                TextStyles().subText(text: "author Name"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextStyles().subText(text: "19\$"),
                    const Spacer(),
                    const Rating(),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
