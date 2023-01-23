// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/developer/developer_home_controller.dart';
import 'package:leorn_plant/model/validation/auth_services.dart';
import 'package:leorn_plant/view/core/about_core_view.dart';

// ignore: must_be_immutable
class Developer3HomeView extends StatelessWidget {
  Developer3HomeView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  DeveloperHomeController developerController = DeveloperHomeController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 45,
        child: Container(
          child: Material(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: Colors.teal.shade200,
              onTap: () {
                // AuthService.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutCoreView();
                    },
                  ),
                );
              },
              child: Center(
                child: Text(
                  developerController.title4,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: colorController.green1,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
