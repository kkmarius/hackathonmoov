import 'package:MyMoov/view/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:MyMoov/view/PayementPage.dart';
// import 'package:getapp/home.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'HomeMoov.dart';
import 'homeScreen.dart';

class AchatPage extends StatefulWidget {
  const AchatPage({super.key});
  @override
  State<AchatPage> createState() => _AchatPageState();
}
class _AchatPageState extends State<AchatPage> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 60),
              Container(
              width: 50.0, // Largeur du cercle
              height: 50.0,
               decoration: BoxDecoration(
                shape: BoxShape.circle, // Forme circulaire
                border: Border.all(
                  color: colorOrange, // Couleur de la bordure
                  width: 3.0, // Épaisseur de la bordure
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Get.back();
                  Transition.rightToLeftWithFade;
                  // Action à exécuter lorsque l'icône est pressée
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 28,
                  color: colorBlue, // Couleur de l'icône
                ),
                    ),
                     ),
                      SizedBox(height: 40),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Achat" , style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: colorBlue,overflow: TextOverflow.ellipsis, ),),
                        Icon(Icons.account_circle_rounded, size: 70, color: colorBlue,),
                      ],
                     ),
                      Text.rich(TextSpan(text: "500", style: TextStyle(color: colorOrange , fontWeight: FontWeight.bold, fontSize: 28),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ' FCFA', // Texte en italique
                      style: TextStyle(  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
                                      ),
                                    ],)),
                                     Text.rich(TextSpan(text: "Numéero de téléphone", style: TextStyle(color: colorBlue , fontWeight: FontWeight.bold, ),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 010101010101 ', // Texte en italique
                      style: TextStyle(  fontWeight: FontWeight.w300, fontSize: 15, ),
                                      ),
                                    ],)),
              SizedBox(height: 20),
             
              Container(
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Statut", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white),),
                           Text(' Effectué', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),),
                          ],
                        ),
                         SizedBox(height: 15,),
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Forfait", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white),),
                           Text(' SMS', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),),
                          ],
                        ),
                         SizedBox(height: 15,),
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Date et Heure", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white),),
                           Text(' 12/12/2024 a 15h', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),),
                          ],
                        ),
                         SizedBox(height: 15,),
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Statut", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white),),
                           Text(' Effectué', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),),
                          ],
                        ),
                         SizedBox(height: 15,),
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Numéro de téléphone", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white),),
                           Text(' 0101010110', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),),
                          ],
                        ),
                        SizedBox(height: 15,),
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ID de télephone", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white),),
                           Text(' PEKJEHJDBNCND', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),),
                          ],
                        ),
                        
                         
                       
                        ],
                      ),
                    ),
                     decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: BorderDirectional(bottom: BorderSide(width: 5, color: colorOrange, )),
                   boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 46, 46, 46).withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 5), 
                      ),
                        ],
                          gradient: LinearGradient(
                  colors: [Color.fromARGB(119, 1, 137, 249),  Color.fromARGB(255, 0, 77, 140)], 
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter, 
                ), 
                ),
                  ),
             
               
    
            ],
          ),
        ),
      ),
    );
  }
}



























