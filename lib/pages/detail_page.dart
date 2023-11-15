// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelappwithbloc/pages/widget/app_text.dart';
import 'package:travelappwithbloc/pages/widget/detail_page_container.dart';
import 'package:travelappwithbloc/pages/widget/responsive_button.dart';
import 'package:travelappwithbloc/pages/widget/text_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int rating = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < rating
                                  ? Color.fromRGBO(255, 232, 26, 1)
                                  : Colors.grey,
                            );
                          }),
                        ),
                        SizedBox(width: 5),
                        AppText(text: '5.0 (23 Reviews)'),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    LargeText(
                      text: 'People',
                      fontSize: 22,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: 'Number Of People in your group',
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: DetailSmallContainers(
                            size: 50,
                            borderColor: selectedIndex == index
                                ? Colors.black
                                : Colors.grey,
                            backgroundColor: selectedIndex == index
                                ? Colors.black
                                : Colors.grey.shade400,
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black54,
                            text: (index + 1).toString(),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LargeText(
                      text: 'Description',
                      fontSize: 22,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text:
                          'Travelling is the best one can do on the lobby for fun just to enjoy the nature of the world',
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    DetailSmallContainers(
                      size: 60,
                      borderColor: Colors.grey,
                      backgroundColor: Colors.white,
                      color: Colors.grey,
                      icon: Icons.favorite_outline,
                      isIcon: true,
                    ),
                    ResponsiveButton(
                      isResponsive: true,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
