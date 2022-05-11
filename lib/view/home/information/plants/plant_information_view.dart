import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/Information_home_controller.dart';
import 'package:leorn_plant/view/home/information/plants/cluster_plant_view.dart';
import 'package:leorn_plant/view/home/information/plants/fertilizer_plant_view.dart';
import 'package:leorn_plant/view/home/information/plants/soil_plant_view.dart';

// ignore: must_be_immutable
class PlantInformationView extends StatelessWidget {
  PlantInformationView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  InformationHomeController informationController = InformationHomeController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 35, left: 20, right: 20),
          child: Text(
            informationController.cp1,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
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
                                return ClusterPlantView();
                              },
                            ),
                          );
                        },
                        child: Image(
                          image: AssetImage(
                              'assets/image/home/information/information_plant1.png'),
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
                        informationController.cp2,
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
                                return SoilPlantView();
                              },
                            ),
                          );
                        },
                        child: Image(
                          image: AssetImage(
                              'assets/image/home/information/information_plant2.png'),
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    Container(
                      // alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 5, bottom: 0),
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        informationController.cp3,
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
                                return FertilizerPlantView();
                              },
                            ),
                          );
                        },
                        child: Image(
                          image: AssetImage(
                              'assets/image/home/information/information_plant3.png'),
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
                        informationController.cp4,
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
        ),
      ],
    );
  }
}
