import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import "Colors.dart";

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final double fontSize;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Function ontap;
  final EdgeInsets padding;

  CustomButton(
      {this.height = 36,
      this.width = 160,
      this.borderRadius = 6,
      this.fontSize = 12,
      this.backgroundColor = blue,
      this.textColor = Colors.white,
      this.text,
      this.padding,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
            padding: padding,
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Center(
                child: Text("$text",
                    style: GoogleFonts.poppins(
                      color: textColor,
                      fontSize: fontSize,
                    )))));
  }
}
