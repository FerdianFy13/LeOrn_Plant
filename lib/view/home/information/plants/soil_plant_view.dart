import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/plant/soil_plant_controller.dart';
import 'package:leorn_plant/view/home/information/plants/soil1_plant_view.dart';
import 'package:leorn_plant/view/home/information/plants/soil2_plant_view.dart';

// ignore: must_be_immutable
class SoilPlantView extends StatelessWidget {
  SoilPlantView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  SoilPlantController soilPlantController = SoilPlantController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          soilPlantController.item1,
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
              Soil1PlantView(),
              Soil2PlantView(),
            ],
          ),
        ],
      ),
    );
  }
}
