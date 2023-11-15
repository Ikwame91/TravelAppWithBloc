// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:travelappwithbloc/pages/widget/text_widget.dart';

class ResponsiveButton extends StatelessWidget {
  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width = 120,
  }) : super(key: key);
  bool? isResponsive;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isResponsive == false ? width : double.maxFinite,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.shade900,
      ),
      child: Row(
        mainAxisAlignment: isResponsive == false
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceEvenly,
        children: [
          isResponsive == true
              ? AppText(text: 'Book To Trip Now', color: Colors.white)
              : Container(),
          Icon(Icons.arrow_forward_ios),
          Icon(Icons.arrow_forward_ios),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
