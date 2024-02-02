import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomText extends Text {
  const CustomText(
    this.text, {
    super.key,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.height,
    super.overflow,
    super.maxLines,
    super.textAlign,
  }) : super(text);
  final FontWeight? fontWeight;
  final double? fontSize, height;
  final Color? color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: true,
      textAlign: textAlign,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: fontWeight,
        fontSize: fontSize,
        height: height,
        color: color,
      ),
    );
  }
}
