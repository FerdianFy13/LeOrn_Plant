import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/explore/spider_explore_controller.dart';
import 'package:leorn_plant/view/home/information/explore/spider1_explore_view.dart';
import 'package:leorn_plant/view/home/information/explore/spider2_explore_view.dart';

// ignore: must_be_immutable
class SpiderExploreView extends StatelessWidget {
  SpiderExploreView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  SpiderExploreController spiderExploreController = SpiderExploreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        title: Text(
          spiderExploreController.item1,
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
              Spider1ExploreView(),
              Spider2ExploreView(),
            ],
          ),
        ],
      ),
    );
  }
}
