import 'package:flutter/material.dart';
import 'package:mvvm_app/core/constanse.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
          color: kSecondryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          image: DecorationImage(
            image: AssetImage(AssetDate.test),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
