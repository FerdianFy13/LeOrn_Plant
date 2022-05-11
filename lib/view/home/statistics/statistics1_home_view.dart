import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/home/statistics/statistics_home_controller.dart';
import 'package:intl/intl.dart';
import 'package:leorn_plant/model/home/statistics_model.dart';

// ignore: must_be_immutable
class Statistics1HomeView extends StatelessWidget {
  StatisticsHomeController statisticsController = StatisticsHomeController();
  StatisticsModel models = StatisticsModel();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Image(
                  image: Image.asset(
                          'assets/image/home/statistics/statics1_home.png')
                      .image,
                  width: 190,
                  height: 260),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    statisticsController.title1,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    statisticsController.title2,
                    style: TextStyle(
                      fontSize: 16.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('EEEE').format(models.day),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    statisticsController.title4,
                    style: TextStyle(
                      fontSize: 16.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('dd MMMM yyyy').format(models.day),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    statisticsController.title6,
                    style: TextStyle(
                      fontSize: 16.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
