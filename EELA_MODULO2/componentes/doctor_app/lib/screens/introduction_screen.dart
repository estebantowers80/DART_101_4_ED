import 'package:doctor_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

// Pantalla 1: introduction_screen.dart
//  Scaffold
//    Body
//      Text
//      Text
//      Image (Container)
//      Button

///pantalla de introducción

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  //nombre
  static const routeName = "/introduction-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.all(15.0), //widget para agregar marge interno
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, //alineación de los widget hijos
            children: [
              ///
              /// Texto 1
              ///
              const Text(
                "Don't waste your time.",
                style: TextStyle(
                  color: Color(0xFF747474),
                  fontSize: 16,
                ),
              ),

              ///
              /// espacio
              ///
              const SizedBox(
                height: 30,
              ),

              ///
              /// texto 2
              ///
              const Text(
                "Make an doctor Appointment",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),

              ///
              /// Imagen
              ///
              const Image(
                image: AssetImage("assets/images/mask_group.png"),
                //height: MediaQuery.of(context).size.height * 0.4,
                width: 437.85,
                height: 437.85,
                fit: BoxFit.scaleDown,
                 
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 0.3,
                  color: Colors.black,
                ),
              ),
              ///
              ///espacio
              ///
              const SizedBox(
                height: 80,
              ),
              ///
              ///Botón
              ///
              Center(
                child: SizedBox(
                  width: 312,
                  child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0xFFF7AF08)),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                      child: const Text("Let's start")),
                ),
              ),
              /// fin boton
            ],
          ),
        ),
      ),
    );
  }
}
