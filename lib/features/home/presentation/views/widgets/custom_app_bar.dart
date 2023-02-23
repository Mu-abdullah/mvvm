
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/size.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: CustomSize().widthtSize(context, .08),
        vertical: CustomSize().heightSize(context, .05),
      ),

      child: Row(
        children: [
          Image.asset(
            AssetDate.logo,
            height: CustomSize().heightSize(context, .03),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal),
          ),
        ],
      ),
    );
  }
}