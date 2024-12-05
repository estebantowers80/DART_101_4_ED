
import 'package:componentes/utils/routes.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      /// Definimos nuestras rutas del archivo routes.dart
      routes: routes,
      /// definimos nuestra pantalla inicial mediante el nombre
      initialRoute: HomeScreen.routeName,   
    );
  }

  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }*/

}