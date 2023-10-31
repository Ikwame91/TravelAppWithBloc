// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelappwithbloc/pages/widget/app_text.dart';
import 'package:travelappwithbloc/pages/widget/text_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/travelllers.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              //  top: 70,
              // right: 60,
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          size: 35,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              top: 330,
              child: Container(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LargeText(
                          text: 'Afadjato',
                        ),
                        LargeText(
                          text: '\$ 200',
                          color: Colors.black87,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        AppText(text: 'Ghana, Volta Region'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return Icon(
                          Icons.star,
                          color: Colors.orange,
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
