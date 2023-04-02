import 'package:flutter/material.dart';
import 'package:mvvm_app/core/utils/size.dart';
import 'package:mvvm_app/features/home/presentation/views/widgets/rating.dart';
import '../../../../../core/text_styles.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
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
            height: 15,
          ),
          const Rating(),
        ],
      ),
    );
  }
}
