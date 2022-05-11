import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/Information_home_controller.dart';
import 'package:leorn_plant/view/home/information/disease/fusarium_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/leafblack_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/leafspot_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/leafyellow_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/mosaic_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/rotten_disease_view.dart';

// ignore: must_be_immutable
class DiseaseInformationView extends StatelessWidget {
  DiseaseInformationView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  InformationHomeController informationController = InformationHomeController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                informationController.dp1,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Image(
                image: AssetImage('assets/image/core/vertical.png'),
                width: 30,
                height: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: colorController.green3,
                    ),
                    child: Column(
                      children: [
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LeafSpotDiseaseView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/disease_plant1.png'),
                              width: 45,
                              height: 45,
                            ),
                          ),
                        ),
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 10, bottom: 0),
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            informationController.dp2,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: colorController.green3,
                    ),
                    child: Column(
                      children: [
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LeafYellowDiseasePlant();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/disease_plant2.png'),
                              width: 50,
                              height: 45,
                            ),
                          ),
                        ),
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 10, bottom: 0),
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            informationController.dp3,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: colorController.green3,
                    ),
                    child: Column(
                      children: [
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LeafBlackDiseaseView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/disease_plant3.png'),
                              width: 45,
                              height: 45,
                            ),
                          ),
                        ),
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 10, bottom: 0),
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            informationController.dp4,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    margin: EdgeInsets.only(top: 25, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: colorController.green3,
                    ),
                    child: Column(
                      children: [
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return RottenRotDiseaseView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/disease_plant4.png'),
                              width: 45,
                              height: 45,
                            ),
                          ),
                        ),
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 10, bottom: 0),
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            informationController.dp5,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    margin: EdgeInsets.only(top: 25, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: colorController.green3,
                    ),
                    child: Column(
                      children: [
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return FusariumDiseaseView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/disease_plant5.png'),
                              width: 50,
                              height: 45,
                            ),
                          ),
                        ),
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 10, bottom: 0),
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            informationController.dp6,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    margin: EdgeInsets.only(top: 25, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: colorController.green3,
                    ),
                    child: Column(
                      children: [
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return MosaicDiseaseView();
                                  },
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                  'assets/image/home/information/disease_plant6.png'),
                              width: 45,
                              height: 45,
                            ),
                          ),
                        ),
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 10, bottom: 0),
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            informationController.dp7,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
