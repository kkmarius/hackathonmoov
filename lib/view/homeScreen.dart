import 'package:MyMoov/view/SuggestionPage.dart';
import 'package:MyMoov/view/bienvenue.dart';
import 'package:MyMoov/view/commentairePage.dart';
import 'package:MyMoov/view/widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:MyMoov/view/HomeMoov.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index); // Navigue vers la page correspondante
  }

  @override
  void dispose() {
    _pageController.dispose(); // Nettoie le contrôleur quand l'écran est détruit
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
    drawer: Container(
        width: MediaQuery.of(context).size.width*0.80,
        height: MediaQuery.of(context).size.height*0.89,
        decoration: BoxDecoration(
          color: colorBlue,
          border: Border.all(
            color: colorBlue, 
            width: 3, 
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.account_circle , color: Colors.blue,),
                      ),
                       SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("John Doe uvci", style: TextStyle(color: Colors.white),),
                          Text("05XXXXXXXXXXXXX", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ],
                      ), 
                    ],
                  )
                  ),
                   SizedBox(height: 60,),
                   Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: 50,
                  child: ListTile(
                  // leading: Icon(FontAwesomeIcons.gift, color: Colors.white,),
                   leading: Icon(Icons.contrast_sharp, color: Colors.white,),

                  title: Text('Mes forfaits', style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context); 
                  },
               ),
                decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [const Color.fromARGB(59, 0, 0, 0), const Color.fromARGB(150, 0, 0, 0)], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight, 
              ), 
                // color: Colors.white,
                borderRadius: BorderRadius.circular(4)
                  ),
                    ),
                     SizedBox(height: 5,),
                     Container(
                  width: MediaQuery.of(context).size.width*0.75,
                 height: 50,
                  child: ListTile(
                  leading: Icon(FontAwesomeIcons.history , color: Colors.white,),
                  title: Text('Historique des transations', style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context); 
                  },
               ),
                decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [const Color.fromARGB(59, 0, 0, 0), const Color.fromARGB(150, 0, 0, 0)], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight, 
              ), 
                // color: Colors.white,
                borderRadius: BorderRadius.circular(4)
                  ),
                    ),
                     SizedBox(height: 5,),
                     Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: 50,
                  child: ListTile(
                  leading: Icon(Icons.account_circle_outlined, color: Colors.white,),
                  title: Text('Chat assistant', style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context); 
                  },
               ),
                decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [const Color.fromARGB(59, 0, 0, 0), const Color.fromARGB(150, 0, 0, 0)], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight, 
              ), 
                borderRadius: BorderRadius.circular(4)
                  ),
                    ),
                     SizedBox(height: 5,),
                     SizedBox(height: 5,),
                     Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: 50,
                  child: ListTile(
                  leading: Icon(Icons.power_settings_new_sharp, color: Colors.white,),
                  title: Text('Deconnexion', style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context); 
                  },
               ),
                decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [const Color.fromARGB(59, 0, 0, 0), const Color.fromARGB(150, 0, 0, 0)], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight, 
              ), 
                // color: Colors.white,
                borderRadius: BorderRadius.circular(4)
                  ),
                    ),
                   SizedBox(height: 35,),
                   Container(
                     width: MediaQuery.of(context).size.width*0.80,
                     height: 200,
                     decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10)
                     ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.32,
                              child: Text("Des forfaits mobiles adaptés à vos centree d'interêts",textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blue, fontSize:15),)),
                            TextButton(onPressed: (){}, child: Text("Voir les forfaits", style: TextStyle(color: Colors.white),),
                            style: ElevatedButton.styleFrom(
                           backgroundColor: colorOrange
                            ),
                            )
                          ],
                        ),
                        Container(
                        width: MediaQuery.of(context).size.width*0.35,
                        child: Image.asset("Images/MOOV4.jpg"))
                      ],
                      
                     ),
                   ),
                   SizedBox(height: 20,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton.filled(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebookF, color: Colors.white,),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorOrange
                      ),
                      ),
                       IconButton.filled(onPressed: (){}, icon: Icon(FontAwesomeIcons.twitter, color: Colors.white,),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorOrange
                      ),
                      ),
                       IconButton.filled(onPressed: (){}, icon: Icon(FontAwesomeIcons.instagram, color: Colors.white,),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorOrange
                      ),
                      ),
                       IconButton.filled(onPressed: (){}, icon: Icon(FontAwesomeIcons.linkedinIn, color: Colors.white,),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorOrange
                      ),
                      ),
                       IconButton.filled(onPressed: (){}, icon: Icon(FontAwesomeIcons.youtube, color: Colors.white,),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorOrange
                      ),
                      ),
                    ],
                   ),
              ],
            ),
          ),
        ),
       ),
    
    appBar: AppBar(
       backgroundColor: Colors.white,
      actions: [
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.magnifyingGlass)),
            IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.bell)),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: IconButton.filled(onPressed: (){},
             style: ElevatedButton.styleFrom(
              backgroundColor: colorBlue,
             ),
              icon: Row(
              children: [
                Icon(Icons.account_circle_outlined, color: Colors.white),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
             )),
           )
          ],
        ),
      ],
    ),
      body: PageView(
       physics: NeverScrollableScrollPhysics(), // Désactive la navigation par glissement
        controller: _pageController,
        // onPageChanged: (index) {
        //   setState(() {
        //     _selectedIndex = index; // Change l'index de la page en cas de swipe
        //   });
        // },
        children: [
          HomeMoovScreen(),
            RecherchePage(),
            CommeentairePge(),
           
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.white,
          elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon(FontAwesomeIcons.house, 0),
            label: "", // Retire le label
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(FontAwesomeIcons.gift, 1),
            label: "", // Retire le label
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(FontAwesomeIcons.message, 2),
            label: "", // Retire le label
          ),
        ],
        // currentIndex: _selectedIndex,
        onTap: _onItemTapped, // Gère le changement de page via clic
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false, // Masque les labels
        showUnselectedLabels: false, // Masque les labels non sélectionnés
      ),
    );
  }
  // Fonction qui construit l'icône avec un cercle en arrière-plan si elle est sélectionnée
  Widget _buildIcon(IconData iconData, int index) {
    bool isSelected = _selectedIndex == index;
    return Container(
      width: 70,
      height: 35,
      padding: const EdgeInsets.all(8.0), // Ajoute un espace autour de l'icône
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        // shape: BoxShape.circle,
        color: isSelected ? colorBlue : Colors.transparent, // Cercle autour de l'icône sélectionnée
      ),
      child: Icon(
        iconData,
        color: isSelected ? Colors.white : Colors.black, // Change la couleur selon la sélection
      ),
    );
  }
}
