import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/view/core/navigationbar_view.dart';
import 'package:leorn_plant/view/home/developer/developer1_home_view.dart';
import 'package:leorn_plant/view/home/developer/developer2_home_view.dart';
import 'package:leorn_plant/view/home/developer/developer3_home_view.dart';

class DeveloperHomeView extends StatefulWidget {
  const DeveloperHomeView({Key key}) : super(key: key);

  @override
  State<DeveloperHomeView> createState() => _DeveloperHomeViewState();
}

class _DeveloperHomeViewState extends State<DeveloperHomeView> {
  ColorCoreController colorController = ColorCoreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.white2,
      appBar: AppBar(
        backgroundColor: colorController.white2,
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.center,
          child: InkWell(
            child: Image(
              image: AssetImage('assets/image/core/icon1.png'),
              width: 30,
              height: 30,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NavigationBarView();
                  },
                ),
              );
            },
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Center(
            child: Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              child: InkWell(
                child: Image(
                  image: AssetImage('assets/image/core/icon2.png'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavigationBarView();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(right: 20),
              child: InkWell(
                child: Image(
                  image: AssetImage('assets/image/core/icon3.png'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavigationBarView();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 35),
                child: Image(
                  image: AssetImage(
                      'assets/image/home/developer/developer1_home.png'),
                  width: 130,
                  height: 130,
                ),
              ),
              Developer1HomeView(),
              Developer2HomeView(),
              Developer3HomeView(),
            ],
          ),
        ],
      ),
    );
  }
}
