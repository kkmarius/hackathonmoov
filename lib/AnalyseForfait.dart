import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:MyMoov/AnnalyseDonne.dart';
// import 'package:getapp/home.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'HomeMoov.dart';
import 'homeScreen.dart';

class AnnalyseForfait extends StatefulWidget {
  const AnnalyseForfait({super.key});
  @override
  State<AnnalyseForfait> createState() => _AnnalyseForfaitState();
}
class _AnnalyseForfaitState extends State<AnnalyseForfait> with SingleTickerProviderStateMixin{

   @override
  void initState() {
    super.initState();
    // Attendre 5 secondes avant de rediriger vers la page de connexion avec transition
    Future.delayed(Duration(seconds: 5), () {
      Get.off(
        HomeScreen(),  // Remplacer la page actuelle par la page de connexion
        transition: Transition.zoom,  // Appliquer une transition fadeIn
        duration: Duration(seconds: 1), // Durée de la transition : 1 seconde
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back)),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                width: Get.width,
                child: Text("Bonjour,",style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),),
              ),
              Container(
                width: Get.width,
                child: Text("nous créons des forfaits spéciale pour vous,",
                style: TextStyle(
                  color: Colors.blue, fontSize: 25, 
                  fontWeight: FontWeight.bold,
                  ),),
                 ),
                SizedBox(height: 40),
               Container(
                width: Get.width * 0.9, // 90% de la largeur de l'écran
                child: Text("Mon application permettant de visualiser et d'interpréter des informations spécifiques en offrant des forfaits personnalisés",
                style: TextStyle(
                  // color: Colors.blue,
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
                             '70%', // Texte centré
                             style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                             ),
                           ),
                           progressColor: Colors.orange, // Couleur de la progression
                           // backgroundColor: Colors.grey[200], // Couleur de l'arrière-plan
                           circularStrokeCap: CircularStrokeCap.round, // Style de la bordure
                         ),
                       ),
                       SizedBox(height: 27),
                       Text("Creation de forfaits per.... " ,  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 18),),
                      Text("Veillez patienter ... " ,  style: TextStyle( fontWeight: FontWeight.w100, fontSize: 15),)
               ],
             ),

      
    
            ],
          ),
        ),
      ),
    );
  }
}



























