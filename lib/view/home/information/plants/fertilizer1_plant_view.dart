import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/plant/fertilizer_plant_controller.dart';

// ignore: must_be_immutable
class Fertilizer1PlantView extends StatelessWidget {
  Fertilizer1PlantView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  FertilizerPlantController fertilizerPlantController =
      FertilizerPlantController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.56,
      margin: EdgeInsets.only(
        top: 40,
        right: 25,
        left: 25,
      ),
      decoration: BoxDecoration(
        color: colorController.white2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30),
            child: Text(
              fertilizerPlantController.title1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 25),
            child: Image(
              image: AssetImage(
                  'assets/image/home/information/information_plant3.png'),
              width: 70,
              height: 70,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 25, right: 20, left: 20),
            child: Text(
              fertilizerPlantController.title2,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              fertilizerPlantController.title3,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              fertilizerPlantController.title4,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              fertilizerPlantController.title5,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              fertilizerPlantController.title6,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              fertilizerPlantController.title7,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              fertilizerPlantController.title8,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              fertilizerPlantController.title9,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
