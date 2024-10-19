import 'package:MyMoov/PremierePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PremierePage(),
      theme: ThemeData(
        fontFamily: "Montserrat"
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
