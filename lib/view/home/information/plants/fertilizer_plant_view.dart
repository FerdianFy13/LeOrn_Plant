import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/plant/fertilizer_plant_controller.dart';
import 'package:leorn_plant/view/home/information/plants/fertilizer1_plant_view.dart';
import 'package:leorn_plant/view/home/information/plants/fertilizer2_plant_view.dart';

// ignore: must_be_immutable
class FertilizerPlantView extends StatelessWidget {
  FertilizerPlantView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  FertilizerPlantController fertilizerPlantController =
      FertilizerPlantController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          fertilizerPlantController.item1,
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
              Fertilizer1PlantView(),
              Fertilizer2PlantView(),
            ],
          ),
        ],
      ),
    );
  }
}
