import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/explore/arecaceae_explore_controller.dart';
import 'package:leorn_plant/view/home/information/explore/arecaceae1_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/arecaceae2_explore_view.dart';

// ignore: must_be_immutable
class ArecaceaeExploreView extends StatelessWidget {
  ArecaceaeExploreView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  ArecaceaeExploreController arecaceaeExploreController =
      ArecaceaeExploreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          arecaceaeExploreController.item1,
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
              Arecaceae1ExploreView(),
              Arecaceae2ExploreView(),
            ],
          ),
        ],
      ),
    );
  }
}
