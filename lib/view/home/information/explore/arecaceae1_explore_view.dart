import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/explore/arecaceae_explore_controller.dart';

// ignore: must_be_immutable
class Arecaceae1ExploreView extends StatelessWidget {
  Arecaceae1ExploreView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  ArecaceaeExploreController arecaceaeExploreController =
      ArecaceaeExploreController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.47,
      margin: EdgeInsets.only(
        top: 40,
        right: 25,
        left: 25,
      ),
      decoration: BoxDecoration(
        color: colorController.white2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30, right: 10),
                child: Image(
                  image: AssetImage(
                      'assets/image/home/information/explore_plant5.png'),
                  width: 90,
                  height: 90,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Text(
                      arecaceaeExploreController.item2,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 0, left: 10),
                    child: Text(
                      arecaceaeExploreController.item3,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 25, right: 20, left: 20),
            child: Text(
              arecaceaeExploreController.content1,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Text(
              arecaceaeExploreController.content2,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
