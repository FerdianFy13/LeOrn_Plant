import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/disease/blackspot_disease_controller.dart';
import 'package:leorn_plant/view/home/information/disease/leafblack1_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/leafblack2_disease_view.dart';

// ignore: must_be_immutable
class LeafBlackDiseaseView extends StatelessWidget {
  LeafBlackDiseaseView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  BlackSpotDiseaseController diseaseController = BlackSpotDiseaseController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          diseaseController.item1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              LeafBlack1DiseaseView(),
              LeafBlack2DiseaseView(),
            ],
          ),
        ],
      ),
    );
  }
}
