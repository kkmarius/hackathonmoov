import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:MyMoov/HomeMoov.dart';

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
    drawer: Container(
        width: MediaQuery.of(context).size.width*0.80,
        height: MediaQuery.of(context).size.height*0.85,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.blue, 
            width: 3, 
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person, color: Colors.blue,),
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
                SizedBox(height: 50,),
                Container(
                width: MediaQuery.of(context).size.width*0.75,
                height: Get.height/18,
                child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white,),
                title: Text('Mon profile', style: TextStyle(color: Colors.white),),
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
                height: Get.height/18,
                child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white,),
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
                height: Get.height/18,
                child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white,),
                title: Text('Historique de payements', style: TextStyle(color: Colors.white),),
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
                height: Get.height/18,
                child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white,),
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
              // color: Colors.white,
              borderRadius: BorderRadius.circular(4)
                ),
                  ),
                   SizedBox(height: 5,),
                   Container(
                width: MediaQuery.of(context).size.width*0.75,
                height: Get.height/18,
                child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white,),
                title: Text('Profile', style: TextStyle(color: Colors.white),),
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
                height: Get.height/18,
                child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white,),
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
                 SizedBox(height: 50,),
                 Container(
                   width: MediaQuery.of(context).size.width*0.80,
                   height: MediaQuery.of(context).size.height*0.18,
                   decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10)
                   ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.32,
                            child: Text("Des forfaits mobiles adaptés à vos centree d'interêts", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blue),)),
                          TextButton(onPressed: (){}, child: Text("Voir les forfaits", style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                          ),
                          )
                        ],
                      ),
                      Container(
                      width: MediaQuery.of(context).size.width*0.30,
                      child: Image.asset("Images/MOOV4.jpg"))
                    ],
                    
                   ),
                 ),
                 SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton.filled(onPressed: (){}, icon: Icon(Icons.facebook_rounded, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                    ),
                    ),
                     IconButton.filled(onPressed: (){}, icon: Icon(Icons.facebook_rounded, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                    ),
                    ),
                     IconButton.filled(onPressed: (){}, icon: Icon(Icons.facebook_rounded, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                    ),
                    ),
                     IconButton.filled(onPressed: (){}, icon: Icon(Icons.facebook_rounded, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                    ),
                    ),
                     IconButton.filled(onPressed: (){}, icon: Icon(Icons.facebook_rounded, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                    ),
                    ),
                  ],
                 ),
            ],
          ),
        ),
       ),
    
    appBar: AppBar(
      actions: [
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60,
              
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50)
                ),
              
              ),
            )

          ],
        )
      ],
    ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index; // Change l'index de la page en cas de swipe
          });
        },
        children: [
          HomeMoovScreen(), // Page 0
          // ParametrePage(),    // Page 1
          // ArticlePage(),      // Page 2
          // PrixPage(),         // Page 3
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home, 0),
            label: "", // Retire le label
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.settings, 1),
            label: "", // Retire le label
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.article, 2),
            label: "", // Retire le label
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.price_check, 3),
            label: "", // Retire le label
          ),
        ],
        currentIndex: _selectedIndex,
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
        color: isSelected ? Colors.blue.withOpacity(0.3) : Colors.transparent, // Cercle autour de l'icône sélectionnée
      ),
      child: Icon(
        iconData,
        color: isSelected ? Colors.blue : Colors.grey, // Change la couleur selon la sélection
      ),
    );
  }
}
