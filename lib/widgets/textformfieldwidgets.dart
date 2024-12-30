import 'package:flutter/material.dart';

class Textformfieldwidgets extends StatelessWidget {
  const Textformfieldwidgets({super.key,required this.controler,this.prefixIcon,required this.hintText,
  this.obscureText,this.icon,this.assetimage});
  final TextEditingController controler;
  final Widget? prefixIcon;
  final String hintText;
  final bool? obscureText;
  final IconData? icon;
  final Image? assetimage;


 @override
  Widget build(BuildContext context) {
    return Container(
      width: 335, // Fixed width
      height: 50, // Fixed height
      padding: const EdgeInsets.fromLTRB(20, 13, 35, 13), // Padding (left: 20, top: 13, right: 35, bottom: 13)
      child: TextFormField(
        controller:  controler,
        decoration: InputDecoration(
          hintText: hintText, // Optional hint text
          filled: true, // Enable filling the background color
          fillColor: Color(0xff8084930d), // Background color (#8084930D in Flutter's ARGB format)
          //prefixIcon: Image.asset(), // Prefix icon (can be replaced with any icon)
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Border radius for rounded corners
          ),
        ),
      ),
    );
  }
}