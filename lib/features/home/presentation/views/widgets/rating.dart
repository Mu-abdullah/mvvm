import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constanse.dart';
import '../../../../../core/text_styles.dart';
import '../../../../../core/utils/size.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Iconsax.star1,
          color: kYellowColor,
        ),
        SizedBox(
          width: CustomSize().widthSize(context, .01),
        ),
        TextStyles().subText(
          text: "4.8",
        ),
        SizedBox(
          width: CustomSize().widthSize(context, .01),
        ),
        TextStyles().subText(
          text: "(2584)",
          subTitleColor: Colors.grey,
        ),
      ],
    );
  }
}
