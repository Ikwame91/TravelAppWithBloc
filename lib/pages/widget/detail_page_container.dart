// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:travelappwithbloc/pages/widget/text_widget.dart';

// ignore: must_be_immutable
class DetailSmallContainers extends StatelessWidget {
  DetailSmallContainers({
    Key? key,
    this.isIcon = false,
    this.text,
    this.icon,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.size,
  }) : super(key: key);
  String? text;
  IconData? icon;
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  bool? isIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 13),
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        ),
        child: isIcon == false
            ? Center(
                child: AppText(
                  text: text!,
                  color: color,
                  fontSize: 15,
                ),
              )
            : Center(
                child: Icon(
                  icon,
                  color: color,
                  size: 20,
                ),
              ));
  }
}
