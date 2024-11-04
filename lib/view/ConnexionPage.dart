import 'package:MyMoov/view/CodeOptPage.dart';
import 'package:MyMoov/view/InscriptionPage.dart';
import 'package:MyMoov/view/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {

  @override
  Widget build(BuildContext context) {
double screenWidth = MediaQuery.of(context).size.width;
double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Container(
               width: screenWidth/1.4, 
               height: Get.height/4, 
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(Logo), fit: BoxFit.cover),
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
              ),
            SizedBox(height: Get.height/15,),
              Container(
                margin: EdgeInsets.all(20),
              child: Text("L’application mobile qui s’adapte à vos besoins ",textAlign: TextAlign.center, style: TextStyle(fontSize: 20,),
              )), 
              SizedBox(height: 30,),
              Container(
                width: Get.width,
                child: Text("Numero de téléphone "),
              ),
             SizedBox(height: 5,),
              
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color:  Color.fromARGB(133, 203, 229, 251),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+225"
                        ),
                      ),
                    ),
                    VerticalDivider(color: colorOrange,),
                    SizedBox(width: 15,),
                     Expanded(  
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                           hintText: "0101010101"
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
              SizedBox(height: 50,),
              SizedBox(
              width: screenWidth,
              child: 
              TextButton(onPressed: (){Get.to(CodeOtpPage(), transition: Transition.rightToLeft);}, child: Text("Se connecter", style: TextStyle(color: Colors.white, fontSize: 22),),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorOrange,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                ),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
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