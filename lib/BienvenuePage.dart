import 'package:MyMoov/ScreenPageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';


class BienvenuePage extends StatefulWidget {
  const BienvenuePage({super.key});

  @override
  State<BienvenuePage> createState() => _BienvenuePageState();
}
class _BienvenuePageState extends State<BienvenuePage> with SingleTickerProviderStateMixin{

late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5), // Durée d'un tour complet (5 secondes ici)
    )..repeat();  // Répéter l'animation pour qu'elle tourne en continu
  }

  @override
  void dispose() {
    _controller.dispose();  // Libère l'AnimationController
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( leading: IconButton(onPressed: (){ Get.back();}, icon: Icon(Icons.arrow_back)),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: Get.width,
              child: Text("Bienvenue sur MyMoov", 
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35
              ),),
            ),
            SizedBox(height: Get.height/18,),
    Center(
  child: RotationTransition(
      turns: _controller,
    child: Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        // color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage("Images/image1moov.jpg" ,),fit: BoxFit.cover, )
      ),
    ),
  ),
),        
 SizedBox(height: 10,),
Container(
  width: Get.width,
  child: Text("Aider nous a créer des forfaits spécialement pour vous", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),)
),
SizedBox(height: Get.height/18,),
       ElevatedButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Icon(Icons.error_outline),
          content: const Text("Autoriser l'application a accéder aux données nécessaires à l’analyse (Data, Appels, SMS, utilisation des applications).",textAlign: TextAlign.center, style: TextStyle(fontWeight:FontWeight.w500, fontSize: 20),),
         actions: <Widget>[
        Center( // Centrer le bouton dans la boîte de dialogue
          child: TextButton(
            onPressed: () {
              Get.to(ScreenPageView());
              // Navigator.of(context).pop(); // Fermer la boîte de dialogue
              // Ajoute ici d'autres actions si nécessaire
            },
             style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF0EC6707),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
  ),
            child: const Text('Accepter', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        ),
          );
        
      },
    );
    // Get.to(BienvenuePage());
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF0EC6707),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
  ),
  child: Text(
    "Vous êtes prêt? Démarrons",
    style: TextStyle(color: Colors.white, fontSize: 18),
  ),
)
      ],
        ),
        )
        
      ),
    );
  }
}