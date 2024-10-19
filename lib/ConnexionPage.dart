import 'package:MyMoov/CodeOptPage.dart';
import 'package:MyMoov/InscriptionPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                width: Get.width, 
                height: Get.height/4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 46, 46, 46).withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 5), 
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
              SizedBox(height: 20,),
              Container(
                child: Text("Connexion", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              ),
             SizedBox(height: Get.height/15,),
              Container(
                width: Get.width,
                child: Text("Numero de téléphone :"),
              ),
             SizedBox(height: 5,),
              TextFormField(
               decoration: InputDecoration(
                filled: true,
                fillColor:  Color.fromARGB(133, 203, 229, 251),
                hintText: "**** *** ***",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none
                )
               ),
              ),
              SizedBox(height: 10,),
              TextButton(onPressed: (){Get.to(CodeOtpPage());}, child: Text("Connexion", style: TextStyle(color: Colors.white, fontSize: 19),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0EC6707 ),
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 18),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                )
              ),
              ),
              Container(
              width: Get.width,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Vous n’avez pas de compte ?" , style: TextStyle(fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){Get.to(InscriptionPage());}, child: Text("Inscrivez-vous ", style: TextStyle(color:  Color(0xFF005BA4),),))
              ],
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}