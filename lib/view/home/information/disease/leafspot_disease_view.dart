import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/disease/leafspot_disease_controller.dart';
import 'package:leorn_plant/view/home/information/disease/leafspot1_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/leafspot2_disease_view.dart';

// ignore: must_be_immutable
class LeafSpotDiseaseView extends StatelessWidget {
  LeafSpotDiseaseView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  LeafSpotDiseaseController leafSpotDiseaseController =
      LeafSpotDiseaseController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          leafSpotDiseaseController.item1,
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
              LeafSpot1DiseaseView(),
              LeafSpot2DiseaseView(),
            ],
          ),
        ],
      ),
    );
  }
}
