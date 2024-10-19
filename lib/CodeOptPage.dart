import 'package:MyMoov/BienvenuePage.dart';
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
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
       children: [
         SizedBox(height: Get.height/8,),
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
         SizedBox(height: Get.height/20,),
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
           ElevatedButton(onPressed: (){Get.to(BienvenuePage());}, 
            style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0EC6707 ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                fixedSize: const Size(343, 50),
              ),
           child: Text("Vérification", style: TextStyle(color: Colors.white, fontSize: 18),),     
           ) ,
          TextButton(onPressed: (){}, child: Text("Renvoyer le code", style: TextStyle(
          fontSize: 18,
         color:  Color(0xFF005BA4),
        ),))
       ],
       ),
     ), 
    );
  }
}