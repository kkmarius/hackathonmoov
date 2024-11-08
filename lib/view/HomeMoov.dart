import 'package:MyMoov/view/ConnexionPage.dart';
import 'package:MyMoov/view/datasPage.dart';
import 'package:MyMoov/view/homeScreen.dart';
import 'package:MyMoov/view/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'AchatPage.dart';

class HomeMoovScreen extends StatefulWidget {
  const HomeMoovScreen({super.key});
  @override
  State<HomeMoovScreen> createState() => _HomeMoovScreenState();
}
class _HomeMoovScreenState extends State<HomeMoovScreen> with TickerProviderStateMixin{ 
 @override
Widget build(BuildContext context) {
TabController _tabController = TabController(length: 4, vsync: this);
double screenWidth = MediaQuery.of(context).size.width;
double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: Get.width,
              child: Text("Bonjour,05xxxxxxxxxx", style: TextStyle(color: colorBlue,
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
            ),
          ),
  
     //  SizedBox(height: 25,),
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
                  //  indicatorPadding: EdgeInsets.symmetric(vertical: 5, ),
                 indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  controller: _tabController,
                  tabs:[ 
                    Tab(child:  Text ("Conso Générale", textAlign: TextAlign.center,
                     )
                        ),
                     Tab(text:"appels" ,),
                     Tab(text:"Datas" ,),
                     Tab(text:"SMS" ,)     
                  ],),
              ),
           ),
           Divider(color: colorBlue, thickness: 2),
          Container(    
           height: Get.height/1, 
            child: TabBarView(
              controller: _tabController,
              children: [
            myWidgetConsoGeneral(context),
            myWidgetAppels(context),
            myWidgetDatas(context),
            myWidgetsms(context),
              //  myWidgetDatas(context),
              //   myWidgetDatas(context),
              //    myWidgetDatas(context),
              //  Text("Bonsoir"),
              //   Text("Bonne nuit"),
              //    Text("a demain")
              ],),
          ),
          
        ],
      ),
      ),
      );
    
   
  }

Widget myWidgetConsoGeneral(BuildContext context) {
 
// TabController _tabController = TabController(length: 2, vsync: this);
  return MediaQuery.removePadding(
    context: context,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
            children: [
             Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: BorderDirectional(bottom: BorderSide(width: 4, color: colorBlue, )),
                     boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 46, 46, 46).withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 5), 
                        ),
                          ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Icon(Icons.assignment_rounded, size: 100, color: colorOrange,),
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total transfert", style: TextStyle(color: colorOrange, fontWeight: FontWeight.bold, fontSize: 26),),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text("10000 Fcfa",textAlign: TextAlign.center, style: TextStyle(color: colorBlue, fontWeight: FontWeight.bold, ),)),
                          Text.rich(TextSpan(text: "Dépensé", style: TextStyle(color: colorOrange , fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                    TextSpan(
                      text: ': 7500Fcfa', // Texte en italique
                      style: TextStyle( color: colorBlue),
                    ),
                  ],)),
                   Text.rich(TextSpan(text: "Reste", style: TextStyle(color: colorOrange , fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                    TextSpan(
                      text: ': 2500Fcfa', // Texte en italique
                      style: TextStyle( color: colorBlue),
                    ),
                  ],)),
                        ],
                      )
                    ],
                  ),
                ),
            SizedBox(height: 30,),
            Container(
              height: 300,
              child:
               ListView(
              // scrollDirection: Axis.vertical,
               children: [
                      InkWell(
                      child: Container(
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Forfait Appel", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                              Container(
                                child: IconButton.filled(onPressed: (){}, icon: Icon(Icons.more_horiz , color: colorBlue,),
                                style: ElevatedButton.styleFrom(                            backgroundColor: Colors.white,
                                  
                                  shape:StarBorder.polygon(),
                                ),
                                ),
                              ),
                            ],
                          ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text.rich(TextSpan(text: "Reste", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                             children: <TextSpan>[
                                        TextSpan(
                        text: ': 28Min', // Texte en italique
                        style: TextStyle( color: Colors.white),
                                        ),
                                      ],)),
                            Text.rich(TextSpan(text: "Sur", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                             children: <TextSpan>[
                                        TextSpan(
                        text: ': 100Min', // Texte en italique
                        style: TextStyle( color: Colors.white),
                                        ),
                                      ],))
                            ],
                          ),
                          SizedBox(height: 15,),
                            Container(
                 width: Get.width,
                 height: 2,
                  decoration: BoxDecoration(
                     gradient: LinearGradient(
                     colors: [colorOrange,  Colors.white], 
                    begin: Alignment.topLeft, 
                    end: Alignment.topCenter, 
                  ), 
                    borderRadius: BorderRadius.circular(10)
                 ),
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
                    ),
                       SizedBox(height: 20,),
                    InkWell(
                      child: Container(
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Forfait Data", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                              Container(
                                child: IconButton.filled(onPressed: (){}, icon: Icon(Icons.more_horiz , color: colorBlue,),
                                style: ElevatedButton.styleFrom(                            backgroundColor: Colors.white,
                                  
                                  shape:StarBorder.polygon(),
                                ),
                                ),
                              ),
                            ],
                          ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text.rich(TextSpan(text: "Reste", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                             children: <TextSpan>[
                                        TextSpan(
                        text: ': 28Go', // Texte en italique
                        style: TextStyle( color: Colors.white),
                                        ),
                                      ],)),
                            Text.rich(TextSpan(text: "Sur", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                             children: <TextSpan>[
                                        TextSpan(
                        text: ': 100Go', // Texte en italique
                        style: TextStyle( color: Colors.white),
                                        ),
                                      ],))
                            ],
                          ),
                          SizedBox(height: 15,),
                            Container(
                 width: Get.width,
                 height: 2,
                  decoration: BoxDecoration(
                     gradient: LinearGradient(
                     colors: [colorOrange,  Colors.white], 
                    begin: Alignment.topLeft, 
                    end: Alignment.topCenter, 
                  ), 
                    borderRadius: BorderRadius.circular(10)
                 ),
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
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      child: Container(
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Forfait SMS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                              Container(
                                child: IconButton.filled(onPressed: (){}, icon: Icon(Icons.more_horiz , color: colorBlue,),
                                style: ElevatedButton.styleFrom(                            backgroundColor: Colors.white,
                                  
                                  shape:StarBorder.polygon(),
                                ),
                                ),
                              ),
                            ],
                          ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Text.rich(TextSpan(text: "Reste", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                             children: <TextSpan>[
                             TextSpan(
                        text: ': 28 SMS', // Texte en italique
                        style: TextStyle( color: Colors.white),
                                        ),
                                      ],)),
                            Text.rich(TextSpan(text: "Sur", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                             children: <TextSpan>[
                                        TextSpan(
                        text: ': 100 SMS', // Texte en italique
                        style: TextStyle( color: Colors.white),
                                        ),
                                      ],))
                            ],
                          ),
                          SizedBox(height: 15,),
                            Container(
                 width: Get.width,
                 height: 2,
                  decoration: BoxDecoration(
                     gradient: LinearGradient(
                     colors: [colorOrange,  Colors.white], 
                    begin: Alignment.topLeft, 
                    end: Alignment.topCenter, 
                  ), 
                    borderRadius: BorderRadius.circular(10)
                 ),
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
                    ),
                       SizedBox(height: 20,),
                    InkWell(
                      child: Container(
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Forfait Appel+Data+SMS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                              Container(
                                child: IconButton.filled(onPressed: (){}, icon: Icon(Icons.more_horiz , color: colorBlue,),
                                style: ElevatedButton.styleFrom(                            backgroundColor: Colors.white,
                                  
                                  shape:StarBorder.polygon(),
                                ),
                                ),
                              ),
                            ],
                          ),
                          
                          
                            Text.rich(TextSpan(text: "Reste", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                             children: <TextSpan>[
                                        TextSpan(
                        text: ': 28Min+20Mo+20SMS', // Texte en italique
                        style: TextStyle( color: Colors.white),
                                        ),
                                      ],)
                                      ),
                        
                              Text.rich(TextSpan(text: "Sur", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                             children: <TextSpan>[
                                        TextSpan(
                        text: ':100Min+2Go+75SMS', // Texte en italique
                        style: TextStyle( color: Colors.white),
                                        ),
                                      ],)),
                          SizedBox(height: 15,),
                            Container(
                 width: Get.width,
                 height: 2,
                  decoration: BoxDecoration(
                     gradient: LinearGradient(
                     colors: [colorOrange,  Colors.white], 
                    begin: Alignment.topLeft, 
                    end: Alignment.topCenter, 
                  ), 
                    borderRadius: BorderRadius.circular(10)
                 ),
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
                    ),
                      ],
                     ),
                       ),
                       ],
                      ),
    ),
  );
            }


Widget myWidgetAppels(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
double screenHeight = MediaQuery.of(context).size.height;
// TabController _tabController = TabController(length: 2, vsync: this);
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
          children: [
           Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: BorderDirectional(bottom: BorderSide(width: 4, color: colorBlue, )),
                   boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 46, 46, 46).withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 5), 
                      ),
                        ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.assignment_rounded, size: 100, color: colorOrange,),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Total Dépense", style: TextStyle(color: colorOrange, fontWeight: FontWeight.bold, fontSize: 26),),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Text("3000 Fcfa",textAlign: TextAlign.center, style: TextStyle(color: colorBlue, fontWeight: FontWeight.bold, ),)),
                     
                      ],
                    )
                  ],
                ),
              ),
          SizedBox(height: 30,),
          Container(
            height: 300,
            child:
             ListView.builder( 
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                 children: [
                  SizedBox(height: 20,),
                    InkWell(
                    child: Container(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Achat", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            Container(
                              child: IconButton.filled(onPressed: (){Get.to(AchatPage(), transition: Transition.rightToLeft);}, icon: Icon(Icons.more_horiz , color: colorBlue,),
                              style: ElevatedButton.styleFrom(                            backgroundColor: Colors.white,
                                
                                shape:StarBorder.polygon(),
                              ),
                              ),
                            ),
                          ],
                        ),
                         
                              Text.rich(TextSpan(text: "Forfait", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': Appels', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                          Text.rich(TextSpan(text: "Coût", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 500F', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                                    
                              Text.rich(TextSpan(text: "Date", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 12/12/2024 a 15h', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                          Text.rich(TextSpan(text: "Numéro de téléphone", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 0101010101', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                         
                       
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
                  ),
                    
                    
                         ],
                           );
                            },
                ),
                 ),
                  
                    ],
                     ),
                   );
              }
           
Widget myWidgetsms(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
double screenHeight = MediaQuery.of(context).size.height;
// TabController _tabController = TabController(length: 2, vsync: this);
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
          children: [
           Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: BorderDirectional(bottom: BorderSide(width: 4, color: colorBlue, )),
                   boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 46, 46, 46).withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 5), 
                      ),
                        ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.assignment_rounded, size: 100, color: colorOrange,),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Total Dépense", style: TextStyle(color: colorOrange, fontWeight: FontWeight.bold, fontSize: 26),),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Text("3000 Fcfa",textAlign: TextAlign.center, style: TextStyle(color: colorBlue, fontWeight: FontWeight.bold, ),)),
                     
                      ],
                    )
                  ],
                ),
              ),
          SizedBox(height: 30,),
          Container(
            height: 300,
            child:
             ListView.builder( 
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                 children: [
                  SizedBox(height: 20,),
                    InkWell(
                    child: Container(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Achat", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            Container(
                              child: IconButton.filled(onPressed: (){Get.to(AchatPage(),transition: Transition.leftToRight);}, icon: Icon(Icons.more_horiz , color: colorBlue,),
                              style: ElevatedButton.styleFrom(                            backgroundColor: Colors.white,
                                
                                shape:StarBorder.polygon(),
                              ),
                              ),
                            ),
                          ],
                        ),
                         
                              Text.rich(TextSpan(text: "Forfait", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': SMS', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                          Text.rich(TextSpan(text: "Coût", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 500F', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                                    
                              Text.rich(TextSpan(text: "Date", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 12/12/2024 a 15h', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                          Text.rich(TextSpan(text: "Numéro de téléphone", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 0101010101', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                         
                       
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
                  ),
                    
                    
                         ],
                           );
                            },
                ),
                 ),
                  
                    ],
                     ),
                   );
              }
           

 Widget myWidgetDatas(BuildContext context) {
double screenWidth = MediaQuery.of(context).size.width;
double screenHeight = MediaQuery.of(context).size.height;
// TabController _tabController = TabController(length: 2, vsync: this);
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
          children: [
           Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: BorderDirectional(bottom: BorderSide(width: 4, color: colorBlue, )),
                   boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 46, 46, 46).withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 5), 
                      ),
                        ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.assignment_rounded, size: 100, color: colorOrange,),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Total Dépense", style: TextStyle(color: colorOrange, fontWeight: FontWeight.bold, fontSize: 26),),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Text("3000 Fcfa",textAlign: TextAlign.center, style: TextStyle(color: colorBlue, fontWeight: FontWeight.bold, ),)),
                     
                      ],
                    )
                  ],
                ),
              ),
          SizedBox(height: 30,),
          Container(
            height: 300,
            child:
             ListView.builder( 
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                 children: [
                  SizedBox(height: 20,),
                    InkWell(
                    child: Container(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Achat", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            Container(
                              child: IconButton.filled(onPressed: (){Get.to(AchatPage(),transition: Transition.rightToLeft);}, icon: Icon(Icons.more_horiz , color: colorBlue,),
                              style: ElevatedButton.styleFrom(              
                               backgroundColor: Colors.white,
                                
                                shape:StarBorder.polygon(),
                              ),
                              ),
                            ),
                          ],
                        ),
                         
                              Text.rich(TextSpan(text: "Forfait", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': Appels', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                          Text.rich(TextSpan(text: "Coût", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 500F', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                                    
                              Text.rich(TextSpan(text: "Date", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 12/12/2024 a 15h', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                          Text.rich(TextSpan(text: "Numéro de téléphone", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                           children: <TextSpan>[
                                      TextSpan(
                      text: ': 0101010101', // Texte en italique
                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300),
                                      ),
                                    ],)),
                         
                       
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
                  ),
                    
                         ],
                           );
                            },
                ),
                 ),
                  
                    ],
                     ),
                   );
              }
           
           
Widget MyComptePrincipale (BuildContext context){
  return SingleChildScrollView(
    child: Column(
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
          SizedBox(height: 15,),
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
    ),
  );
}

Widget MyMoovMoney (BuildContext context){
  return SingleChildScrollView(
    child: Column(
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
    ),
  );
}
}
