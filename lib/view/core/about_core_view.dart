import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/about_core_controller.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/view/validation/signIn_validation_view.dart';
import 'package:leorn_plant/view/validation/signUp_validation_view.dart';

class AboutCoreView extends StatefulWidget {
  const AboutCoreView({Key key}) : super(key: key);

  @override
  State<AboutCoreView> createState() => _AboutCoreViewState();
}

class _AboutCoreViewState extends State<AboutCoreView> {
  AboutCoreController aboutController = AboutCoreController();
  ColorCoreController colorController = ColorCoreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.white2,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 75),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      aboutController.title1,
                      style: TextStyle(
                        color: colorController.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      aboutController.title2,
                      style: TextStyle(
                        color: colorController.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 50, 0, 45),
                child: Image.asset(
                  "assets/image/core/core_view.png",
                  width: 250,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      aboutController.title3,
                      style: TextStyle(
                        color: colorController.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      aboutController.title4,
                      style: TextStyle(
                        color: colorController.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 45,
                  child: Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.teal.shade200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignInValidation();
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            aboutController.buttonTitle1,
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
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 45,
                  child: Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        // splashColor: Colors.teal.shade200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUpValidation();
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            aboutController.buttonTitle2,
                            style: TextStyle(
                              color: colorController.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // decoration: BoxDecoration(
                    //   color: Color.fromARGB(255, 49, 159, 95),
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
