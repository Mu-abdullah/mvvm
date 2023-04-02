import 'package:flutter/material.dart';
import 'package:mvvm_app/core/constanse.dart';
import 'package:mvvm_app/core/utils/size.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
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
      ),
    );
  }
}
