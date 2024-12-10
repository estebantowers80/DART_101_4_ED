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
      backgroundColor: const Color(0xffFFFFFF), //FONDO BLANCO DE PANTALLA
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.all(30.0), //widget para agregar marge interno
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, //alineación de los widget hijos
            //mainAxisAlignment: MainAxisAlignment.spaceAround, // para que los objetos se separen en la misma distancia
            children: [
              ///
              /// Texto 1
              ///
              const Text(
                "Don't waste your time.",
                style: TextStyle(
                  color: Color(0xFF606060),
                  fontSize: 16,
                ),
              ),
              //separador
              const SizedBox(height: 24),

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
              //separador
              const SizedBox(height: 24),

              ///
              /// Imagen
              ///
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF62C6FF).withOpacity(0.17),
                        blurRadius: 50,
                        spreadRadius:
                            10, //monto de la caja que a a ser aplicada
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage("assets/images/mask_group.png"),
                        //height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width > 320              //todo donde la pantalla sea mayor a 320 tome el de abajo
                            ? 437
                            : MediaQuery.of(context).size.height * 0.5,        // caso contrario  le dejamos que ocupe la mitad en telefonos pequeños
                        //width: 437.85,
                        //height: 437.85,
                        //fit: BoxFit.scaleDown,
                      ),
                      const Divider(height: 0),
                    ],
                  ),
                ),
              ),
              //separador
              const SizedBox(height: 24),

              ///
              ///Botón
              ///
              Center(
                child: SizedBox(
                  width:
                      double.infinity, //ocupará el 100% del espacio disponible
                  height: 60,
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xFFFEA725)),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {

                      Navigator.pushNamed(context, HomeScreen.routeName);
                      //si tenemos que reemplazar la pantalla de inicio  por eso esta documentada la pantalla anterior
                      /// hacemos ahora un pushReplacementNamed -> push otra  pantalla 
                      /// reemplazamos la pantalla e origen por el destino
                      

                      //esta elimina todas las rutas y deja una determinada 
                      //Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                      ///  se usaría si tuvieramos una pantalla de login ya no quiero que aparezca de nuevo
                      ///  a no ser que cierre la sesion 
                      /// 
                      /// 

                      //Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => route.isCurrent); 
                    },

                    child: const Text(
                      "Let's start",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
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
