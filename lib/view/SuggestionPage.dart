import 'package:MyMoov/view/HomeMoov.dart';
import 'package:MyMoov/view/PayementPage.dart';
import 'package:MyMoov/view/datasPage.dart';
import 'package:MyMoov/view/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RecherchePage extends StatefulWidget {
  const RecherchePage({super.key});

  @override
  State<RecherchePage> createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
 TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        // child: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("Suggestions", style: TextStyle(color: colorBlue, fontSize: 25, fontWeight: FontWeight.bold),),
                 Icon(Icons.menu_open)
              ],
             ),
           ),
           Divider(color: colorBlue, thickness: 2),
            Container(
              margin: EdgeInsets.all(5),
              child: Material(
                  elevation: 0,
                  child: TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorOrange
                    ),
                    isScrollable: true,
                     indicatorPadding: EdgeInsets.symmetric(vertical: 5, ),
                   indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.white,
                    controller: tabController,
                    tabs:[ 
                      Tab(child:  Text ("Appels", textAlign: TextAlign.center,
                       )
                          ),
                      //  Tab(text:"Datas" ,),
                       Tab(text:"SMS" ,),
                       Tab(text:"Appels+Datas+SMS" ,)     
                    ],),
                ),
            ),
            
           Divider(color: colorBlue, thickness: 2),
           SizedBox(height: 17,),
          Container(
            height: Get.height/1.7, 
            child: TabBarView(
            controller: tabController,
              children: [ 
              myWidgetAppels(context),
              myWidgetSMS(context),
               myWidgetSMS_data_Appels(context),
            ],)
          )
          ],
        ),
        )
      );
    // );
    
  }
  Widget myWidgetAppels(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
   
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       mainAxisExtent: 370, 
        // mainAxisSpacing: 8,
        // crossAxisSpacing: 8,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Container(
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
                  colors: [Color.fromARGB(119, 252, 252, 252),  Color.fromARGB(172, 115, 154, 186)], 
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter, 
                ), 
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      width: 40.0, // Largeur du cercle
              height: 40.0,
                    decoration: BoxDecoration(
                shape: BoxShape.circle, // Forme circulaire
                border: Border.all(
                  color: colorOrange, // Couleur de la bordure
                  width: 3.0, // Épaisseur de la bordure
                ),
              ),
              child: IconButton(
                onPressed: () {
                  // Action à exécuter lorsque l'icône est pressée
                },
                icon: Icon(
                  Icons.phone,
                  size: 20,
                  color: colorOrange, // Couleur de l'icône
                ),
                    ),
                     ),
                      SizedBox(height: 12,),
                        Text.rich(TextSpan(text: "500", style: TextStyle(color: colorBlue , fontWeight: FontWeight.bold, fontSize: 28),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ' FCFA', // Texte en italique
                      style: TextStyle(  fontWeight: FontWeight.w300, fontSize: 15, color: Colors.black),
                                      ),
                                    ],)),
                                     Text.rich(TextSpan(text: "07", style: TextStyle(color: colorBlue , fontWeight: FontWeight.bold, fontSize: 28),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ' FCFA', // Texte en italique
                      style: TextStyle(  fontWeight: FontWeight.w300, fontSize: 15, ),
                                      ),
                                    ],)),
                                    Divider( thickness: 3, color: colorBlue,),
                      Text("Illimté vers vos 5 num préférés +50min TR + 500Mo + 250SMS tous réseaux"),
                       SizedBox(height: 18,),
                         
                      Center(child: TextButton(onPressed:() {Get.to(PayementPage(),transition: Transition.rightToLeft);} , child: Text("Achetez", style: TextStyle(fontSize: 15, color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        backgroundColor: colorOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      ),   
                      )
                            
                    ],
                  ),
                )),
            ),
          );
          
        }
      ),
    
  );
  }

   Widget myWidgetSMS(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       mainAxisExtent: 370, 
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Container(
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
                  colors: [Color.fromARGB(119, 252, 252, 252),  Color.fromARGB(172, 115, 154, 186)], 
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter, 
                ), 
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.mail_rounded, size: 30, color: colorOrange,)
                     ),
                      SizedBox(height: 12,),
                        Text.rich(TextSpan(text: "500", style: TextStyle(color: colorBlue , fontWeight: FontWeight.bold, fontSize: 28),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ' FCFA', // Texte en italique
                      style: TextStyle(  fontWeight: FontWeight.w300, fontSize: 15, color: Colors.black),
                                      ),
                                    ],)),
                                     Text.rich(TextSpan(text: "07", style: TextStyle(color: colorBlue , fontWeight: FontWeight.bold, fontSize: 28),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ' FCFA', // Texte en italique
                      style: TextStyle(  fontWeight: FontWeight.w300, fontSize: 15, ),
                                      ),
                                    ],)),
                                    Divider( thickness: 3, color: colorBlue,),
                      Text("Illimté vers vos 5 num préférés +50min TR + 500Mo + 250SMS tous réseaux"),
                       SizedBox(height: 18,),
                         
                      Center(child: TextButton(onPressed:() {Get.to(PayementPage(),transition: Transition.rightToLeft);} , child: Text("Achetez", style: TextStyle(fontSize: 15, color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        backgroundColor: colorOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      ),   
                      )
                            
                    ],
                  ),
                )),
            ),
          );
          
        }
      ),
   
  );
  }
     Widget myWidgetSMS_data_Appels(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
   
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       mainAxisExtent: 370, 
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Container(
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
                  colors: [Color.fromARGB(119, 252, 252, 252),  Color.fromARGB(172, 115, 154, 186)], 
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter, 
                ), 
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         Container(
                      width: 37.0, // Largeur du cercle
                      height: 37.0,
                    decoration: BoxDecoration(
                shape: BoxShape.circle, // Forme circulaire
                border: Border.all(
                  color: colorOrange, // Couleur de la bordure
                  width: 3.0, // Épaisseur de la bordure
                ),
              ),
              child: IconButton(
                onPressed: () {
                  // Action à exécuter lorsque l'icône est pressée
                },
                icon: Icon(
                  Icons.phone,
                  size: 18,
                  color: colorOrange, // Couleur de l'icône
                ),
                    ),
                     ),
                     Icon(Icons.wifi , size: 38, color: colorOrange,),
                     Icon(Icons.mail_rounded, size: 38, color: colorOrange,)
                      ],
                    ),
                      SizedBox(height: 12,),
                        Text.rich(TextSpan(text: "500", style: TextStyle(color: colorBlue , fontWeight: FontWeight.bold, fontSize: 28),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ' FCFA', // Texte en italique
                      style: TextStyle(  fontWeight: FontWeight.w300, fontSize: 15, color: Colors.black),
                                      ),
                                    ],)),
                                     Text.rich(TextSpan(text: "07", style: TextStyle(color: colorBlue , fontWeight: FontWeight.bold, fontSize: 28),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ' FCFA', // Texte en italique
                      style: TextStyle(  fontWeight: FontWeight.w300, fontSize: 15, ),
                                      ),
                                    ],)),
                                    Divider( thickness: 3, color: colorBlue,),
                      Text("50min TR + 500Mo + 250SMS tous réseaux"),
                       SizedBox(height: 18,),
                         
                      Center(child: TextButton(onPressed:() {Get.to(PayementPage(),transition: Transition.rightToLeft);}
                         , child: Text("Achetez", style: TextStyle(fontSize: 15, color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        backgroundColor: colorOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      ),   
                      )
                            
                    ],
                  ),
                )),
            ),
          );
          
        }
      ),
    );
 
  }

}