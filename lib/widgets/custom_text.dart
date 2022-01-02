import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String? text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final int? maxLines;
  final TextAlign? textAlign;
  final bool isUnderline;
  final bool isItalic;
  final double? letterSpacing;

  NormalText(this.text,
      {required this.fontSize,
      required this.fontWeight,
      required this.color,
      this.maxLines,
      this.textAlign,
      this.isUnderline = false,
      this.isItalic = false,
      this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'Poppins',
        decoration: isUnderline ? TextDecoration.underline : null,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
