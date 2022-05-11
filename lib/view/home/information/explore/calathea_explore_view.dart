import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/explore/calathea_explore_controller.dart';
import 'package:leorn_plant/view/home/information/explore/calathea1_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/calathea2_explore_view.dart';

// ignore: must_be_immutable
class CalatheaExploreView extends StatelessWidget {
  CalatheaExploreView({Key key}) : super(key: key);

  CalatheaExploreController calatheaExploreController =
      CalatheaExploreController();
  ColorCoreController colorController = ColorCoreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          calatheaExploreController.item1,
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
              Calathea1ExploreView(),
              Calathea2ExploreView(),
            ],
          ),
        ],
      ),
    );
  }
}
