import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/explore/puring_explore_controller.dart';
import 'package:leorn_plant/view/home/information/explore/puring1_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/puring2_explore_view.dart';

// ignore: must_be_immutable
class PuringExploreView extends StatelessWidget {
  PuringExploreView({ Key key }) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  PuringExploreController puringExploreController = PuringExploreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          puringExploreController.item1,
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
              Puring1ExploreView(),
              Puring2ExploreView(),
            ],
          ),
        ],
      ),
    );
  }
}