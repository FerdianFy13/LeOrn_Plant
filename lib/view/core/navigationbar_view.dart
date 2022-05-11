import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
// import 'package:leorn_plant/model/core/navigationBar.dart';
import 'package:leorn_plant/view/home/developer/developer_home_view.dart';
import 'package:leorn_plant/view/home/information/information_home.dart';
import 'package:leorn_plant/view/home/statistics/statistics_home_view.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({Key key}) : super(key: key);

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  ColorCoreController color = ColorCoreController();

  int selectedIndex = 0;
  int counter = 0;
  final List<Widget> changeBar = [
    StatisticsHomeView(),
    InformationHomeView(),
    DeveloperHomeView(),
  ];

  void incrementBar() {
    setState(
      () {
        counter++;
      },
    );
  }

  void onTapBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // NavigationBars(this.selectedIndex, counter, changeBar);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: changeBar[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: color.white3,
          type: BottomNavigationBarType.fixed,
          mouseCursor: MaterialStateMouseCursor.clickable,
          selectedIconTheme: IconThemeData(
            size: 30,
            color: color.green2,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: 'Statistics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department),
              label: 'Information',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.admin_panel_settings),
              label: 'Developer',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: color.green2,
          elevation: 5,
          unselectedItemColor: color.black,
          // showUnselectedLabels: true,
          onTap: onTapBar,
          // onTap: changeNavbar,
        ),
      ),
    );
  }
}
