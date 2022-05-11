import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/Information_home_controller.dart';
import 'package:leorn_plant/view/home/information/explore/arecaceae_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/calathea_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/monstera_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/puring_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/spider_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/spineless_explore_view.dart';

class ExploreInformationView extends StatefulWidget {
  const ExploreInformationView({Key key}) : super(key: key);

  @override
  State<ExploreInformationView> createState() => _ExploreInformationViewState();
}

class _ExploreInformationViewState extends State<ExploreInformationView> {
  ColorCoreController colorController = ColorCoreController();
  InformationHomeController informationController = InformationHomeController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 35, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                informationController.ep1,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Image(
                image: AssetImage('assets/image/core/horizontal.png'),
                height: 30,
                width: 30,
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: colorController.green3,
                          ),
                          margin: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 70),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return MonsteraExploreView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/explore_plant1.png'),
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 150, bottom: 0),
                          child: Text(
                            informationController.ep2,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: colorController.green3,
                          ),
                          margin: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 70),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CalatheaExploreView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/explore_plant2.png'),
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 150, bottom: 0),
                          child: Text(
                            informationController.ep3,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: colorController.green3,
                          ),
                          margin: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 70),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SpiderExploreView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/explore_plant3.png'),
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 150, bottom: 0),
                          child: Text(
                            informationController.ep4,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: colorController.green3,
                          ),
                          margin: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 70),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return PuringExploreView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/explore_plant4.png'),
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 150, bottom: 0),
                          child: Text(
                            informationController.ep5,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: colorController.green3,
                          ),
                          margin: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 70),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ArecaceaeExploreView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/explore_plant5.png'),
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 150, bottom: 0),
                          child: Text(
                            informationController.ep6,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: colorController.green3,
                          ),
                          margin: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 70),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SpinelessExploreView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/explore_plant6.png'),
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 150, bottom: 0),
                          child: Text(
                            informationController.ep7,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
