import 'package:MyMoov/view/widget.dart';
import 'package:flutter/material.dart';

class CommeentairePge extends StatefulWidget {
  const CommeentairePge({super.key});

  @override
  State<CommeentairePge> createState() => _CommeentairePgeState();
}

class _CommeentairePgeState extends State<CommeentairePge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 300,
              height: 50,
              child: TextFormField(
              decoration: InputDecoration(
                hintText: "bienvenue sur moovsmart, je t'écoute",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
             color: Colors.deepOrange, // Couleur de la bordure lors de la sélection
            width: 2.0, // Largeur de la bordure lorsqu'elle est active
             ),
                ),
                focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: Colors.deepOrange, // Couleur de la bordure lors de la sélection
        width: 2.0, // Largeur de la bordure lorsqu'elle est active
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        color: Colors.orange, // Couleur de la bordure lorsqu'inactif
      ),
    ),
              ),
              ),
              ),
              TextButton(onPressed: (){}, child: Icon(Icons.send, color: Colors.white,),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorOrange,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
              )
            ],
             )
          ],
        ),
      ),
    );
  }
}