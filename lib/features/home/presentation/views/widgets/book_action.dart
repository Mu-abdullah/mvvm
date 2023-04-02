import 'package:flutter/material.dart';

import '../../../../../core/constanse.dart';
import '../../../../../core/widgets/custom_button.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            backgroundColor: kWhiteColor,
            textColor: Colors.black,
            text: '19 \$',
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            backgroundColor: kSecondaryColor,
            textColor: kWhiteColor,
            text: 'Free Preview',
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
