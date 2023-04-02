import 'package:flutter/material.dart';
import 'package:mvvm_app/features/home/presentation/views/widgets/rating.dart';
import '../../../../../core/text_styles.dart';
import '../../../../../core/utils/size.dart';
import 'book_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: CustomSize().widthSize(context, .15),
            vertical: CustomSize().heightSize(context, .02),
          ),
          child: const CustomBookImage(),
        ),
        TextStyles().titleText(
          text: "Book Name",
          fontSize: 36,
        ),
        const SizedBox(
          height: 8,
        ),
        TextStyles().subText(
          text: "Author Name",
          fontSize: 21,
          subTitleColor: Colors.grey,
        ),
        const SizedBox(
          height: 18,
        ),
        const Rating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(
          height: 18,
        ),
        const ButtonAction(),
      ],
    );
  }
}