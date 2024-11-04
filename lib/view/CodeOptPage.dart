import 'package:MyMoov/view/bienvenue.dart';
import 'package:MyMoov/view/HomeMoov.dart';
import 'package:MyMoov/view/homeScreen.dart';
import 'package:MyMoov/view/widget.dart';
import 'package:flutter/material.dart';
import 'package:android_sms_retriever/android_sms_retriever.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class CodeOtpPage extends StatefulWidget {
  const CodeOtpPage({super.key});

  @override
  State<CodeOtpPage> createState() => _CodeOtpPageState();
}
class _CodeOtpPageState extends State<CodeOtpPage> {
  
  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(16.0),
       child: SingleChildScrollView(
         child: Column(
         children: [
                  Container(
                    width: Get.width/2.5, 
                    height: Get.height/2.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(Logo),fit: BoxFit.cover),
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
          //  SizedBox(height: Get.height/20,),
           Text("Saisissez le code que vous avez récu par message"),
           SizedBox(height: Get.height/20,),
              Form(child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1){ 
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {
                        
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor:  Color.fromARGB(133, 203, 229, 251),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none , borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                        hintText: "-"
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                      ],
                      ),
                  ),
                  SizedBox(width: 8,),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1){ 
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {
                        
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor:  Color.fromARGB(133, 203, 229, 251),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none , borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                        hintText: "-"
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                      ],
                      ),
                  ),
                 SizedBox(width: 8,),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1){ 
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {   
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor:  Color.fromARGB(133, 203, 229, 251),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none , borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                        hintText: "-"
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                      ],
                      ),
                 ),
                 SizedBox(width: 8,),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if(value.length == 1){ 
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {
                        
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor:  Color.fromARGB(133, 203, 229, 251),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none , borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                        hintText: "-"
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                      ],
                      ),
                  )
                ],
            )),
            SizedBox(height: Get.height/18,),
             SizedBox(
              width: screenWidth,
               child: ElevatedButton(onPressed: (){Get.to(BienvenuePage(),transition: Transition.rightToLeft);}, 
                style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0EC6707 ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fixedSize: const Size(343, 50),
                  ),
               child: Text("Vérification", style: TextStyle(color: Colors.white, fontSize: 18),),     
               ),
             ) ,
            SizedBox(
              width: screenWidth,
              child: TextButton(onPressed: (){}, child: Text("Renvoyer le code", style: TextStyle(
              fontSize: 18,
                         color:  Color(0xFF005BA4),
                        ),)),
            )
         ],
         ),
       ),
     ), 
    );
  }
}