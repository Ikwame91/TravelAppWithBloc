// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  const LargeText({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 30,
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
