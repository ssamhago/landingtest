import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:landingtest/landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'SingleDay'),
      home: LandingPage(),
    );
  }
}
