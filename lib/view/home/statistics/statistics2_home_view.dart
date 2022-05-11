import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/home/statistics/statistics_home_controller.dart';
import 'package:leorn_plant/model/home/statistics_model.dart';

class Statistics2HomeView extends StatefulWidget {
  const Statistics2HomeView({Key key}) : super(key: key);

  @override
  State<Statistics2HomeView> createState() => _Statistics2HomeViewState();
}

class _Statistics2HomeViewState extends State<Statistics2HomeView> {
  ColorCoreController colorController = ColorCoreController();
  StatisticsHomeController statisticsController = StatisticsHomeController();
  StatisticsModel models = StatisticsModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.47,
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 345),
          decoration: BoxDecoration(
            color: colorController.white2,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      image: Image.asset(
                              'assets/image/home/statistics/statics2_home.png')
                          .image,
                      width: 75,
                      height: 75),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        statisticsController.item1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        statisticsController.item2,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // margin: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 45,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          // elevation: 0.2,
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.teal.shade200,
                            onTap: () {},
                            child: Center(
                              child: DropdownButton(
                                hint: Text(
                                  'Plant',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                underline: SizedBox(),
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                                dropdownColor: colorController.green1,
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                value: models.plantvalues,
                                onChanged: (value) {
                                  setState(() {
                                    models.plantvalues = value;
                                  });
                                },
                                items: models.plantCategory.map(
                                  (value) {
                                    return DropdownMenuItem(
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      value: value,
                                    );
                                  },
                                ).toList(),
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
                    // margin: EdgeInsets.only(top: 30),
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
                            onTap: () {},
                            child: Center(
                              child: Text(
                                statisticsController.item4,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
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
                  // Text('Ferdian'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            models.plantvalues == 'Monstera'
                                ? '18%'
                                : models.plantvalues == 'Calathea'
                                    ? '15%'
                                    : models.plantvalues == 'Spider'
                                        ? '12%'
                                        : models.plantvalues == 'Puring'
                                            ? '60%'
                                            : models.plantvalues == 'Arecaceae'
                                                ? '42%'
                                                : models.plantvalues ==
                                                        'Spineless'
                                                    ? '54%'
                                                    : 'null',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            statisticsController.text2,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              models.plantvalues == 'Monstera'
                                  ? '36%'
                                  : models.plantvalues == 'Calathea'
                                      ? '24%'
                                      : models.plantvalues == 'Spider'
                                          ? '18%'
                                          : models.plantvalues == 'Puring'
                                              ? '48%'
                                              : models.plantvalues ==
                                                      'Arecaceae'
                                                  ? '36%'
                                                  : models.plantvalues ==
                                                          'Spineless'
                                                      ? '42%'
                                                      : 'null',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              statisticsController.text8,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            models.plantvalues == 'Monstera'
                                ? '6.25'
                                : models.plantvalues == 'Calathea'
                                    ? '6.5'
                                    : models.plantvalues == 'Spider'
                                        ? '6.25'
                                        : models.plantvalues == 'Puring'
                                            ? '6.5'
                                            : models.plantvalues == 'Arecaceae'
                                                ? '6'
                                                : models.plantvalues ==
                                                        'Spineless'
                                                    ? '6.5'
                                                    : 'null',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            statisticsController.text4,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              models.plantvalues == 'Monstera'
                                  ? '40%'
                                  : models.plantvalues == 'Calathea'
                                      ? '50%'
                                      : models.plantvalues == 'Spider'
                                          ? '45%'
                                          : models.plantvalues == 'Puring'
                                              ? '30%'
                                              : models.plantvalues ==
                                                      'Arecaceae'
                                                  ? '26%'
                                                  : models.plantvalues ==
                                                          'Spineless'
                                                      ? '32%'
                                                      : 'null',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              statisticsController.text10,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            models.plantvalues == 'Monstera'
                                ? 'Slight Acid'
                                : models.plantvalues == 'Calathea'
                                    ? 'Slight Acid'
                                    : models.plantvalues == 'Spider'
                                        ? 'Slight Acid'
                                        : models.plantvalues == 'Puring'
                                            ? 'Slight Acid'
                                            : models.plantvalues == 'Arecaceae'
                                                ? 'Moderate Acid'
                                                : models.plantvalues ==
                                                        'Spineless'
                                                    ? 'Slight Acid'
                                                    : 'null',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            statisticsController.text6,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              models.plantvalues == 'Monstera'
                                  ? '24%'
                                  : models.plantvalues == 'Calathea'
                                      ? '20%'
                                      : models.plantvalues == 'Spider'
                                          ? '16%'
                                          : models.plantvalues == 'Puring'
                                              ? '18%'
                                              : models.plantvalues ==
                                                      'Arecaceae'
                                                  ? '20%'
                                                  : models.plantvalues ==
                                                          'Spineless'
                                                      ? '20%'
                                                      : 'null',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              statisticsController.text12,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
