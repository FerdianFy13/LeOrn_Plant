import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/disease/rotten_disease_controller.dart';
import 'package:leorn_plant/view/home/information/disease/fusarium_disease_view.dart';

// ignore: must_be_immutable
class RottenRot2DiseaseView extends StatelessWidget {
  RottenRot2DiseaseView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  RottenDiseaseController diseaseController = RottenDiseaseController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 30),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 45,
            child: Container(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.teal.shade200,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      diseaseController.btn1,
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
                color: colorController.green4,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 30),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
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
                          return FusariumDiseaseView();
                        },
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      diseaseController.btn2,
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
                color: colorController.green4,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
