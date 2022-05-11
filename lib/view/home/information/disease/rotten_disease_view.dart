import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/disease/rotten_disease_controller.dart';
import 'package:leorn_plant/view/home/information/disease/rotten1_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/rotten2_disease_view.dart';

// ignore: must_be_immutable
class RottenRotDiseaseView extends StatelessWidget {
  RottenRotDiseaseView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  RottenDiseaseController diseaseController = RottenDiseaseController();

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
              RottenRot1DiseaseView(),
              RottenRot2DiseaseView(),
            ],
          ),
        ],
      ),
    );
  }
}
