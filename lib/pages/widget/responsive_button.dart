// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width,
  }) : super(key: key);
  bool? isResponsive;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
