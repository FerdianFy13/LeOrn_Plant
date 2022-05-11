import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/explore/monstera_explore_controller.dart';
import 'package:leorn_plant/view/home/information/explore/monstera1_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/monstera2_explore_view.dart';

// ignore: must_be_immutable
class MonsteraExploreView extends StatelessWidget {
  MonsteraExploreView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  MonsteraExploreController monsteraExploreController =
      MonsteraExploreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          monsteraExploreController.item1,
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
              Monstera1ExploreView(),
              Monstera2ExploreView(),
            ],
          ),
        ],
      ),
    );
  }
}
