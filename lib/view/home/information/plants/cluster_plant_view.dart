import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/plant/cluster_plant_controller.dart';
import 'package:leorn_plant/view/home/information/plants/cluster1_plant_view.dart';
import 'package:leorn_plant/view/home/information/plants/cluster2_plant_view.dart';

// ignore: must_be_immutable
class ClusterPlantView extends StatelessWidget {
  ClusterPlantView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  ClusterPlantController clusterController = ClusterPlantController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          clusterController.item1,
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
              Cluster1PlantView(),
              Cluster2PlantView(),
            ],
          ),
        ],
      ),
    );
  }
}
