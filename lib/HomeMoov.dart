import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AnalyseForfait.dart';

class HomeMoovScreen extends StatefulWidget {
  const HomeMoovScreen({super.key});

  @override
  State<HomeMoovScreen> createState() => _HomeMoovScreenState();
}

class _HomeMoovScreenState extends State<HomeMoovScreen> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: 
      EdgeInsets.all(18),
      child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Text("Bonjour, 05xxxxxxxxxx", style: TextStyle(color: Color(0xFF005BA4),
            fontSize: 22
          ),),
          ),
          Container(
             height: 500,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(4),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
               childAspectRatio: 0.5, 
              children: <Widget>[
                Container(
                 
                  decoration: BoxDecoration(
                    color: Colors.teal[100],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: const EdgeInsets.all(4),
                  
                  child: Column(
                    children: [
                      Text("Compte principale")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Sound of screams but the'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: const Text('Who scream'),
                ),
            
              ],
            ),
          )
        ],
      ),
      ),
      ),
    );
  }
}