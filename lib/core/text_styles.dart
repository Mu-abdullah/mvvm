import 'package:flutter/material.dart';

class TextStyles{

  Widget titleText({required text}){
    return Text(text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style:const TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold
    ),);
  }
  Widget subText({required text,Color? subTitleColor}){
    return Text(text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
      fontSize: 18,
      color: subTitleColor,
      fontWeight: FontWeight.normal
    ),);
  }

}