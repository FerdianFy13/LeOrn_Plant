import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/disease/leafyellow_disease_controller.dart';
import 'package:leorn_plant/view/home/information/disease/leafyellow1_disease_view.dart';
import 'package:leorn_plant/view/home/information/disease/leafyellow2_disease_view.dart';

// ignore: must_be_immutable
class LeafYellowDiseasePlant extends StatelessWidget {
  LeafYellowDiseasePlant({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  LeafYellowDiseaseController diseaseController = LeafYellowDiseaseController();

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
              LeafYellow1DiseasePlant(),
              LeafYellow2DiseasePlant(),
            ],
          ),
        ],
      ),
    );
  }
}
