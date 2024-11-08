import 'package:MyMoov/view/CodeOptPage.dart';
import 'package:MyMoov/view/InscriptionPage.dart';
import 'package:MyMoov/view/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart'; // Import du package
import 'package:http/http.dart' as http;
import 'dart:convert'; // Pour manipuler les données JSON

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  // Déclare un contrôleur pour le champ de téléphone
  TextEditingController phoneController = TextEditingController();

  // Fonction pour envoyer une requête de connexion à l'API
  Future<void> loginUser(String phoneNumber) async {
    const String url = 'http://13.49.244.220:3000/auth/register'; 

    try {
      // Envoi de la requête POST à l'API avec le numéro de téléphone
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'phone_number': phoneNumber, // Envoi du numéro de téléphone
        }),
      );

      if (response.statusCode == 200) {
        // Si la réponse est positive, redirige vers la page OTP
        Get.to(CodeOtpPage(phoneNumber: phoneNumber,), transition: Transition.rightToLeft);
      } else {
        // Si l'API retourne une erreur, affiche un message d'erreur
        showErrorDialog('Erreur lors de la connexion. Numéro de téléphone non reconnu.');
      }
    } catch (e) {
      // En cas de problème de connexion ou d'exception
      showErrorDialog('Une erreur s\'est produite. Vérifiez votre connexion.');
    }
  }

  // Fonction pour afficher une boîte de dialogue d'erreur
  void showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Erreur'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Ferme la boîte de dialogue
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 70),
              Container(
                width: 160,
                height:160,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(Logo), fit: BoxFit.contain),
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
              ),
              SizedBox(height:40),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "L’application mobile qui s’adapte à vos besoins",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: Get.width,
                child: Text("Numéro de téléphone"),
              ),
              SizedBox(height: 5),
              // Champ de saisie pour le numéro de téléphone avec le package intl_phone_number_input
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Color.fromARGB(133, 203, 229, 251),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    // Utilisation du widget intl_phone_number_input pour gérer le code pays
                    SizedBox(
                      width: 90,
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber); // Affiche ou utilise le numéro ici
                        },
                        selectorConfig: SelectorConfig(
                          showFlags: false,  // Ne pas afficher les drapeaux
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET, // Choix via un bottom sheet
                        ),
                        initialValue: PhoneNumber(isoCode: 'CI'), // Code pays par défaut (Côte d'Ivoire)
                        inputDecoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '+225',
                        ),
                      ),
                    ),
                    VerticalDivider(color: colorOrange),
                    SizedBox(width: 15),
                    Expanded(
                      child: TextField(
                        controller: phoneController, // Contrôleur pour le champ de numéro
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "0101010101",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Bouton pour envoyer la requête de connexion
              SizedBox(
                width: screenWidth,
                child: TextButton(
                  onPressed: () {
                    String phoneNumber = phoneController.text.trim();
                    if (phoneNumber.isNotEmpty) {
                      loginUser(phoneNumber); // Appel de la fonction pour se connecter
                    } else {
                      showErrorDialog('Veuillez entrer un numéro de téléphone valide.');
                    }
                  },
                  child: Text(
                    "Se connecter",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
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
        ),
      ),
    );
  }
}
