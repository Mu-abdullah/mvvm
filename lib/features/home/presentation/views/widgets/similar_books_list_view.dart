import 'package:flutter/material.dart';
import '../../../../../core/utils/size.dart';
import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CustomSize().heightSize(context, .17),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: CustomSize().widthSize(context, .01),
              ),
              child: const CustomBookImage(),
            );
          }),
    );
  }
}
