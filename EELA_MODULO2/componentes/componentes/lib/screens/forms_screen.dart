import 'package:flutter/material.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});

  //nombre de pantalla
  static const routeName = "/forms-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///creamos un AppBard
      appBar: AppBar(
        title: const Text("Layout"),
        leading: IconButton(
          onPressed: () {
            /// navegacion
            /// pop para ir una pagina atrás
            /// push a una pagina adelante o una determinada
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
