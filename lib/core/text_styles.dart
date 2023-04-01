import 'package:flutter/material.dart';

class TextStyles{

  Widget titleText({required text,}){
    return Text(text,style:const TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold
    ),);
  }
  Widget subText({required text,}){
    return Text(text,style:const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal
    ),);
  }

}