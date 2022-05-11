import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/disease/fusarium_disease_controller.dart';
import 'package:leorn_plant/view/home/information/disease/fusarium1_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/fusarium2_disease_view.dart';

// ignore: must_be_immutable
class FusariumDiseaseView extends StatelessWidget {
  FusariumDiseaseView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  FusariumDiseaseController diseaseController = FusariumDiseaseController();

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
              Fusarium1DiseaseView(),
              Fusarium2DiseaseView(),
            ],
          ),
        ],
      ),
    );
  }
}
