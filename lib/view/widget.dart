import 'package:flutter/material.dart';

var colorBlue =  Color(0xFF005BA4);
var Logo = "Images/smartlogo.png";
var colorOrange =  Color(0xFF0EC6707 );

var gradientblue = DecoratedBox(
  decoration: BoxDecoration(
    gradient: LinearGradient(
                colors: [Color.fromARGB(174, 0, 88, 159),  Color.fromARGB(255, 0, 77, 140)], 
                begin: Alignment.topCenter, 
                end: Alignment.bottomCenter, 
              ), 
                borderRadius: BorderRadius.circular(10) 
  ));

