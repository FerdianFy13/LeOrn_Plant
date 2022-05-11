import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/disease/leafspot_disease_controller.dart';

// ignore: must_be_immutable
class LeafSpot1DiseaseView extends StatelessWidget {
  LeafSpot1DiseaseView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  LeafSpotDiseaseController leafSpotDiseaseController =
      LeafSpotDiseaseController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.48,
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
              leafSpotDiseaseController.item2,
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
                  'assets/image/home/information/disease_plant1.png'),
              width: 70,
              height: 70,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 25, right: 20, left: 20),
            child: Text(
              leafSpotDiseaseController.content1,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              leafSpotDiseaseController.content2,
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
