import 'package:flutter/material.dart';
import 'package:leorn_plant/view/core/about_core_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LeOrn Plant',
      home: AboutCoreView(),
    );
  }
}
