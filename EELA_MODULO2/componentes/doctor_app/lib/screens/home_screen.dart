import 'package:doctor_app/widgets/doctor_card.dart';
import 'package:doctor_app/widgets/medical_card.dart';
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
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu_open_sharp),
              onPressed: () {
                //LLAMAMOS AL DRAWER
                Scaffold.of(context).openDrawer();
                //Scaffold.of(context).openEndDrawer();  //sacar el drawer del lado derecho
                //_scaffoldKey.currentState?.openDrawer();
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
              backgroundColor: Colors.red,
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
          ),
        ],
      ),
      //MENU LATERAL O DRAWER
      drawer: const Drawer(),
      //endDrawer: const Drawer(),   //sacar el drawer del lado derecho

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
              height: 15,
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
                  fontSize: 14.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide.none,
                ), // Borde alrededor del campo de texto
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF252828),
                ),
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

            ///
            ///Gridview
            ///de dos 2 columnas y dos filas
            ///
            GridView(
              //El gridDelegate define como va a ser la estructura en función de los items que va a tener
              // en el delegate se dice como se va a separar
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //eje horizontal
                crossAxisSpacing: 16, //separación
                mainAxisSpacing: 16, //separación de los elementos
              ),
              shrinkWrap:
                  true, //propiedad que hace que el gridview no sea infinito  tiene un alto limitado a los elementos que vamos a tener
              physics:
                  const NeverScrollableScrollPhysics(), // quitamos el escroll del grid solo el padre listview tendra scroll
              children: [
                //El stack me permite tener un objeto encima del otro el primero va de fondo
                MedicalCard(
                  colorBackground: const Color(0xff7166F9),
                  srcIcon: "assets/svg/diagnostic.svg",
                  title: "Diagnostic",
                  colorTextIcon: const Color(0xFFFFFFFF),
                  onTap: () {},
                ),

                MedicalCard(
                  colorBackground: const Color(0xffFF7854),
                  srcIcon: "assets/svg/dental.svg",
                  title: "Dental",
                  colorTextIcon: const Color(0xFFFFFFFF),
                  onTap: () {},
                ),

                MedicalCard(
                  colorBackground: const Color(0xffFEA725),
                  srcIcon: "assets/svg/surgeon.svg",
                  title: "Surgeon",
                  onTap: () {},
                  colorTextIcon: const Color(0xFFFFFFFF),
                ),

                MedicalCard(
                  colorBackground: const Color(0xff68EEBE),
                  srcIcon: "assets/svg/medicines.svg",
                  title: "Medicines",
                  onTap: () {},
                  colorTextIcon: const Color(0xFFFFFFFF),
                  //         Navigator.pushNamed(context, ReservationScreen.routeName);
                ),
              ],
            ),
            //otra forma de hacer un gridview
            /*
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: const [
                Text("1"),
                Text("1"),
                Text("1"),
                Text("1"),
                Text("1"),
                Text("1"),
                Text("1"),
              ],
            ),
            */
            const SizedBox(height: 16),

            ///
            ///Texto2
            ///

            const Text(
              "Top Doctors",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500, //SEMIBOLT O SEMI NEGRITA
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            const DoctorCard(
                image: "assets/images/doctor_card_1.png",
                name: "Esteban Torres",
                speciality: "Cardioloc",
                medicalCenter: "Monte Sinai Hospital",
                rating: 5),
            const SizedBox(height: 16),
            const DoctorCard(
                image: "assets/images/doctor_card_2.png",
                name: "Manolo Maestre",
                speciality: "Pediatria",
                medicalCenter: "Santa Ana Hospital",
                rating: 3),
          ],
        ),
      ),
    );
  }
}
