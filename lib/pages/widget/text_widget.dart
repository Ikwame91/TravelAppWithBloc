// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.text,
    this.color = Colors.black54,
    this.fontSize = 17,
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        letterSpacing: 0.7,
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
