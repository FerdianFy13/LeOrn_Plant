import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/explore/spineless_explore_controller.dart';
import 'package:leorn_plant/view/home/information/explore/spineless1_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/spineless2_explore_view.dart';

// ignore: must_be_immutable
class SpinelessExploreView extends StatelessWidget {
  SpinelessExploreView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  SpinelessExploreController spinelessExploreController =
      SpinelessExploreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          spinelessExploreController.item1,
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
              Spineless1ExploreView(),
              Spineless2ExploreView(),
            ],
          ),
        ],
      ),
    );
  }
}
