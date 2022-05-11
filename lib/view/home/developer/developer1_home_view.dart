import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/developer/developer_home_controller.dart';

// ignore: must_be_immutable
class Developer1HomeView extends StatelessWidget {
  Developer1HomeView({Key key}) : super(key: key);

  DeveloperHomeController developerController = DeveloperHomeController();
  ColorCoreController colorController = ColorCoreController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorController.green3,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              developerController.title1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Text(
              developerController.title2,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
