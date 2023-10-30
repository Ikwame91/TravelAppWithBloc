// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelappwithbloc/pages/widget/app_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  final List<String> _images = [
    'assets/images/man.jpg',
    'assets/images/nicebuilding.jpg',
    'assets/images/pretty.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 70,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: LargeText(text: 'Discover'),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 100,
            color: Colors.blue,
            child: Align(
              alignment: Alignment.topCenter,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 60, right: 60),
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: Colors.black, radius: 6),
                tabs: [
                  Text('PEOPLE'),
                  Text('PEOPLE'),
                  Text('PEOPLE'),
                ],
              ),
            ),
          ),
          Container(
            height: 90,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                Text('It\'s cloudy here'),
                Text('It\'s cloudy here'),
                Text('It\'s cloudy here'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({
    required this.color,
    required this.radius,
  });
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({
    required this.color,
    required this.radius,
  });
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
      configuration.size!.width / 2 - radius / 2,
      configuration.size!.height - radius / 2 + 2,
    );

    canvas.drawCircle(circleOffset + offset, radius, paint);
  }
}
