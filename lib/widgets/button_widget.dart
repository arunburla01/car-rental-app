import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
const ButtonWidget({super.key,required this.text,required this.onPressed,
this.backgroundColor=ColorConstants.primary,this.buttonheight,this.buttonwidth});
final String text;
final void Function() onPressed;
final Color? backgroundColor;
final double? buttonheight;
final double? buttonwidth;

@override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor, // Background color
        fixedSize: Size(335, 50), // Fixed width and height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Border radius
        ),
      ),
      child:Text(text,
        style: TextStyle(
          color: Colors.white, // Text color
        ),
      ),
    );
  }
}