import 'package:MyMoov/view/PremierePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        // fontFamily: "verdana",
        useMaterial3: true,
        textTheme: GoogleFonts.varelaRoundTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
