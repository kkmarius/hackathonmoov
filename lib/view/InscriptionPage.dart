import 'package:MyMoov/view/CodeOptPage.dart';
import 'package:MyMoov/view/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart'; // Import du package
import 'package:http/http.dart' as http;
import 'dart:convert'; // Pour manipuler les données JSON

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}
class _InscriptionPageState extends State<InscriptionPage> {
  TextEditingController phoneController = TextEditingController();

  // Fonction pour envoyer une requête d'inscription à l'API
  Future<void> registerUser(String phoneNumber) async {
    const String url = 'http://13.60.95.205:3000/auth/register'; // URL de l'API d'inscription
    try {
      // Envoi de la requête POST à l'API
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'phone_number': phoneNumber, // Envoi du numéro de téléphone
        }),
      ); 
      if (response.statusCode == 200) {
        // Si la réponse est positive, redirige vers la page de connexion
        Get.toNamed('/connexion'); // Redirection vers la page de connexion (en utilisant les routes nommées)
      } else {
        // Si l'API retourne une erreur, affiche un message d'erreur
        showErrorDialog('Erreur lors de l\'inscription. Veuillez réessayer.');
      }
    } catch (e) {
      // Si une exception est levée, affiche une erreur liée à la connexion
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
              // Logo centré avec une ombre
              Container(
                width: screenWidth * 0.5,
                height: Get.height / 2.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(Logo), fit: BoxFit.cover),
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
              SizedBox(height: 20),
              Container(
                child: Text("Inscription", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              ),
              SizedBox(height: Get.height / 15),
              Container(
                width: Get.width,
                child: Text("Numéro de téléphone :"),
              ),
              // Champ de saisie pour le numéro de téléphone avec code pays
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
                          // Cette ligne est appelée lorsque le numéro change
                          print(number.phoneNumber);
                        },
                        selectorConfig: SelectorConfig(
                          showFlags: false, // Ne pas afficher les drapeaux
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
              SizedBox(height: 10),
              // Bouton d'inscription
              SizedBox(
                width: screenWidth,
                child: TextButton(
                  onPressed: () {
                    String phoneNumber = phoneController.text.trim();
                    if (phoneNumber.isNotEmpty) {
                      registerUser(phoneNumber); // Appel de la fonction pour inscrire l'utilisateur
                    } else {
                      showErrorDialog('Veuillez entrer un numéro de téléphone valide.');
                    }
                  },
                  child: Text("Inscription", style: TextStyle(color: Colors.white, fontSize: 19)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0EC6707),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
                  ),
                ),
              ),
              // Texte pour les utilisateurs déjà inscrits
              Container(
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vous avez déjà un compte ?", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {
                        // Redirection vers la page de connexion
                        Get.toNamed('/connexion'); // Utilisation de la redirection nommée vers la page de connexion
                      },
                      child: Text("Connectez-vous", style: TextStyle(color: Color(0xFF005BA4))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
