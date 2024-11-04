import 'package:MyMoov/view/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';


class PayementPage extends StatefulWidget {
  const PayementPage({super.key});

  @override
  State<PayementPage> createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
  TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
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
                       SizedBox(height: 30),
                  Text("Mode de paiement" , style: TextStyle(color: colorBlue, fontSize: 25),),
                 SizedBox(height: 30),
                    Container(
                margin: EdgeInsets.all(5),
                 child: Material(
                    elevation: 0,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: colorOrange
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: colorBlue
                        ),
                        //  indicatorPadding: EdgeInsets.symmetric(vertical: 5, ),
                       indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.white,
                        controller: _tabController,
                        tabs:[ 
                         
                           Tab(text:"Compte principale " ,),
                           Tab(text:"Moov Money" ,),
                             
                        ],),
                    ),
                  ),
               ),
               SizedBox(height: 50,),
               Divider(color: colorBlue, thickness: 2),
              Container(  
               height: 400, 
                child: TabBarView(
                  controller: _tabController,
                  children: [
               MyComptePrincipale(context),
                MyMoovMoney(context),
                // myWidgetDatas(context),
                // myWidgetsms(context),
                
                  ],),
              ),
              
                    
                  
                ],
              ),
      ),
          );
      
  }

  Widget MyComptePrincipale (BuildContext context){
  return 
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Detail du paiement"),
      SizedBox(height: 18,),
      SizedBox(
        width: Get.width,
           child:  Container(
               width: Get.width,
              height: 2,
               decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [colorOrange,  Color.fromARGB(255, 0, 77, 140)], 
                  begin: Alignment.topLeft, 
                  end: Alignment.topCenter, 
                ), 
                  borderRadius: BorderRadius.circular(10)
                ),
              )
        ),
        SizedBox(height: 18,),
      Text("45 min + 1.5Go + messages tous reseaux, valable sur 10jours", textScaler: TextScaler.linear(1.3),),
       SizedBox(height: 18,),
       SizedBox(
        width: Get.width,
           child:  Container(
               width: Get.width,
              height: 2,
               decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [colorOrange,  Color.fromARGB(255, 0, 77, 140)], 
                  begin: Alignment.topLeft, 
                  end: Alignment.topCenter, 
                ), 
                  borderRadius: BorderRadius.circular(10)
                ),
              )
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Durée :"),
            Text("10jours")
          ],
        ),
        SizedBox(height: 25,),
       SizedBox(
        width: Get.width,
           child:  Container(
               width: Get.width,
              height: 2,
               decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [colorOrange,  Color.fromARGB(255, 0, 77, 140)], 
                  begin: Alignment.topLeft, 
                  end: Alignment.topCenter, 
                ), 
                  borderRadius: BorderRadius.circular(10)
                ),
              )
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Cout :"),
            Text("500FCFA")
          ],
        ),
          SizedBox(height: 30,),
         SizedBox(
                width: Get.width,
                child: 
                TextButton(onPressed: (){
                   showDialog(
                  context: context, 
                  builder: (BuildContext context) {
                    return AlertDialog(
                     title: const Icon(FontAwesomeIcons.check),
                     content: Text("Paiement effectué avec succes", style: TextStyle(fontSize: 25),),
                      actions: <Widget>[
            Center( // Centrer le bouton dans la boîte de dialogue
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                 style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0EC6707),
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(5),
               ),
            minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
                   ),
                   child: const Text('Voir le reçu', style: TextStyle(color: Colors.white, fontSize: 20),),
           ),
            ),
             ],
                    );
                  });
                }, child: Text("Faire un payement", style: TextStyle(color: Colors.white, fontSize: 18),),
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
    );
}

Widget MyMoovMoney (BuildContext context){
  return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Detail du paiement"),
      SizedBox(height: 18,),
      SizedBox(
        width: Get.width,
           child:  Container(
               width: Get.width,
              height: 2,
               decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [colorOrange,  Color.fromARGB(255, 0, 77, 140)], 
                  begin: Alignment.topLeft, 
                  end: Alignment.topCenter, 
                ), 
                  borderRadius: BorderRadius.circular(10)
                ),
              )
        ),
        SizedBox(height: 18,),
      Text("45 min + 1.5Go + messages tous reseaux, valable sur 10jours", textScaler: TextScaler.linear(1.3),),
       SizedBox(height: 18,),
       SizedBox(
        width: Get.width,
           child:  Container(
               width: Get.width,
              height: 2,
               decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [colorOrange,  Color.fromARGB(255, 0, 77, 140)], 
                  begin: Alignment.topLeft, 
                  end: Alignment.topCenter, 
                ), 
                  borderRadius: BorderRadius.circular(10)
                ),
              )
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Durée :"),
            Text("10jours")
          ],
        ),
        SizedBox(height: 25,),
       SizedBox(
        width: Get.width,
           child:  Container(
               width: Get.width,
              height: 2,
               decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [colorOrange,  Color.fromARGB(255, 0, 77, 140)], 
                  begin: Alignment.topLeft, 
                  end: Alignment.topCenter, 
                ), 
                  borderRadius: BorderRadius.circular(10)
                ),
              )
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Entrer votre code secret :"),
            Form(child: 
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 35,
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
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none , borderRadius: BorderRadius.circular(4)),
                          disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(4)),
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
                      height: 30,
                      width: 35,
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
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none , borderRadius: BorderRadius.circular(4)),
                          disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(4)),
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
                      height: 30,
                      width: 35,
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
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none , borderRadius: BorderRadius.circular(4)),
                          disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(4)),
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
                       height: 30,
                      width: 35,
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
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none , borderRadius: BorderRadius.circular(4)),
                          disabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(4)),
                          hintText: "-", 
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
          ],
        ),
          SizedBox(height: 18,),
         SizedBox(
                width: Get.width,
                child: 
                TextButton(onPressed: (){
                 showDialog(
                  context: context, 
                  builder: (BuildContext context) {
                    return AlertDialog(
                     title: const Icon(FontAwesomeIcons.check),
                     content: Text("Paiement effectué avec succes", style: TextStyle(fontSize: 25),),
                      actions: <Widget>[
            Center( // Centrer le bouton dans la boîte de dialogue
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                 style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0EC6707),
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(5),
               ),
            minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
                   ),
                   child: const Text('Voir le reçu', style: TextStyle(color: Colors.white, fontSize: 20),),
           ),
            ),
             ],
                    );
                  });
                  
                }, child: Text("Valider le paiement", style: TextStyle(color: Colors.white, fontSize: 18),),
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
    );
 
}
}