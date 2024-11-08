import 'package:MyMoov/view/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';
import 'package:MyMoov/view/homeScreen.dart';

class CodeOtpPage extends StatefulWidget {
  final String phoneNumber; // Le numéro de téléphone passé de la page précédente

  const CodeOtpPage({super.key, required this.phoneNumber});

  @override
  State<CodeOtpPage> createState() => _CodeOtpPageState();
}

class _CodeOtpPageState extends State<CodeOtpPage> {
  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();
  bool isLoading = false; // Indicateur pour montrer qu'une requête est en cours
  // Fonction pour vérifier le code OTP
  Future<void> verifyOtp(String phoneNumber) async {
    const String url = 'http://13.49.244.220:3000/auth/verify-otp'; // URL de l'API de vérification
    // Récupérer le code OTP saisi par l'utilisateur
    String otp = otpController1.text + otpController2.text + otpController3.text + otpController4.text;   
    if (otp.length != 4) {
      _showErrorDialog('Veuillez entrer un code OTP valide.');
      return;
    }
    try {
      setState(() {
        isLoading = true;
      });

      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'phone_number': widget.phoneNumber, // Le numéro de téléphone passé de la page précédente
          'verification_code': otp, // Le code OTP saisi
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['is_verified']) {
          // Si la vérification est réussie, redirige vers la page d'accueil
          Get.to(HomeScreen(), transition: Transition.rightToLeft);
        } else {
          // Si le code est incorrect
          _showErrorDialog('Le code OTP est incorrect.');
        }
      } else {
        _showErrorDialog('Erreur de serveur. Veuillez réessayer.');
      }
    } catch (e) {
      _showErrorDialog('Une erreur s\'est produite. Veuillez vérifier votre connexion.');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }
  // Fonction pour renvoyer le code OTP
  Future<void> resendOtp(String phoneNumber) async {
    const String url = 'http://13.49.244.220:3000/auth/resend-otp'; // URL de l'API pour renvoyer le code OTP
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'phone_number': phoneNumber, // Le numéro de téléphone à renvoyer
        }),
      );

      if (response.statusCode == 200) {
        _showSuccessDialog('Un nouveau code OTP a été envoyé.');
      } else {
        _showErrorDialog('Erreur lors de l\'envoi du code OTP. Veuillez réessayer.');
      }
    } catch (e) {
      _showErrorDialog('Une erreur s\'est produite. Veuillez vérifier votre connexion.');
    }
  }

  // Fonction pour afficher un message d'erreur
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Erreur'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Fonction pour afficher un message de succès
  void _showSuccessDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Succès'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Get.width / 2.5,
                height: Get.height / 2.5,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(Logo), fit: BoxFit.cover),
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
              Text("Saisissez le code que vous avez reçu par message"),
              SizedBox(height: Get.height / 20),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildOtpField(otpController1),
                    SizedBox(width: 8),
                    _buildOtpField(otpController2),
                    SizedBox(width: 8),
                    _buildOtpField(otpController3),
                    SizedBox(width: 8),
                    _buildOtpField(otpController4),
                  ],
                ),
              ),
              SizedBox(height: Get.height / 18),
              SizedBox(
                width: screenWidth,
                child: ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : () {
                          verifyOtp(widget.phoneNumber); // Vérification du code OTP
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0EC6707),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fixedSize: const Size(343, 50),
                  ),
                  child: isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text(
                          "Vérification",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                ),
              ),
              SizedBox(
                width: screenWidth,
                child: TextButton(
                  onPressed: isLoading
                      ? null
                      : () {
                          resendOtp(widget.phoneNumber); // Renvoyer le code OTP
                        },
                  child: Text(
                    "Renvoyer le code",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF005BA4),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fonction pour créer chaque champ OTP
  Widget _buildOtpField(TextEditingController controller) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Color.fromARGB(133, 203, 229, 251),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
