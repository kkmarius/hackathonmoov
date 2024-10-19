// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getapp/InscriptionPage.dart';

// import 'ConnexionPage.dart';


// class CarouselPage extends StatefulWidget {
//   @override
//   _CarouselPageState createState() => _CarouselPageState();
// }

// class _CarouselPageState extends State<CarouselPage> {
//   PageController _pageController = PageController();
//   int _currentPage = 0;
//   Timer? _timer;
//   List<Widget> _pages = [
//     Column(
//       children: [
//         Container(
//           width: Get.width,
//           height: Get.height/1.2,
//           decoration: BoxDecoration(
//             image: DecorationImage(image: AssetImage("images/belle image 21.jpg"), fit: BoxFit.cover)
//           ),
//         ),
//       ],
//     ),
//     Column(
//       children: [
//          Container(
//           width: Get.width,
//           height: Get.height/1.2,
//           decoration: BoxDecoration(
//             image: DecorationImage(image: AssetImage("images/bellle image.jpg"), fit: BoxFit.cover)
//           ),
//         ),
//       ],
//     ),
//     Column(
//       children: [
//          Container(
//           width: Get.width,
//           height: Get.height/1.2,
//           decoration: BoxDecoration(
//             image: DecorationImage(image: AssetImage("images/IMAGE5.jpg"), fit: BoxFit.cover)
//           ),
//         ),
      
//       ],
//     ),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     // Défilement automatique toutes les 3 secondes
//     _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
//       if (_currentPage < _pages.length - 1) {
//         _currentPage++;
//       } else {
//         _currentPage = 0;
//       }

//       _pageController.animateToPage(
//         _currentPage,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeIn,
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title: Text("PageView Carousel")),
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: _pages.length,
//               onPageChanged: (int index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 return _pages[index];
//               },
//             ),
//           ),
//           // Indicateurs de points (dots)
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(_pages.length, (index) {
//               return Container(
//                 margin: EdgeInsets.all(4.0),
//                 width: 10.0,
//                 height: 10.0,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _currentPage == index ? Colors.blue : Colors.grey,
//                 ),
//               );
//             }),
//           ),
//           SizedBox(height: 20), // Espace entre les points et le bouton
//           // Bouton en bas
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 Get.to(InscriptionPage());
//               },
//               child: Text('Continuer', style: TextStyle(color: Colors.white),),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 8, 82, 10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular((5))
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
