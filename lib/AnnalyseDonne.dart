import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'AnalyseForfait.dart';

class AnalyseDonnee extends StatefulWidget {
  const AnalyseDonnee({super.key});

  @override
  State<AnalyseDonnee> createState() => _AnalyseDonneeState();
}

class _AnalyseDonneeState extends State<AnalyseDonnee> {

  @override
  void initState() {
    super.initState();
    // Attendre 5 secondes avant de rediriger vers la page de connexion avec transition
    Future.delayed(Duration(seconds: 5), () {
      Get.off(
        AnnalyseForfait(),  // Remplacer la page actuelle par la page de connexion
        transition: Transition.rightToLeftWithFade,  // Appliquer une transition fadeIn
        duration: Duration(seconds: 1), // Durée de la transition : 1 seconde
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(  
        backgroundColor: Colors.blue, 
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back, color: Colors.white,)),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                width: Get.width,
                child: Text("Bonjour,",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
              ),
              Container(
                width: Get.width,
                child: Text("nous créons des forfaits spéciale pour vous,",
                style: TextStyle(
                  color: Colors.white, fontSize: 25, 
                  fontWeight: FontWeight.bold,
                  ),),
                 ),
                SizedBox(height: 40),
               Container(
                width: Get.width * 0.9, // 90% de la largeur de l'écran
                child: Text("Mon application permettant de visualiser et d'interpréter des informations spécifiques en offrant des forfaits personnalisés",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18, 
                  // fontWeight: FontWeight.bold,
                  ),),
              ),
               SizedBox(height: 40),
              Column(
               children: [
                 Center(
                     child: CircularPercentIndicator(
                           radius: 35, // Rayon du cercle
                           lineWidth: 10.0, // Épaisseur de la ligne
                           percent: 0.7, // Pourcentage de progression (70%)
                           center: Text(
                             '25%', // Texte centré
                             style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                             ),
                           ),
                           progressColor: Colors.orange, // Couleur de la progression
                           // backgroundColor: Colors.grey[200], // Couleur de l'arrière-plan
                          //  circularStrokeCap: CircularStrokeCap.round, // Style de la bordure
                         ),
                       ),
                       SizedBox(height: 27),
                       Text("Analyse de vos données " ,  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                      Text("Veillez patienter ... " ,  style: TextStyle( fontWeight: FontWeight.w100, fontSize: 15, color: Colors.white),)
               ],
             ),

      
    
            ],
          ),
        ),
      ),

    );
  }
}