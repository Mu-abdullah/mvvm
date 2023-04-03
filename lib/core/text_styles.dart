import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class TextStyles {
  Widget titleText({
    required text,
    double fontSize = 21,
    String? fontFamily = AssetDate.righteousFont,
  }) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
      ),
    );
  }

  Widget subText({
    required text,
    Color? subTitleColor,
    double fontSize = 18,
    FontWeight? fontWeight = FontWeight.normal,
    String? fontFamily = AssetDate.righteousFont,
  }) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        color: subTitleColor,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
