import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';

class TextButtonwidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
const  TextButtonwidget({super.key,required this.text , 
this.fontSize=24,this.fontWeight=FontWeight.w400,this.color});

  @override
  Widget build(BuildContext context){
    return TextButton(onPressed: (){},
    child: Text(text,
    style: TextStyle(fontSize: fontSize,fontWeight: fontWeight,color:color),),);
  }
}