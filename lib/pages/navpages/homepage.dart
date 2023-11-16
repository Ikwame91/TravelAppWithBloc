// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelappwithbloc/cubit/cubit/app_cubit_cubit.dart';
import 'package:travelappwithbloc/models/explore_more.dart';
import 'package:travelappwithbloc/pages/widget/app_text.dart';
import 'package:travelappwithbloc/pages/widget/text_widget.dart';
import 'package:travelappwithbloc/utils/constants.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  ImageModel imageModel = ImageModel();
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: ListView(
        children: [
          BlocBuilder<AppCubitCubit, AppCubitState>(builder: (context, state) {
            if (state is LoadedState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 70,
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          size: 35,
                          color: Colors.black,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.3),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/travelllers.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        labelStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        controller: tabController,
                        unselectedLabelColor: Color(0xFF9E9E9E),
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator:
                            CircleTabIndicator(color: Colors.black, radius: 7),
                        tabs: [
                          Text('PEOPLE'),
                          Text('INSPIRATION'),
                          Text('EMOTIONS'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<AppCubitCubit>(context).getDetail();
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 300,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: tabController,
                        children: discoverImage.map((imagePath) {
                          int index = discoverImage.indexOf(imagePath);
                          return TabContent(
                              imagePaths: discoverImage, index: index);
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: LargeText(
                          text: 'Explore more',
                          fontSize: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child:
                            AppText(text: 'See all', color: Color(0xFF5468DA)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 300,
                    width: double.maxFinite,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageModel.images.length,
                        itemBuilder: (context, index) {
                          ImageData imageData = imageModel.images[index];
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${imageData.imageName}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(text: imageData.category),
                                        SizedBox(height: 5),
                                        AppText(text: 'by John Doe'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                  )
                ],
              );
            } else {
              return Container();
            }
          })
        ],
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final List<String> imagePaths;
  final int index;

  const TabContent({Key? key, required this.imagePaths, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePaths[index]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
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
