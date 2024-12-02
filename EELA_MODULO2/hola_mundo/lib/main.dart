import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomeConEstado(), //HomePage(),
    );
  }
}

///statalesswidgges  es un widget sin estado ->estatico  no cambia
///para mostrar palabras
///es mas optimo y ocupa menos espacio

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar es in widgert de flutter
      appBar: AppBar(
        title: const Text("Mi widget stateless  primer widget"),
      ),
    );
  }
}

/// widget statefull -> cambia  de estado
///
///........................................................
class HomeConEstado extends StatefulWidget {
  const HomeConEstado({super.key});

  @override
  State<HomeConEstado> createState() => _HomeConEstadoState();
}

class _HomeConEstadoState extends State<HomeConEstado> {
  int contador = 0;

  void contadorFuncion() {
    contador++;
    setState(() {
      /// cambia el estado
      /// refresca a todos los hijos
    });
  }

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      //para crear una pantalla  con Scaffold
      appBar: AppBar(
        title: const Text("mi widget stateful"),
      ),
      body: Center(
        child: Text("el valor es: $contador "),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        focusColor: Colors.red,
        backgroundColor: Colors.yellow,
        onPressed: () {
          contadorFuncion();
        },

        /// Agregar un icono
        /// Usar el widget Icon
        /// Icon recibe como parametro un tipo IconData de la clase Icons.
        child: const Icon(Icons.add_box_outlined),
      ),
    );
  }
}

///........................................................l
///
