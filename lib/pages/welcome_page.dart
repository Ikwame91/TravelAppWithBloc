// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelappwithbloc/pages/widget/app_text.dart';
import 'package:travelappwithbloc/pages/widget/responsive_button.dart';
import 'package:travelappwithbloc/pages/widget/text_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List<String> _welcomeImages = [
    'assets/images/light.jpg',
    'assets/images/man.jpg',
    'assets/images/pretty.jpg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Precache images
    for (var image in _welcomeImages) {
      precacheImage(AssetImage(image), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _welcomeImages.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_welcomeImages[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LargeText(text: 'Trips'),
                      SizedBox(
                        height: 9,
                      ),
                      AppText(
                        color: Colors.black,
                        text: 'Mountain, Beach, City',
                        fontSize: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: AppText(
                            fontSize: 17,
                            color: Colors.black,
                            text:
                                'Mountain Hives give you an Incredible Sense Of freedom along with vast enjoyment'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ResponsiveButton(
                        width: 110,
                      )
                    ],
                  ),
                  Column(
                      children: List.generate(3, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 8,
                      height: index == indexDots ? 20 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == indexDots
                            ? Colors.deepPurple
                            : Colors.black38,
                      ),
                    );
                  }))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
