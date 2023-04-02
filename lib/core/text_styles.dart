import 'package:flutter/material.dart';

class TextStyles {

  Widget titleText({
    required text,
    double fontSize = 21,
  }) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget subText({
    required text,
    Color? subTitleColor,
    double fontSize = 18,
  }) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        color: subTitleColor,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
