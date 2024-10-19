import 'package:MyMoov/ConnexionPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PremierePage extends StatefulWidget {
  const PremierePage({super.key});

  @override
  State<PremierePage> createState() => _PremierePageState();
}

class _PremierePageState extends State<PremierePage> {
   @override
  void initState() {
    super.initState();

    // Déclencher la transition après 3 secondes
    Future.delayed(Duration(seconds: 3), () {
      Get.off(
        () => ConnexionPage(), // La page de connexion
        transition: Transition.fadeIn, // Animation de transition
        duration: Duration(milliseconds: 800), // Durée de l'animation
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xFF005BA4),
body: Center(
          child: Container(
            width: Get.width/1.8, 
            height: Get.height/1.8, 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 46, 46, 46).withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 9), 
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent, 
              child: ClipOval(
                child: Image.asset(
                  "Images/logo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      

    );
  }
}