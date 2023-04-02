import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mvvm_app/core/constanse.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}
