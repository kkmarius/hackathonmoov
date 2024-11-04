// import 'package:MyMoov/view/ConnexionPage.dart';
// import 'package:MyMoov/view/widget.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class LancementPage extends StatefulWidget {
//   const LancementPage({super.key});
//   @override
//   State<LancementPage> createState() => _LancementPageState();
// }
// class _LancementPageState extends State<LancementPage> with TickerProviderStateMixin{

// List <String> MyItems =[
//  "Images/bg-sms.png", 
//  "Images/bg-moov-folie.png",
//  "Images/Bg-izy-heures.png",
// ];
// int MyCurrentIndex = 0;
//   @override
//  Widget build(BuildContext context) {
// double screenWidth = MediaQuery.of(context).size.width;
// double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(padding: EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//                 SizedBox(
//                 height: 350,
//                  width: MediaQuery.of(context).size.width,
//                  child: PageView.builder(
//                   itemCount: MyItems.length,
//                   padEnds: false,
//                   // pageSnapping: false,
//                   physics: BouncingScrollPhysics(),
//                   // reverse: true,
//                   controller: PageController(
//                       initialPage: 0,
//                       viewportFraction: 0.7
//                     ),  
//                     onPageChanged: (value) {
//                       MyCurrentIndex = value;
//                       setState(() {   
//                       });
//                     },
//                   itemBuilder: (context, index) {
//                     return Container(
//                       margin: const EdgeInsets.all(8),
//                       // clipBehavior: Clip.antiAlias,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         image: DecorationImage(image: AssetImage((MyItems[index])),fit: BoxFit.cover)
//                       ),
//                     ); 
//                   }),
//               ),
//                  AnimatedSmoothIndicator
//                  (activeIndex: MyCurrentIndex,
//                   count: MyItems.length,
//                   effect: WormEffect(
//                     dotHeight: 14,
//                     dotWidth: 14,
//                     dotColor: colorBlue,
//                     activeDotColor: colorOrange,
//                     paintStyle: PaintingStyle.fill,
//                   ),
//                   ),
//                  SizedBox(height: Get.height/18,),
//                  Container(
//                 width: Get.width,
//                 child: Text("Bienvenue sur MyMoov",textAlign: TextAlign.center, 
//                 style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30
//                 ),),
//               ),
//          SizedBox(height: 20,),
//         Container(
//           width: Get.width,
//           child: Text("Aider nous a créer des forfaits spécialement pour vous",textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),)
//         ),
//         SizedBox(height: Get.height/18,),
//          SizedBox(
//           width: screenWidth,
//            child: ElevatedButton(
//             onPressed: () {
//               showDialog(
//                    context: context,
//                    builder: (BuildContext context) {
//             return AlertDialog(
//               title: const Icon(Icons.error_outline),
//               content: const Text("Autoriser l'application a accéder aux données nécessaires à l’analyse (Data, Appels, SMS, utilisation des applications).",textAlign: TextAlign.center, style: TextStyle(fontWeight:FontWeight.w500, fontSize: 20),),
//              actions: <Widget>[
//             Center( // Centrer le bouton dans la boîte de dialogue
//               child: TextButton(
//                 onPressed: () {
//                   Get.to(ConnexionPage());
//                 },
//                  style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFF0EC6707),
//                shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(5),
//                ),
//             minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
//                    ),
//                    child: const Text('Accepter', style: TextStyle(color: Colors.white, fontSize: 20),),
//            ),
//             ),
//                    ],
//                    shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//             ),
//               );
            
//                    },
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Color(0xFF0EC6707),
//               shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(5),
//               ),
//               minimumSize: Size(MediaQuery.of(context).size.height * 0.9, 55),
//             ),
//             child: Text(
//               "Démarrons",
//               style: TextStyle(color: Colors.white, fontSize: 18),
//             ),
//                    ),
//          )
//         ],
//           ),
//           )
          
//         ),
//       ),
//     );
//   }
// }