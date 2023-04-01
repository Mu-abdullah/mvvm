import 'package:flutter/material.dart';

class TextStyles{

  Widget titleText({required text,}){
    return Text(text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style:const TextStyle(
      fontSize: 21,

      fontWeight: FontWeight.bold
    ),);
  }
  Widget subText({required text,}){
    return Text(text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style:const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal
    ),);
  }

}