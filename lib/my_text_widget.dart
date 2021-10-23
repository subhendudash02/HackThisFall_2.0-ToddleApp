import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  MyTextWidget({
    required this.title,
    required this.fontWeight,
    required this.fontSize,
    required this.color,
  });

  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context){
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
