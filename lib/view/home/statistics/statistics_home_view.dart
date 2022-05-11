import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/statistics/statistics_home_controller.dart';
import 'package:leorn_plant/view/home/statistics/statistics1_home_view.dart';
import 'package:leorn_plant/view/home/statistics/statistics2_home_view.dart';

class StatisticsHomeView extends StatefulWidget {
  const StatisticsHomeView({Key key}) : super(key: key);

  @override
  State<StatisticsHomeView> createState() => _StatisticsHomeViewState();
}

class _StatisticsHomeViewState extends State<StatisticsHomeView> {
  ColorCoreController colorController = ColorCoreController();
  StatisticsHomeController statisticsController = StatisticsHomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.green1,
      appBar: AppBar(
        backgroundColor: colorController.green1,
        automaticallyImplyLeading: true,
        title: Text(
          statisticsController.bar1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Text(
                statisticsController.bar2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Statistics1HomeView(),
                  Statistics2HomeView(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
