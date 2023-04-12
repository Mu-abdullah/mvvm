import 'package:flutter/material.dart';
import 'package:mvvm_app/core/text_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextStyles().subText(
        text: errMessage,
      ),
    );
  }
}
