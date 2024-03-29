import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.close_circle4,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.shopping_cart,
              )),
        ],
      ),
    );
  }
}
