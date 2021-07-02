import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color color;
  final EdgeInsets padding;

  const AppText({
    this.text = '',
    this.fontFamily = 'Montserrat',
    this.fontSize = 13.0,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.color = Colors.black,
    this.padding = const EdgeInsets.all(1.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: padding,
        child: Text(
          text,
          textAlign: textAlign,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            color: color,
          ),
        ),
      ),
    );
  }
}
