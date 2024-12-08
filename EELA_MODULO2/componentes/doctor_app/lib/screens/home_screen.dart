import 'package:flutter/material.dart';

/// Scaffold
///   AppBar (Solo el AppBar)
///   Body
///     Text
///     InputFiled (Container)
///     GridView (Layout-Column-Row)
///     Text
///     ListView
///       Card

/// Pantalla principal de la aplicacion
///
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  //nombre de pantalla
  static const routeName = "/";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu_open_sharp),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        //imagen foto
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            ///
            ///TEXTO1 DE TRES COLORES
            ///
            RichText(
              text: const TextSpan(
                text: "Find",
                style: TextStyle(
                  fontSize: 34,
                  color: Color(0xFF000000),
                  fontFamily: "Manrope",
                ),
                children: [
                  TextSpan(
                    text: " you doctor",
                    style: TextStyle(
                      fontSize: 34,
                      color: Color(0xFF888888),
                      fontFamily: "Manrope",
                    ),
                  ),
                  TextSpan(
                    text: " !!!",
                    style: TextStyle(
                      fontSize: 34,
                      color: Color(0xFF990000),
                      fontFamily: "Manrope",
                    ),
                  ),
                ],
              ),
            ),

            ///
            ///ESPACIO
            ///
            const SizedBox(
              height: 30,
            ),

            ///
            ///TEXTO PARA BUSCAR
            ///
            const TextField(
              decoration: InputDecoration(
                labelText:
                    'Search doctor, medicines, etc', // Etiqueta que aparece encima del campo
                labelStyle: TextStyle(
                  color: Color(0xFF888888),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide.none,
                ), // Borde alrededor del campo de texto
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color(0xFFDDDADA),
              ),
            ),

            ///
            ///ESPACIO
            ///
            const SizedBox(
              height: 30,
            ),

            
          ],
        ),
      ),
    );
  }
}
