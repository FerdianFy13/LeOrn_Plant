import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/information/plant/fertilizer_plant_controller.dart';
import 'package:leorn_plant/view/home/information/plants/cluster_plant_view.dart';

// ignore: must_be_immutable
class Fertilizer2PlantView extends StatelessWidget {
  Fertilizer2PlantView({Key key}) : super(key: key);

  ColorCoreController colorController = ColorCoreController();
  FertilizerPlantController fertilizerPlantController =
      FertilizerPlantController();

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
                      fertilizerPlantController.btn1,
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
                          return ClusterPlantView();
                        },
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      fertilizerPlantController.btn2,
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
