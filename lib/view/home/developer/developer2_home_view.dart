import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/developer/developer_home_controller.dart';

// ignore: must_be_immutable
class Developer2HomeView extends StatelessWidget {
  Developer2HomeView({Key key}) : super(key: key);

  DeveloperHomeController developerController = DeveloperHomeController();
  ColorCoreController colorController = ColorCoreController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.29,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 30, right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorController.green3,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image(
                  image: AssetImage(
                      'assets/image/home/developer/developer5_home.png'),
                  width: 30,
                  height: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  developerController.title3,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 5),
                    child: Image(
                      image: AssetImage(
                          'assets/image/home/developer/developer2_home.png'),
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 5),
                    child: Image(
                      image: AssetImage(
                          'assets/image/home/developer/developer3_home.png'),
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 5),
                    child: Image(
                      image: AssetImage(
                          'assets/image/home/developer/developer4_home.png'),
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 5),
                    child: Text(
                      developerController.name1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                      left: 5,
                    ),
                    child: Text(
                      developerController.name2,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 5),
                    child: Text(
                      developerController.name3,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
