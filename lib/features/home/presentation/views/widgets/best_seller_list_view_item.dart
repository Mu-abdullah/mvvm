import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_app/core/constanse.dart';
import 'package:mvvm_app/core/utils/app_routers.dart';
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
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.bookDetailsViewRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        child: SizedBox(
          height: CustomSize().heightSize(context, .2),
          child: Row(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage(AssetDate.test),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Image.asset(AssetDate.test)),
              SizedBox(
                width: CustomSize().widthSize(context, .02),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width:CustomSize().widthSize(context, .5),
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
      ),
    );
  }
}
