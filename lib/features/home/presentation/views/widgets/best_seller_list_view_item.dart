import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_app/core/utils/app_routers.dart';
import 'package:mvvm_app/features/home/presentation/views/widgets/rating.dart';
import '../../../../../core/text_styles.dart';
import '../../../../../core/utils/size.dart';
import 'custom_book_image.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsViewRoute);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            const CustomBookImage(),
            const SizedBox(
              width: 30,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: CustomSize().widthSize(context, .5),
                    child: TextStyles().titleText(text: "Movies Name")),
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
